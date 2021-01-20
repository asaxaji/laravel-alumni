<!DOCTYPE html>
<html class="no-js" lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>{{setting('site.title')}}</title>

    <meta name="description" content="{{setting('site.description')}}">
    <meta name="keywords" content="{{setting('site.keyword')}}">
    <meta name="author" content="rouninerror">

    <!-- twitter card starts from here, if you don't need remove this section -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="@yourtwitterusername">
    <meta name="twitter:creator" content="@yourtwitterusername">
    <meta name="twitter:url" content="{{url()->full()}}">
    <meta name="twitter:title" content="Your home page title, max 140 char"> <!-- maximum 140 char -->
    <meta name="twitter:description" content="Your site description, maximum 140 char "> <!-- maximum 140 char -->
    <meta name="twitter:image" content="{{asset('assets/img/twittercardimg/twittercard-144-144.png')}}">
    <!-- when you post this page url in twitter , this image will be shown -->
    <!-- twitter card ends here -->

    <!-- facebook open graph starts from here, if you don't need then delete open graph related  -->
    <meta property="og:title" content="Your home page title">
    <meta property="og:url" content="{{url()->full()}}">
    <meta property="og:locale" content="en_US">
    <meta property="og:site_name" content="Your site name here">
    <!--meta property="fb:admins" content="" /-->
    <!-- use this if you have  -->
    <meta property="og:type" content="website"> <!-- 'article' for single page  -->
    <meta property="og:image" content="{{asset('storage/'.setting('site.icon'))}}">
    <!-- when you post this page url in facebook , this image will be shown -->
    <!-- facebook open graph ends here -->

    <!-- desktop bookmark -->
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="{{asset('storage/'.setting('site.icon'))}}">
    <meta name="theme-color" content="#ffffff">

    <!-- icons & favicons -->
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('storage/'.setting('site.icon'))}}">
    <!-- this icon shows in browser toolbar -->
    <link rel="icon" type="image/x-icon" href="{{asset('storage/'.setting('site.icon'))}}">
    <!-- this icon shows in browser toolbar -->
    <link rel="apple-touch-icon" sizes="57x57" href="{{asset('storage/'.setting('site.icon'))}}">
    <link rel="apple-touch-icon" sizes="60x60" href="{{asset('storage/'.setting('site.icon'))}}">
    <link rel="apple-touch-icon" sizes="72x72" href="{{asset('storage/'.setting('site.icon'))}}">
    <link rel="apple-touch-icon" sizes="76x76" href="{{asset('storage/'.setting('site.icon'))}}">
    <link rel="apple-touch-icon" sizes="114x114" href="{{asset('storage/'.setting('site.icon'))}}">
    <link rel="apple-touch-icon" sizes="120x120" href="{{asset('storage/'.setting('site.icon'))}}">
    <link rel="apple-touch-icon" sizes="144x144" href="{{asset('storage/'.setting('site.icon'))}}">
    <link rel="apple-touch-icon" sizes="152x152" href="{{asset('storage/'.setting('site.icon'))}}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{asset('storage/'.setting('site.icon'))}}">
    <link rel="icon" type="image/png" sizes="192x192" href="{{asset('storage/'.setting('site.icon'))}}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{asset('storage/'.setting('site.icon'))}}">
    <link rel="icon" type="image/png" sizes="96x96" href="{{asset('storage/'.setting('site.icon'))}}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('storage/'.setting('site.icon'))}}">
    <link rel="manifest" href="{{asset('assets/img/favicon/manifest.json')}}">

    <link rel="shortcut icon" type="image/x-icon" href="{{asset('assets/img/favicon.ico')}}">
    <link rel="icon" type="image/x-icon" href="{{asset('assets/img/favicon.ico')}}">

    <!-- Fallback For IE 9 [ Media Query and html5 Shim] -->
    <!--[if lt IE 9]>
    <script src="assets/vendor/css3-mediaqueries-js/css3-mediaqueries.js"></script>
    <![endif]-->

    <!-- BOOTSTRAP CSS -->
    <link rel="stylesheet" href="{{asset('assets/vendor/bootstrap/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/vendor/navbar/bootstrap-4-navbar.css')}}">

    <!--Animate css -->
    <link rel="stylesheet" href="{{asset('assets/vendor/animate/animate.css')}}" media="all">

    <!-- FONT AWESOME CSS -->
    <link rel="stylesheet" href="{{asset('assets/vendor/fontawesome/css/font-awesome.min.css')}}">

    <!--owl carousel css -->
    <link rel="stylesheet" href="{{asset('assets/vendor/owl-carousel/owl.carousel.css')}}" media="all">

    <!--Magnific Popup css -->
    <link rel="stylesheet" href="{{asset('assets/vendor/magnific/magnific-popup.css')}}" media="all">

    <!--Nice Select css -->
    <link rel="stylesheet" href="{{asset('assets/vendor/nice-select/nice-select.css')}}" media="all">

    <!--Offcanvas css -->
    <link rel="stylesheet" href="{{asset('assets/vendor/js-offcanvas/css/js-offcanvas.css')}}" media="all">

    {{-- Swipper --}}
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- MODERNIZER  -->
    <script src="{{asset('assets/vendor/modernizr/modernizr-custom.js')}}"></script>

    <!-- Main Master Style  CSS  -->
    <link id="cbx-style" data-layout="1" rel="stylesheet" href="{{asset('assets/css/style-default.min.css')}}" media="all">

    @yield('headers')
