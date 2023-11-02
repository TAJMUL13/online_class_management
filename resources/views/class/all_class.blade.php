@extends('class/master')
@section('title', 'ALL')
@section('main_content')
@include('class.plugins')
<?php 
  $last_update_time =  DB::table('allvideos')->orderBy('created_at', 'desc')->first();
  $total_class =  DB::table('allvideos')->count();
  // dd($last_update);
  // $word_converter = new BanglaNumberToWord();
 $last_update= date("j-F-Y h:i A",strtotime($last_update_time->created_at));

?>
		<div class="row">
			<div class="col-md-12">
				<marquee style="color:red;font-weight:bold;font-size:20px;"> <span style="color:green">Last Update: {{$last_update}} |</span>  লেসন প্ল্যান অনুযায়ী জুনিয়র ওয়ান + প্রথম + দ্বিতীয় + তৃতীয় + চতুর্থ + পঞ্চম + ষষ্ঠ + সপ্তম + অষ্টম + নবম + দশম এর সর্বমোট {{BanglaConverter::en2bn($total_class)}} টি ক্লাশ আপলোড করা হয়েছে। </marquee>
			</div>
		</div>
				
		<div class="row">
			<div class="col-md-2">
			<a href="{{ url('online-class-nursery')}}" style="padding:30px;background-color:#800080;display: block;color: #fff;font-size: 30px;margin: 5px;text-align: center;"> Nursery</a>
			</div>


			<div class="col-md-2">
			<a href="{{ url('online-class-junior-one')}}" style="padding:30px;background-color:#0000FF;display: block;color: #fff;font-size: 30px;margin: 5px;text-align: center;"> J. One</a>
			</div>

			<div class="col-md-2">
			<a href="{{ url('online-class-one')}}" style="padding:30px;background-color:#1c94a0;display: block;color: #fff;font-size: 30px;margin: 5px;text-align: center;"> One</a>
			</div>


			<div class="col-md-2">
			<a href="{{ url('online-class-two')}}" style="padding:30px;background-color:#8a02c1;display: block;color: #fff;font-size: 30px;margin: 5px;text-align: center;"> Two</a>
			</div>


			<div class="col-md-2">
			<a href="{{ url('online-class-three')}}" style="padding:30px;background-color:#c10275;display: block;color: #fff;font-size: 30px;margin: 5px;text-align: center;"> Three</a>
			</div>

			<div class="col-md-2">
			<a href="{{ url('online-class-four')}}" style="padding:30px;background-color:#c1022e;display: block;color: #fff;font-size: 30px;margin: 5px;text-align: center;"> Four</a>
			</div>

			<div class="col-md-2">
			<a href="{{ url('online-class-five')}}" style="padding:30px;background-color:#3298e7;display: block;color: #fff;font-size: 30px;margin: 5px;text-align: center;"> Five</a>
			</div>


			<div class="col-md-2">
			<a href="{{ url('online-class-six')}}" style="padding:30px;background-color:#8b9400;display: block;color: #fff;font-size: 30px;margin: 5px;text-align: center;"> Six</a>
			</div>


			<div class="col-md-2">
			<a href="{{ url('online-class-seven')}}" style="padding:30px;background-color:#d4009c;display: block;color: #fff;font-size: 30px;margin: 5px;text-align: center;"> Seven</a>
			</div>


			<div class="col-md-2">
			<a href="{{ url('online-class-eight')}}" style="padding:30px;background-color:#970000;display: block;color: #fff;font-size: 30px;margin: 5px;text-align: center;"> Eight</a>
			</div>


			<div class="col-md-2">
			<a href="{{ url('online-class-nine')}}" style="padding:30px;background-color:#c12604;display: block;color: #fff;font-size: 30px;margin: 5px;text-align: center;">Nine</a>
			</div>


			<div class="col-md-2">
			<a href="{{ url('online-class-ten')}}" style="padding:30px;background-color:#b4bf00;display: block;color: #fff;font-size: 30px;margin: 5px;text-align: center;">Ten</a>
			</div>
		</div>

   <div class="row">
      <div class="col-md-12 jhamela" style="margin-top: 50px">
          <div class="container">
              <div class="row">
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 f1">
                      <div class="featured_block">
                          <div class="featured_block_icon">
                              <span class="fa fa-phone"></span>
                          </div>
                          <div class="heading_wrap">
                              <h3>০১৭৭০-৬৫৫৮৩১</h3>
                          </div>
                          <div class="heading_wrap_h6">
                              <h6>আমাদেরকে ফোন  দিন</h6>
                          </div>
                      </div>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 f2">
                      <div class="featured_block">
                          <div class="featured_block_icon">
                              <span class="fa fa-envelope"></span>
                          </div>
                          <div class="heading_wrap">
                              <h3>ssc.raj2013@gmail.com</h3>
                          </div>
                          <div class="heading_wrap_h6">
                              <h6>আমাদেরকে ম্যাসেজ পাঠান</h6>
                          </div>
                      </div>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 f3">
                      <div class="featured_block">
                          <div class="featured_block_icon">
                              <span class="fa fa-map-marker"></span>
                          </div>
                          <div class="heading_wrap">
                              <h3>ঠিকানা</h3>
                          </div>
                          <div class="heading_wrap_h6">
                              <h6>১৮৫, দাশপুকুর মোড়, সিটি বাইপাস, রাজশাহী </h6>
                          </div>
                      </div>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 f4">
                      <div class="featured_block">
                          <div class="featured_block_icon">
                              <span class="fa fa-calendar "></span>
                          </div>
                          <div class="heading_wrap">
                              <h3>শুক্রবার ছুটি </h3>
                          </div>
                          <div class="heading_wrap_h6">
                              <h6>শনিবার - বৃহস্পতিবার</h6>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
    </div>
@endsection