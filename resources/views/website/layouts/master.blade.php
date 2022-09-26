<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <!-- font -->
    <link rel="preconnect" href="{{ asset('asset/font/Helvetica/Helvetica.ttf')}}">
    <!--font-awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fontawesome-iconpicker/3.2.0/css/fontawesome-iconpicker.css" integrity="sha512-9yS+ck0i78HGDRkAdx+DR+7htzTZJliEsxQOoslJyrDoyHvtoHmEv/Tbq8bEdvws7s1AVeCjCMOIwgZTGPhySw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" href="{{ asset('images/277941865_712455419785011_8136996926470295878_n.png')}}">
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <!-- css -->
    <link rel="stylesheet" href="{{ asset('asset/css/web/style.css') }}">
    <link rel="stylesheet" href="{{ asset('asset/css/web/reponsive.css') }}">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<body>
    <!-- header -->
    @include('website.blocks.header')
    <!-- end header -->
    <!-- mani content -->
    @yield('content')
    <!-- end main content -->
    <!-- footer -->
    @include('website.blocks.footer')
    <!-- end footer -->
    <!-- jquery -->
    <script src="{{ asset('asset/js/jqry,js')}}"></script>
    <!-- swiper input -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="{{ asset('asset/js/web.js')}}"></script>
</body>

</html>