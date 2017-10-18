<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- Meta tag Keywords -->

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="{{ LAConfigs::getByKey('site_description') }}">
    <meta name="author" content="Dwij IT Solutions">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Farmed web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>

    <meta property="og:title" content="{{ LAConfigs::getByKey('sitename') }}" />
    <meta property="og:type" content="website" />
    <meta property="og:description" content="{{ LAConfigs::getByKey('site_description') }}" />
    
    <meta property="og:url" content="http://laraadmin.com/" />
    <meta property="og:sitename" content="laraAdmin" />
	<meta property="og:image" content="http://demo.adminlte.acacha.org/img/LaraAdmin-600x600.jpg" />
    
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@laraadmin" />
    <meta name="twitter:creator" content="@laraadmin" />
    <link href="//fonts.googleapis.com/css?family=Arima+Madurai:100,200,300,400,500,700,800,900&amp;subset=latin-ext,tamil,vietnamese" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Monda:400,700&amp;subset=latin-ext" rel="stylesheet">
    
    <title>{{ LAConfigs::getByKey('sitename') }}</title>
    
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('/la-assets/css/bootstrap.css') }}" rel="stylesheet">

	<link href="{{ asset('la-assets/css/font-awesome.min.css') }}" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS -->
    <link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
    
    <!-- Custom styles for this template -->
    <link href="{{ asset('/la-assets/css/main.css') }}" rel="stylesheet">

    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>

    <script src="{{ asset('/la-assets/plugins/jQuery/jQuery-2.1.4.min.js') }}"></script>
    <script src="{{ asset('/la-assets/js/smoothscroll.js') }}"></script>

<!-- tambahan estate -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<!-- //Default-JavaScript-File -->

<link rel="stylesheet" href="css/mainStyles.css" /><!-- for banner -->

<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" /><!-- for testimonials -->

<!-- Property for sale section css files-->
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
<link href="css/owl.theme.css" rel="stylesheet">
<!-- //Property for sale section css files -->

<!-- for team section tabs -->
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<!-- // for team section tabs -->

<!-- default css files -->
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- default css files -->
    
<!--web font-->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700&amp;subset=devanagari,latin-ext" rel="stylesheet">
<!--//web font-->
    
<!-- scrolling script -->
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event){     
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
        });
    });
</script> 
<!-- //scrolling script -->

<!-- Property for sale section Script-->
<script>
$(document).ready(function() { 
    $("#owl-demo").owlCarousel({
 
        autoPlay: 3000, //Set AutoPlay to 3 seconds
        autoPlay:true,
        items : 3,
        itemsDesktop : [640,5],
        itemsDesktopSmall : [414,4]
 
    });
    
}); 
</script>

</head>

<body data-spy="scroll" data-offset="0" data-target="#navigation">

<!-- Fixed navbar -->
<div id="navigation" class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><b>{{ LAConfigs::getByKey('sitename') }}</b></a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#home" class="smoothScroll">Home</a></li>
                <li><a href="#about" class="smoothScroll">About</a></li>
                <li><a href="#contact" class="smoothScroll">Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                @if (Auth::guest())
                    <li><a href="{{ url('/login') }}">Login</a></li>
                    <!--<li><a href="{{ url('/register') }}">Register</a></li>-->
                @else
                    <li><a href="{{ url(config('laraadmin.adminRoute')) }}">{{ Auth::user()->name }}</a></li>
                @endif
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>


<section id="home" name="home"></section>
<div id="headerwrap">
    <div class="container">
        <div class="row centered">
            <div>
            <h2>Whatever good things we build <span>end up building us</span></h2>
            <div class="readmore-w3">
                <a class="readmore" href="#" data-toggle="modal" data-target="#myModal1">Read More</a>
            </div>
        </div>
        <div>
            <h3>Architecture starts when you <span>put two bricks together</span></h3>
            <div class="readmore-w3">
                <a class="readmore" href="#" data-toggle="modal" data-target="#myModal1">Read More</a>
            </div>
        </div>
        <div>
            <h3>We shape our buildings <span> thereafter they shape us</span></h3>
            <div class="readmore-w3">
                <a class="readmore" href="#" data-toggle="modal" data-target="#myModal1">Read More</a>
            </div>
        </div>
        <div>
            <h3>My buildings will be my legacy<span>they will speak for me</span></h3>
            <div class="readmore-w3">
                <a class="readmore" href="#" data-toggle="modal" data-target="#myModal1">Read More</a>
            </div>
        </div>
        <div>
            <h3>If a building becomes architecture<span>then it is art</span></h3>
            <div class="readmore-w3">
                <a class="readmore" href="#" data-toggle="modal" data-target="#myModal1">Read More</a>
            </div>
        </div>
        </div>
    </div> 
</div>


