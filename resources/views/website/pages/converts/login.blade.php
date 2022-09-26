@extends('website.layouts.master')
@section('title')
Đăng Nhập
@endsection
@section('content')
<!-- main login -->
<div class="main-login">
    <div class="login">
        <div class="form-login">
            <form action="{{route('login')}}" method="Post" class="Login_hero">
                @csrf
                <h1>
                    Đăng Nhập
                </h1>
                <div class="alert">
                    @if(session()->has('msg'))
                        <div class="login_notice">
                            <i class="fa-solid fa-bomb"></i> {{ session()->get('msg') }} 
                        </div>
                    @endif
                </div>
                <label>
                    Email address
                </label>
                <div class="box_user">
                    <i class="fa-solid fa-user"></i>
                    <input type="email" class="email" name="email" placeholder="enter email" required />
                </div>
                <label>
                    Password
                </label>
                <div class="box_password">
                    <i class="fa-solid fa-lock"></i>
                    <input type="password" class="password" name="password" placeholder="password" required />
                </div>
                <div class="ckeck-box-login">
                    <input type="checkbox" name="">
                    <span>
                        save password account
                    </span>
                </div>
                <div class="switch-login-signup">
                    <button type="submit" class="submit-login" name="login" value="Log in">
                        Login
                    </button>
                    <a href="{{ route('signUp')}}">
                        <span class="switch-signup">
                            Sign Up <i class="fa-solid fa-arrow-right"></i>
                        </span>
                    </a>
                </div>
                <div class="mxh-login">
                    <button class="fb-btn-login">
                        <a href="https://www.facebook.com/">
                            <i class="fa-brands fa-facebook-f"></i> Login with Facebook
                        </a>
                    </button>
                    <button class="google-btn-login">
                        <a href="https://accounts.google.com/signin">
                            <i class="fa-brands fa-google"></i> Login with Google+
                        </a>
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- end main login -->
@endsection