</head>

<body>

    <!--[if lt IE 7]>
    <p class="browsehappy">We are Extreamly sorry, But the browser you are using is probably from when civilization started. Which is way behind to view this site properly. Please update to a modern browser, At least a real browser. </p>
    <![endif]-->

    <!--== Header Area Start ==-->
    @include('frontend.sections.header')
    <!--== Header Area End ==-->

    @yield('views')

    <!--== Footer Area Start ==-->
    @include('frontend.sections.footer')
    <!--== Footer Area End ==-->

    <!--== Scroll Top ==-->
    <a href="#" class="scroll-top">
        <i class="fa fa-angle-up"></i>
    </a>
    <!--== Scroll Top ==-->

    <!-- SITE SCRIPT  -->

    <!-- Jquery JS  -->
    <script src="{{asset('assets/vendor/jquery/jquery-3.3.1.min.js')}}"></script>

    <!-- POPPER JS -->
    <script src="{{asset('assets/vendor/bootstrap/js/popper.min.js')}}"></script>

    <!-- BOOTSTRAP JS -->
    <script src="{{asset('assets/vendor/bootstrap/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('assets/vendor/navbar/bootstrap-4-navbar.js')}}"></script>

    <!--owl-->
    <script src="{{asset('assets/vendor/owl-carousel/owl.carousel.min.js')}}"></script>

    <!--Waypoint-->
    <script src="{{asset('assets/vendor/waypoint/waypoints.min.js')}}"></script>

    <!--CounterUp-->
    <script src="{{asset('assets/vendor/counterup/jquery.counterup.min.js')}}"></script>

    <!--isotope-->
    <script src="{{asset('assets/vendor/isotope/isotope.pkgd.min.js')}}"></script>

    <!--magnific-->
    <script src="{{asset('assets/vendor/magnific/jquery.magnific-popup.min.js')}}"></script>

    <!--Smooth Scroll-->
    <script src="{{asset('assets/vendor/smooth-scroll/jquery.smooth-scroll.min.js')}}"></script>

    <!--Jquery Easing-->
    <script src="{{asset('assets/vendor/jquery-easing/jquery.easing.1.3.min.js')}}"></script>

    <!--Nice Select -->
    <script src="{{asset('assets/vendor/nice-select/jquery.nice-select.js')}}"></script>

    <!--Jquery Valadation -->
    <script src="{{asset('assets/vendor/validation/jquery.validate.min.js')}}"></script>
    <script src="{{asset('assets/vendor/validation/additional-methods.min.js')}}"></script>

    <!--off-canvas js -->
    <script src="{{asset('assets/vendor/js-offcanvas/js/js-offcanvas.pkgd.min.js')}}"></script>

    <!-- Countdown -->
    <script src="{{asset('assets/vendor/jquery.countdown/jquery.countdown.min.js')}}"></script>

    <!-- custom js: main custom theme js file  -->
    <script src="{{asset('assets/js/theme.min.js')}}"></script>

    @yield('scripts')

    <!-- custom js: custom js file is added for easy custom js code  -->
    <script src="{{asset('assets/js/custom.js')}}"></script>
    {{-- <script id="switcherhandle" src="{{asset('assets/switcher/switcher.js')}}"></script> --}}

    <!-- custom js: custom scripts for theme style switcher for demo purpose  -->



</body>

</html>