@extends('website.layouts.master')
@section('title')
Đăng Ký
@endsection
@section('content')
<!-- main login -->
<div class="main-login main-signup">
    <div class="login signUp">
        <div class="form-login form-signup">
            <form action="{{route('signUp')}}" method="Post" class="Login_hero signup_hero">
                @csrf
                <h1>
                    Đăng Ký
                </h1>
                <div class="alert">
                    @if(session()->has('msg'))
                        <div class="login_notice">
                            {{ session()->get('msg') }} <i class="fa-solid fa-bomb"></i>
                        </div>
                    @endif
                </div>
                <label>
                    name
                </label>
                <input type="text" name="name" class="email" placeholder="Name" required />
                <label>
                    Email address
                </label>
                <input type="email" name="email" class="email" placeholder="enter email" required />
                <label>
                    Phone number
                </label>
                <input type="number" name="phone" class="email" placeholder="phone number" required />
                <label>
                    Password
                </label>
                <input type="password" name="password" class="password" placeholder="password" required />
                <label>
                    confirm password
                </label>
                <input type="password" class="password" name="confirm_password" placeholder="nhập lại password" required />
                <div class="switch-login-signup">
                    <button type="submit" class="submit-login submit-signup" value="Sign Up">
                        Sign Up
                    </button>
                    <a href="{{ route('login')}}">
                        <span class="switch-signup">
                            Login <i class="fa-solid fa-arrow-right"></i>
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