<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Exception;
use PHPMailer\PHPMailer\PHPMailer;
use Illuminate\Support\Facades\Mail;

class ReservationController extends FrontController
{
    protected $model;
    public function __construct(){
        parent::__construct();
        $this->model = new User();
    }
    public function index(){
        try{
            return view("pages/reservation",$this->data);
        }
        catch(\Exception $ex){
            return \redirect("/")->with("message","Error with load page reservation!");
            \Log::error($ex->getMessage());
        } 
       
    }
    public function formData(){
        $time = $_GET['timeNesto'];
        $people = $_GET['people'];
        $date = $_GET['date'];
        if(session()->has('user')){
            $idUser = session('user')[0]->idKorisnika;
            $email = session('user')[0]->Email;
        } 
        $reservation = $this->model->getReservation($time,$date);
        if($reservation->count() > 0){
           
        }else{
            $idRes = $this->model->insertReservation($date,$time,$people,$idUser);
            $mail = new PHPMailer(true);
            
            $mail->SMTPDebug = 0;
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'nikola.riorovic98@gmail.com';
            $mail->Password = 'kolonija98';
            $mail->SMTPSecure = 'tls';
            $mail->Port = 587;
            $mail->setFrom('nikola.riorovic98@gmail.com', 'User reservation from the site!');
            $mail->addAddress("nikolariorovic@hotmail.com");
            $mail->isHTML(true);
            $mail->Subject = 'Reservation user';
            $mail->Body = "Reservation"." ".$date." ".$time." ".$email;
            $mail->send();
        
            if($idRes){
                return ["data" => $idRes];
            }else{
                return ["message" => "Ne radi"];
            }
        }
    }
  
}
