<!-- header -->
<!-- menu on mobile -->
<header class="header-phone">
    <div class="content-header-phone">
        <div class="nav-phone">
            <div class="icon-menu-phone" id="m-mobeli">
                <i class="fa-solid fa-bars" id="ic-open"></i>
            </div>
            <ul class="menu-phone" id="menu-mobile">
                <li class="item-menu">
                    <a href="{{route('home')}}">
                        <i class="fa-solid fa-house"></i> Home
                    </a>
                </li>
                <li class="item-menu">
                    <a href="{{route('product')}}">
                        Thời trang Nam
                    </a>
                    <span class="icon-extend">
                        <i class="fa-solid fa-angle-down"></i>
                    </span>
                    <ul class="sub-menu-phone">
                        <li class="sub-menu-lv2">
                            <a href="#">
                                Áo Nam
                            </a>
                            <span class="icon-extend">
                                <i class="fa-solid fa-angle-down"></i>
                            </span>
                            <ul class="sub-menu-phone">
                                <li class="sb-item-menu">
                                    <a href="#">
                                        Áo Phông
                                    </a>
                                </li>
                                <li class="sb-item-menu">
                                    <a href="#">
                                        hoodie
                                    </a>
                                </li>
                                <li class="sb-item-menu">
                                    <a href="#">
                                        Jacket
                                    </a>
                                </li>
                                <li class="sb-item-menu">
                                    <a href="#">
                                        sweater
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="sub-menu-lv2">
                            <a href="#">
                                Quần Nam
                            </a>
                            <span class="icon-extend">
                                <i class="fa-solid fa-angle-down"></i>
                            </span>
                            <ul class="sub-menu-phone">
                                <li class="sb-item-menu">
                                    <a href="#">
                                        cargo pants
                                    </a>
                                </li>
                                <li class="sb-item-menu">
                                    <a href="#">
                                        jogger
                                    </a>
                                </li>
                                <li class="sb-item-menu">
                                    <a href="#">
                                        shorts
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="item-menu">
                    <a href="{{route('product')}}">
                        Thời Trang Nữ
                    </a>
                    <span class="icon-extend">
                        <i class="fa-solid fa-angle-down"></i>
                    </span>
                    <ul class="sub-menu-phone">
                        <li class="sub-menu-lv2">
                            <a href="#">
                                Áo Nữ
                            </a>
                            <span class="icon-extend">
                                <i class="fa-solid fa-angle-down"></i>
                            </span>
                            <ul class="sub-menu-phone">
                                <li class="sb-item-menu">
                                    <a href="#">
                                        Áo Phông
                                    </a>
                                </li>
                                <li class="sb-item-menu">
                                    <a href="#">
                                        hoodie
                                    </a>
                                </li>
                                <li class="sb-item-menu">
                                    <a href="#">
                                        Jacket
                                    </a>
                                </li>
                                <li class="sb-item-menu">
                                    <a href="#">
                                        sweater
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="sub-menu-lv2">
                            <a href="#">
                                Quần váy Nữ
                            </a>
                            <span class="icon-extend">
                                <i class="fa-solid fa-angle-down"></i>
                            </span>
                            <ul class="sub-menu-phone">
                                <li class="sb-item-menu">
                                    <a href="#">
                                        cargo pants
                                    </a>
                                </li>
                                <li class="sb-item-menu">
                                    <a href="#">
                                        joggers
                                    </a>
                                </li>
                                <li class="sb-item-menu">
                                    <a href="#">
                                        legging
                                    </a>
                                </li>
                                <li class="sb-item-menu">
                                    <a href="#">
                                        shorts
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="item-menu">
                    <a href="{{ route('brand')}}">
                        thương hiệu
                    </a>
                </li>
                <li class="item-menu">
                    <a href="{{route('news')}}">
                        xu hướng thời trang
                    </a>
                </li>
                <li class="item-menu">
                    <a href="{{route('introduces')}}">
                        giới thiệu
                    </a>
                </li>
                @if (Auth::guard('web')->check())
                <li class="item-menu">
                    <a href="#">
                        <div class="icon_user">
                            <span class="avatar_user">
                                <img src="{{ asset('images/icon/Oval075x.png')}}" alt="avatar">
                            </span>
                            <span class="user_name">
                                {{Auth::guard('web')->user()->name ?? Auth::guard('web')->user()->email}}
                            </span>
                        </div>
                    </a>
                    <span class="icon-extend">
                        <i class="fa-solid fa-angle-down"></i>
                    </span>
                    <ul class="sub-menu-phone">
                        <li class="sub-menu-lv2">
                            <a href="#">
                                tài khoản của tôi
                            </a>
                        </li>
                        <li class="sub-menu-lv2">
                            <a href="#">
                                đươn mua
                            </a>
                        </li>
                        <li class="sub-menu-lv2">
                            <a href="{{route('logout')}}">
                                Đăng Xuất
                            </a>
                        </li>
                    </ul>
                </li>
                @else
                <li class="item-menu">
                    <a href="{{route('login')}}">
                        <i class="fa-solid fa-circle-user"></i> người dùng
                    </a>
                    <span class="icon-extend">
                        <i class="fa-solid fa-angle-down"></i>
                    </span>
                    <ul class="sub-menu-phone">
                        <li class="sub-menu-lv2">
                            <a href="{{route('login')}}">
                                Đăng Ký
                            </a>
                        </li>
                        <li class="sub-menu-lv2">
                            <a href="{{route('signUp')}}">
                                Đăng Nhập
                            </a>
                        </li>
                    </ul>
                </li>
                @endif
            </ul>
        </div>
        <div class="logo-phone">
            <div class="lb_logo">
                <a href="{{route('home')}}">
                    <img src="{{ asset('images/277941865_712455419785011_8136996926470295878_n.png')}}" alt="Logo">
                </a>
            </div>
        </div>
        <div class="tools-phone">
            <div>
                <div class="ic-search-phone" id="ic-search">
                    <i class="fa-solid fa-magnifying-glass" id="close-search"></i>
                </div>
                <div class="search-phone" id="frames-search">
                    <div class="box-search-phone">
                        <form role="search" method="get" action="{{route('search')}}" autocomplete="off">
                            <input type="search" class="search-field" name="s" value="{{isset($_GET['s']) ? $_GET['s'] : ''}}" placeholder="Tên sản phẩm">
                            <button type="submit" value="Tìm kiếm" class="btn-search"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="cart-phone">
                <div class="header-cart">
                    <a href="{{ route('cart')}}">
                        <i class="fa-solid fa-cart-shopping"></i>
                        <span class="count-pr">
                            0
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- end menu on mobile -->
<header class="header-pc">
    <!-- header top -->
    <div class="header-top">
        <div class="container">
            <div class="row">
                <div class="contactLeft">
                    <ul>
                        <li>
                            <a href="mailto:thoitranghsc@mail.com">
                                <ion-icon name="mail-open-outline"></ion-icon>
                                thoitranghsc@mail.com
                            </a>
                        </li>
                        <li>
                            <span> | </span>
                        </li>
                        <li>
                            <a href="https://www.facebook.com/chinh.nguyenxuan.6886">
                                <i class="fa-brands fa-facebook-square"></i>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.instagram.com/">
                                <i class="fa-brands fa-instagram"></i>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.youtube.com/">
                                <i class="fa-brands fa-youtube"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="contactRight">
                    <ul>
                        <li>
                            <a href="{{ route('support')}}">
                                <i class="fa-solid fa-circle-question"></i>
                                Hỗ trợ
                            </a>
                        </li>
                        @if (Auth::guard('web')->check())
                        <div class="nav_user">
                            <div class="icon_user">
                                <span class="avatar_user">
                                    <img src="{{ asset('images/icon/Oval075x.png')}}" alt="avatar">
                                </span>
                                <span class="user_name">
                                    {{Auth::guard('web')->user()->name ?? Auth::guard('web')->user()->email}}
                                </span>
                            </div>
                            <div class="sub_user">
                                <span>
                                    <a href="#">
                                        tài khoản của tôi
                                    </a>
                                </span>
                                <span>
                                    <a href="#">
                                        đươn mua
                                    </a>
                                </span>
                                <span>
                                    <a href="{{route('logout')}}">
                                        Đăng Xuất
                                    </a>
                                </span>
                            </div>
                        </div>
                        @else
                        <li>
                            <a href="{{route('signUp')}}">
                                Đăng ký
                            </a>
                        </li>
                        <li>
                            <span> | </span>
                        </li>
                        <li>
                            <a href="{{route('login')}}">
                                Đăng nhập
                            </a>
                        </li>
                        @endif
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- end header top -->
    <!-- header content -->
    <div class="container header-content">
        <div class="lb_logo">
            <a href="{{route('home')}}">
                <img src="{{ asset('images/277941865_712455419785011_8136996926470295878_n.png')}}" alt="">
            </a>
        </div>
        <div class="box_search">
            <div class="search">
                <form role="search" action="{{route('search')}}" method="get" action="product">
                    <input type="search" autocomplete="off" class="search-field" name="s" value="{{isset($_GET['s']) ? $_GET['s'] : ''}}" placeholder="Tên sản phẩm">
                    <button type="submit" value="Tìm kiếm" class="btn-search"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>
        <div class="header-cart">
            <a href="{{route('cart')}}">
                <i class="fa-solid fa-cart-shopping"></i>
            </a>
            <span class="count-pr">
                1
            </span>
        </div>
    </div>
    <!-- end header content -->
    <!-- header menu -->
    <div class="header-nav">
        <div class="container">
            <div class="row">
                <div class="box-menu">
                    <ul class="menu">
                        <li class="menu-item line-item-menu">
                            <a href="http://127.0.0.1:8000/">
                                <i class="fa-solid fa-house"></i> Home
                            </a>
                        </li>
                        @foreach($categories as $category)
                        <li class="menu-item line-item-menu">
                            <a href="{{route('category', $category->id)}}">
                                {{$category->name}} <i class="fa-solid fa-angle-down"></i>
                            </a>
                            <ul class="box-sub-menu">
                                @if(count($category->childCategories))
                                @foreach($category->childCategories as $childCategory)
                                <li class="sub-menu">
                                    <a href="{{route('category', $childCategory->id)}}" class="item-dark">
                                        {{$childCategory->name}}
                                    </a>
                                    <ul>
                                        @if(count($childCategory->categories))
                                        @foreach($childCategory->categories as $child)
                                        <li class="sb-menu-item">
                                            <a href="{{route('category', $child->id)}}">
                                                {{$child->name}}
                                            </a>
                                        </li>
                                        @endforeach
                                        @endif
                                    </ul>
                                </li>
                                @endforeach
                                @endif
                            </ul>
                        </li>
                        @endforeach
                        <li class="menu-item line-item-menu">
                            <a href="{{ route('brand')}}">
                                thương hiệu
                            </a>
                        </li>
                        <li class="menu-item line-item-menu">
                            <a href="{{route('news')}}">
                                xu hướng thời trang
                            </a>
                        </li>
                        <li class="menu-item line-item-menu">
                            <a href="{{route('introduces')}}">
                                giới thiệu
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- end header -->