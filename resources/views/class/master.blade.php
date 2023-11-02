<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Online Class | @yield('title')</title>
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container-fluid">
		<section id="topbar">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="top-information top-2">
                                        <div class="icon-span"><i class="fa fa-envelope"></i> </div>
                                        <div class="info-span"><a href="mailto: ssc.raj2013@gmail.com"> ssc.raj2013@gmail.com</a></div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
                                    <div class="top-information top-2">
                                        <div class="icon-span"><i class="fa fa-phone"></i></div>
                                        <div class="info-span">মোবাইলঃ ০১৭৭০-৬৫৫৮৩১</div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-right">
                                    <div class="top-information top-2">
                                        <span class="social-icon">
                                <a href="https://web.facebook.com/sscraj2013/"> <i class="fa fa-facebook"></i>
                                </a>
                                <a href="https://twitter.com/sscraj2013/"> <i class="fa fa-twitter"></i>
                                </a>
                                <a href="https://www.youtube.com/channel/UCaii_Aq9h9vmIyoP-nyIQEw"> <i class="fa fa-google-plus"></i>
                                </a>
                                <a href="https://www.youtube.com/channel/UCaii_Aq9h9vmIyoP-nyIQEw"> <i class="fa fa-youtube"></i>
                                </a>                
                                          
                            </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
	</div>
	<div class="container">
		<div class="row">
			<div class=" col-md-offset-1 col-md-6">
	            <div class="school-section">
	                <img src="http://sscraj.com/wp-content/uploads/2017/01/logo.png" alt="" class="img-responsive">
	            </div>
	        </div>
            <div class=" col-md-offset-1 col-md-3 ">
                <!-- <a href="/"> -->
                    <div class="attention" id="animated_div">
                        <h3 class="online"> Online Class</h3>
                        <h3 class="class">Class: @yield('title')</h3>
                    </div>
                <!-- </a> -->
            </div>
		</div>
        <hr>
		@yield('main_content')

	</div>
    <div class="container-fluid">
        <section id="footer-section-2" class="footer-section-2 footer-section">
            <div class="container">
                <div class="row three-footer">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="color:#fff">Copyright © 2020 শিক্ষা স্কুল এন্ড কলেজ . All rights reserved </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>