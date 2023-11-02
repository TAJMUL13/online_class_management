@extends('class/master')
@section('title', 'Four')
@section('main_content')
@include('class.plugins')
<div class="row" style="position: relative;padding:10px">
<?php 
  $total_class_in_class =  DB::table('allvideos')->where('class_id','14')->count();
  $word_converter = new BanglaNumberToWord();
$last_update_time =  DB::table('allvideos')->where('class_id','14')->orderBy('created_at', 'desc')->first();
	$last_update= date("j-F-Y h:i A",strtotime($last_update_time->created_at));

?>
	<marquee style="color:red;font-weight:bold;font-size:20px;"><span style="color:green">Last Update: {{$last_update}} |</span> লেসন প্ল্যান অনুযায়ী চতুর্থ শ্রেণির মোট {{BanglaConverter::en2bn($total_class_in_class) }} ( {{$word_converter->numToWord($total_class_in_class)}} )  টি ক্লাস আপলোড করা হয়েছে। </marquee>
<div class="panel-group" id="accordion">
	
	<!-- 	lession plan -->
  <div class="panel panel-primary">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#lession1" style="display:block">
        Lesson Plan <span class="" style="height: 20px;width:20px;display: inline-block;text-align: center;color: #fff;font-weight: bold;position: absolute;right: 21px;"><i class="fa fa-caret-down"></i></span></a> 
      </h4>
    </div>
    <div id="lession1" class="panel-collapse collapse">
      <ul class="list-group">
       

        
        <li class="list-group-item"><a href="http://sscraj.com/wp-content/uploads/2020/05/Four.pdf"><b>Section:</b> Red</a> <a href="http://sscraj.com/wp-content/uploads/2020/05/Four.pdf" style="Background-color:green;color:#fff;padding: 5px;border-radius: 2px;font-weight: bold;position: absolute;right: 10px;top: 5px;" >Download Now</a></li>
        
        <li class="list-group-item"><a href="http://sscraj.com/wp-content/uploads/2020/05/Four-1.pdf"><b>Date:</b> 31 May 2020</a><img src="https://traveltech.co.in/images/blink.gif" style="height: 20px;" alt="new class"> <a href="http://sscraj.com/wp-content/uploads/2020/05/Four-1.pdf" style="Background-color:green;color:#fff;padding: 5px;border-radius: 2px;font-weight: bold;position: absolute;right: 10px;top: 5px;" >Download Now</a></li>
      </ul>
    </div>
  </div>

  <!-- Each subject query -->

@foreach($all_subject as $single_subject)


<?php 

$subject_id= $single_subject->id ;
$subjects = DB::table('allvideos')->where(array('class_id'=>'14','subject_id'=> $subject_id))->get();

$total_class=  DB::table('allvideos')->where(array('class_id'=>'14','subject_id'=> $subject_id))->count();
// print_r($total_class);

?>
<!-- 	single subject -->
  <div class="panel panel-success">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse{{$single_subject->id}}" style="display:block">
        {{ $single_subject->subject }}  <span class="subject-heading">{{$total_class}}</span></a> 
      </h4>
    </div>
    <div id="collapse{{$single_subject->id}}" class="panel-collapse collapse">
      <ul class="list-group">
<?php if($total_class<1){ ?>
  <p style="text-align:center;">-----Empty-----</p>

<?php }else{ ?>
  @foreach($subjects as $subject)
  <input type="hidden" name="{{$date=$subject->date}}">
          <li class="list-group-item"><a href="{{$subject->youtube_link}}"><b>Date:</b> {{$subject->date}}</a>
            <?php  if($date==date('j-F-Y')){?>
            <img src="https://traveltech.co.in/images/blink.gif" style="height: 20px;" alt="new class">
          <?php } ?>

             <a href="{{$subject->youtube_link}}" class="class-heading">Play Now</a></li>
  @endforeach
<?php } ?>
      </ul>
      <div class="panel-footer">If you have any problem in class lecture comment on video comment section.</div>
    </div>
  </div>
@endforeach
	 <div class="row">
   <div class="col-md-12">
     <div class="all-class">
       <a href="{{url('/')}}">Back to Home</a>
     </div>
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
</div>
</div>

   
@endsection