<section id="about" name="about"></section>
<!-- INTRO WRAP -->
<div id="intro">
    <div class="container">
        <div class="row centered">
            <h1>An Architecture designed To Excel</h1>
            <br>
            <br>
            <div class="col-lg-4">
                <i class="fa fa-cubes" style="font-size:100px;height:110px;"></i>
                <h3>Modular</h3>
                <p>Making Data Management fast and enjoyable.</p>
            </div>
            <div class="col-lg-4">
                <i class="fa fa-paper-plane" style="font-size:100px;height:110px;"></i>
                <h3>Easy to Install</h3>
                <p>With single installation command.</p>
            </div>
            <div class="col-lg-4">
                <i class="fa fa-cubes" style="font-size:100px;height:110px;"></i>
                <h3>Customizable</h3>
                <p>Easy to Manipulation the flows.</p>
            </div>
        </div>
        <br>
        <hr>
    </div> <!--/ .container -->
</div><!--/ #introwrap -->

<!-- FEATURES WRAP -->
<div id="features">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 centered">
                <img class="centered" src="{{ asset('/la-assets/img/mobile.png') }}" alt="">
            </div>

            <div class="col-lg-7">
				<h3 class="feature-title">What is LaraAdmin ?</h3><br>
				<ol class="features">
					<li><strong>CMS</strong> (Content Management System) &#8211; Manages Modules &amp; their Data</li>
					<li>Backend <strong>Admin Panel</strong> &#8211; Data can be used in front end applications with ease.</li>
					<li>A probable <strong>CRM</strong> System &#8211; Can be evolved into a CRM system like <a target="_blank" href="https://www.sugarcrm.com">SugarCRM</a></li>
				</ol><br>

				<h3 class="feature-title">Why LaraAdmin ?</h3><br>
                <ol class="features">
					<li><strong>Philosophy:</strong> Inspired by SugarCRM &amp; based on Advanced <strong>Data Types</strong> like Image, HTML, File, Dropdown, TagInput which makes developers job easy. See more in <a target="_blank" href="http://laraadmin.com/features">features</a></li>
					<li>Superior <strong>CRUD generation</strong> for Modules which generates Migration, Controller, Model and Views with single artisan command and integrates with Routes as as well.</li>
					<li><strong>Form Maker</strong> helper is provided for generating entire form with single function call with module name as single parameter. It also gives you freedom to customise form for every field by providing method to generate single field with parameters for customisations.</li>
					<li><b>Upload Manager </b>manages project files &amp; images which are integrated with your Module fields.</li>
					<li><strong>Menu Manager</strong> creates menu with Modules &amp; Custom Links likes WordPress</li>
					<li><strong>Online Code Editor</strong> allows developers to customise the generated Module Views &amp; Files.</li>
				</ol>
            </div>
        </div>
    </div><!--/ .container -->
</div><!--/ #features -->

<section id="contact" name="contact"></section>
<div id="footerwrap">
    <div class="container">
        <div class="col-lg-5">
            <h3>Contact Us</h3><br>
            <p>
				Dwij IT Solutions,<br/>
				Web Development Company in Pune,<br/>
                B4, Patang Plaza Phase 5,<br/>
                Opp. PICT College,<br/>
                Katraj, Pune, India - 411046
            </p>
			<div class="contact-link"><i class="fa fa-envelope-o"></i> <a href="mailto:hello@laraadmin.com">hello@laraadmin.com</a></div>
			<div class="contact-link"><i class="fa fa-cube"></i> <a href="http://laraadmin.com">laraadmin.com</a></div>
			<div class="contact-link"><i class="fa fa-building"></i> <a href="http://dwijitsolutions.com">dwijitsolutions.com</a></div>
        </div>

        <div class="col-lg-7">
            <h3>Drop Us A Line</h3>
            <br>
            <form role="form" action="#" method="post" enctype="plain">
                <div class="form-group">
                    <label for="name1">Your Name</label>
                    <input type="name" name="Name" class="form-control" id="name1" placeholder="Your Name">
                </div>
                <div class="form-group">
                    <label for="email1">Email address</label>
                    <input type="email" name="Mail" class="form-control" id="email1" placeholder="Enter email">
                </div>
                <div class="form-group">
                    <label>Your Text</label>
                    <textarea class="form-control" name="Message" rows="3"></textarea>
                </div>
                <br>
                <button type="submit" class="btn btn-large btn-success">SUBMIT</button>
            </form>
        </div>
    </div>
</div>
<div id="c">
    <div class="container">
        <p>
            <strong>Copyright &copy; 2016. Powered by <a href="https://dwijitsolutions.com"><b>Dwij IT Solutions</b></a>
        </p>
    </div>
</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="{{ asset('/la-assets/js/bootstrap.min.js') }}" type="text/javascript"></script>
<script>
    $('.carousel').carousel({
        interval: 3500
    })
</script>
</body>
</html>
