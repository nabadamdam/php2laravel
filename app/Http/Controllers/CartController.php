<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\CartItem;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class CartController extends Controller
{
    public function add(Request $request)
    {
        $id = $request->id;
        $cart = session()->get('cart');
        if (!$cart) {
            $cart = array();
        } else {
            foreach ($cart as $value) {
                if ($value['id'] == $id) {
                    $response['warning'] = true;
                    $response['msg'] = __('Proizvod je već dodat u korpu');
                    return $response;
                }
            }
        }

        $cart[] = [
            "id" => $product->id,
            "name" => $product->title,
            "price" => $product->price,
            "currency" => 'RSD',
            "featured_image" => $colorDB->firstImage->picture,
            "size" => $size,
            "color" => $color,
            "quantity" => $quantity
        ];

        session()->put('cart', $cart);
        $response['success'] = true;
        $response['msg'] = __('Uspešno ste dodali proizvod u korpu');
        return response()->json($response);
    }

    public function remove($id)
    {
        $cart = session()->get('cart');
        foreach ($cart as $key => $item) {
            if ($item['id'] == $id) {
                unset($cart[$key]);
                session()->put('cart', $cart);
            }
        }

        toastr()->info('Uspešno ste obrisali proizvod iz korpe');
        return redirect()->route('cart');
    }


    public function cart()
    {
        $menCat = Category::find(3);
        $womenCat = Category::find(2);
        $kidCat = Category::find(4);
        $accessCat = Category::find(5);
        $funShCat = Category::find(30);

        $cart = session()->get('cart');

        if (empty($cart)) {
            toastr()->error('Korpa je prazna');
            return redirect()->route('homepage');
        }

        $final_price = 0;
        foreach ($cart as $item) {
            $final_price += $item['price'] * $item['quantity'];
        }

        return view('web.cart', compact('cart', 'final_price', 'menCat', 'womenCat', 'kidCat', 'accessCat', 'funShCat'));
    }

    public function checkout()
    {
        $menCat = Category::find(3);
        $womenCat = Category::find(2);
        $kidCat = Category::find(4);
        $accessCat = Category::find(5);
        $funShCat = Category::find(30);

        if (Auth::user()) {
            $user = User::findorfail(Auth::user()->id);
        } else {
            $user = null;
        }

        $cart = session()->get('cart');

        if (empty($cart)) {
            toastr()->error('Korpa je prazna');
            return redirect()->route('homepage');
        }

        $final_price = 0;
        foreach ($cart as $item) {
            $final_price += $item['price'] * $item['quantity'];
        }

        return view('web.checkout', compact('cart', 'final_price', 'menCat', 'womenCat', 'kidCat', 'accessCat', 'funShCat', 'user'));
    }


    public function payment(Request $request)
    {
        $cart = session()->get('cart');
        $user = Auth::user();
        if (!$user) {
            toastr()->error('Morate biti ulogovani kako bi ste izvršili porudžbinu');
            return redirect()->route('login');
        }
        if (!$cart) {
            toastr()->error('Korpa je prazna');
            return redirect()->route('homepage');
        }

        $this->validate($request, array(
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required',
            'phone_number' => 'required',
            'address' => 'required',
            'country' => 'required',
            'postal_code' => 'required',
            'city' => 'required'
        ));

        $db_subscriber = User::find($user->id);
        $db_subscriber->phone_number = $request->phone_number;
        $db_subscriber->city = $request->city;
        $db_subscriber->address = $request->address;
        $db_subscriber->postal_code = $request->postal_code;
        $db_subscriber->country = $request->country;
        $db_subscriber->save();

        $now_time = Carbon::now();

        $cart_db = new Cart();
        $cart_db->first_name = $request->first_name;
        $cart_db->last_name = $request->last_name;
        $cart_db->email = $request->email;
        $cart_db->country = $request->country;
        $cart_db->address = $request->address;
        $cart_db->city = $request->city;
        $cart_db->postal_code = $request->postal_code;
        $cart_db->phone_number = $request->phone_number;
        $cart_db->user_id = $user->id;
        $cart_db->status = 'Započeto';
        if ($request->payment_method == 'card_payment') {
            $cart_db->payment_method = 'card_payment';
        } elseif ($request->payment_method == 'payment_on_delivery') {
            $cart_db->payment_method = 'payment_on_delivery';
        } elseif ($request->payment_method == 'payment_slip') {
            $cart_db->payment_method = 'payment_slip';
        }

        $price = 0;
        foreach ($cart as $val) {
            $price += $val['price'] * $val['quantity'];
        }
        $cart_db->price = $price;
        $cart_db->started_at = $now_time;
        if ($cart_db->save()) {
            foreach ($cart as $val) {
                $cart_items = new CartItem();
                $cart_items->cart_id = $cart_db->id;
                $cart_items->item_id = $val['id'];
                $cart_items->price = $val['price'] * $val['quantity'];
                $cart_items->color_id = $val['color'];
                $cart_items->size = $val['size'];
                $cart_items->quantity = $val['quantity'];
                $cart_items->save();
            }

            session()->forget('cart');

            if ($request->payment_method == 'payment_on_delivery') {
                echo self::successPaymentOnDelivery($cart_db, $cart);
            } elseif ($request->payment_method == 'card_payment') {
                return abort(404);
            } elseif ($request->payment_method == 'payment_slip') {
                echo self::successPaymentSlip($cart_db, $cart);
            }
        }
    }

    public function successPaymentOnDelivery($cart_db, $cart)
    {
        $menCat = Category::find(3);
        $womenCat = Category::find(2);
        $kidCat = Category::find(4);
        $accessCat = Category::find(5);
        $funShCat = Category::find(30);

        $cart_db->status = 'Uspešno';
        $cart_db->finished_at = Carbon::now();
        $cart_db->save();
        /*Mail::to($cart_db->email)
            ->send(new Invoice($cart_db));*/

        $cart = $cart_db;
        return view('web.cart_success', compact('cart', 'menCat', 'womenCat', 'kidCat', 'accessCat', 'funShCat'));
    }

    public function successPaymentSlip($cart_db, $cart)
    {
        $menCat = Category::find(3);
        $womenCat = Category::find(2);
        $kidCat = Category::find(4);
        $accessCat = Category::find(5);
        $funShCat = Category::find(30);

        $cart_db->status = 'Na čekanju';
        $cart_db->finished_at = Carbon::now();
        $cart_db->save();
        $cart = $cart_db;
        return view('web.payment_slip', compact('cart', 'menCat', 'womenCat', 'kidCat', 'accessCat', 'funShCat'));
    }

}
