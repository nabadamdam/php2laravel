<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Mail;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\RegistrationRequest;
use App\Http\Requests\SubscribeRequest;
use App\Http\Requests\ContactRequest;
use Exception;
use PHPMailer\PHPMailer\PHPMailer;

class UserController extends Controller
{
    protected $model;
    public function __construct(){
        $this->model = new User();
    }
    public function index(LoginRequest $request){
        try{
            $email = $request->input("email");
            $password = $request->input("password");
            $login = $this->model->isLogedIn($email,$password);
            if($login->count() == 1){
                $operation = "Login user";
                $this->model->insertActivity($email,$operation);
                $request->session()->put("user",$login);
                return \redirect("/")->with("message","You are loggined successfuly!");
            }else{
                return \redirect("/")->with("message","Loggin is fail!Try again!");
            }
        }
        catch(\Exception $ex){
            return \redirect("/")->with("message","Error with login user!");
            \Log::error($ex->getMessage());
        } 
    }
    public function logOut(Request $request){
        try{
            if(session()->has('user')){
                $email = session('user')[0]->Email;
            }
            $operation = "Logout user";
            $this->model->insertActivity($email,$operation);
            $request->session()->forget("user");
            $request->session()->flush();
            return \redirect("/")->with("message","You are logout successfuly!");
        }
        catch(\Exception $ex){
            return \redirect("/")->with("message","Error with logout user!");
            \Log::error($ex->getMessage());
        } 
    }
    public function registration(RegistrationRequest $request){
        try{
            $name = $request->input("Name");
            $surename = $request->input("Surname");
            $email = $request->input("Email");
            $username = $request->input("Username");
            $password = $request->input("Password");
            $oneUser = $this->model->getOneUser($email,$username);
            if($oneUser->count() > 0){
                return \redirect("/contact")->with("message","This email or username already exist!");
            }else{
                $operation = "Registration user";
                $this->model->insertActivity($email,$operation);
                $idUserInsert = $this->model->insertUser($name,$surename,$email,$username,$password);
                if($idUserInsert){
                    return \redirect("/")->with("message","You are successfuly register!");
                }
            }
        }
        catch(\Exception $ex){
            return \redirect("/")->with("message","Error with registration user!");
            \Log::error($ex->getMessage());
        } 
    }
    public function subscribe(SubscribeRequest $request){
        try{
            $email = $request->input("email");
            $userSub = $this->model->getSubUser($email);
            if($userSub->count() > 0){
                return \redirect("/")->with("message","This email already exist!");
            }else{
                $operation = "Subscribe user";
                $this->model->insertActivity($email,$operation);
                $idUserInsertSub = $this->model->insertSub($email);
                if($idUserInsertSub){
                    return \redirect("/")->with("message","You are successfuly subscribed!");
                }
            }
        }
        catch(\Exception $ex){
            return \redirect("/")->with("message","Error with subscribe user!");
            \Log::error($ex->getMessage());
        } 
    }
    public function contact(ContactRequest $request){
        try{
            $name = $request->input("name");
            $email = $request->input("email");
            $message = $request->input("message");
            $operation = "Contact user";
            $this->model->insertActivity($email,$operation);
            $idContactUser = $this->model->insertContact($name,$email,$message);

            $mail = new PHPMailer(true);

                try {
                    $mail->SMTPDebug = 0;
                    $mail->isSMTP();
                    $mail->Host = 'smtp.gmail.com';
                    $mail->SMTPAuth = true;
                    $mail->Username = 'nikola.riorovic98@gmail.com';
                    $mail->Password = 'kolonija98';
                    $mail->SMTPSecure = 'tls';
                    $mail->Port = 587;
                    $mail->setFrom('nikola.riorovic98@gmail.com', 'User contact from the site!');
                    $mail->addAddress("nikolariorovic@hotmail.com");
                    $mail->isHTML(true);
                    $mail->Subject = 'Contact user';
                    $mail->Body = $message;
                    $mail->send();
                } catch (\Exception $e) {
                    return \redirect("/contact")->with("messageContact","Error with send email");
                    \Log::error($ex->getMessage());
                }

            if($idContactUser){
                return \redirect("/contact")->with("messageContact","Your message was successfully sent on administrator mail!");
            }
        }
        catch(\Exception $ex){
            return \redirect("/")->with("messageContact","Error with contact user!");
            \Log::error($ex->getMessage());
        } 
     }
    public function usernameCheck($valueUsername){
        try{
            $userWithUsername = $this->model->getUserWithUsername($valueUsername);
            if($userWithUsername->count() > 0 ){
                return ["message" => $userWithUsername];
            }else{
                return ["message" => "Not exist in base!"];
            }
        }
        catch(\Exception $ex){
            return \redirect("/")->with("message","Error with username check!");
            \Log::error($ex->getMessage());
        } 
    }
    public function resetPassword(){
        try{
            $password = $_GET['resetPassword'];
            $id = $_GET['idUser'];
            $email = getEmailUser($id);
            $operation = "Reset password user";
            $this->model->insertActivity($email,$operation);
            $update = $this->model->updatePassword($password,$id);
            if($update){
                return ["message" => "Successfuly update password!"];
            }else{
                return ["message" => "Unsuccessful update password!"];
            }
        }
        catch(\Exception $ex){
            return \redirect("/")->with("message","Error with reset password!");
            \Log::error($ex->getMessage());
        } 
    }
}
