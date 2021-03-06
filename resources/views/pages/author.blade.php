@extends('layouts/template')
@section('mainContent')
<div class="row" id="autor">
    <div class="col-md-12" id="autor1">
        <div class="col-md-6 animate-box ">
            <div id="slika">
                <img src="{{asset('images/autor.jpg')}}" alt="Autor"/>
            </div>
        </div>
        <div class="col-md-6  animate-box">
            <div id="tekstProg">
                <div id="tekst1">
                    <p>My name is Nikola Riorovic. I was born in Smed. Palanka where i have done most of my education. 
                        I graduated from Gosa which is mechanical - engineering school. My programming roots started there and from there i
                         directed myself to continue my education in that direction. I am also the owner of this site. My interest in programming is 
                         growing day by day and i am trying to be better at it 
                         so that one day i could be a programmer and use my skills in big projects in a few years. Nikola Riorovic 7/17</p>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('headerContent')
<div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
    <h1 class="cursive-font">Author</h1>	
</div>
@endsection
@section('velicina')
sm
@endsection
@section('headerPicture')
url({{asset('images/img_bg_4.jpg')}}
@endsection
