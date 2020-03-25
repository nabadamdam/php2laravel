@extends("layouts/template")
@section('mainContent')
<div id="gtco-subscribe" class="col-lg-12 colorBackGround">
	<div class="col-lg-8 gtco-container">
		<div class="row animate-box">
			<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
				<h2 id="fontSize" class=" fontSize cursive-font">Online Reservation </br>No Need To Wait For Table</h2>
			</div>
		</div>
		<div class="row animate-box">
			<div class="col-md-8 col-md-offset-2" id="colorText">

                    <div class="row ">
                        <div class="col-md-12">
                            <label for="date-start">Date</label>
                            <input type="date" id="dateValueReservation" class=" colorWord"/>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="date-start">Hour</label>
                            <input type="number" id="hour" name="quantity" class=" colorWord"  min="7" max="21"/></br>
                            <label for="date-start">Minute</label>
                            <input type="number" id="minute" name="quantity" class=" colorWord" min="0" max="59"/>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <label for="date-start">Number of People</label>
                            <input type="number" id="people" class=" colorWord" name="tentacles" min="1" max="10"/>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <input type="button" name="buttonRes" id="buttonRes" class="btn btn-primary btn-block" value="Reservation"/>
                        </div>
                    </div>
                
            </div>
		</div>
    </div>
    <span id="messageErrorReservation"></span>  
    <div class="col-lg-4 gtco-container">
		<div class="row animate-box">
			<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
				<h2 id="fontSize1" class="cursive-font">Open Timing</h2>
			</div>
		</div>
		<div class="row animate-box">
			<div class="col-md-8 col-md-offset-2" id="colorText">
                Monday – Friday</br>
                7 – 22 </br>
                (Breakfast , Lunch, Dinner)</br></br>

                Saturday – Sunday</br>
                7 – 22 </br>
                (Breakfast , Lunch, Dinner)
            </div>
		</div>
	</div>
</div>

@endsection
@section('headerContent')
<div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
	<h1 class="cursive-font">Reservation!</h1>	
</div>
@endsection
@section('velicina')
sm
@endsection
@section('headerPicture')
url({{asset('images/img_bg_8.jpg')}}
@endsection