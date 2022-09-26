<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{

    public function login(Request $request)
    {
        if ($request->getMethod() == 'GET') {
            $categories = Category::whereNull('parent_id')->with('childCategories')->get();
            return view('website.pages.converts.login', compact('categories'));
        }
        $account = [
            'email' => $request->email,
            'password'=> $request->password
        ];

        if (Auth::guard('web')->attempt($account)){
            return redirect()->route('home');
        }

        return redirect()->back()->with('msg', 'Tài khoản hoặc mật khẩu không đúng');
    }

    public function register(Request $request)
    {
        if ($request->getMethod() == 'GET') {
            $categories = Category::whereNull('parent_id')->with('childCategories')->get();
            return view('website.pages.converts.signUp', compact('categories'));
        }
        $email = User::where('email', '=', $request->email)->exists();
        $phone = User::where('phone', '=', $request->phone)->exists();
        if ($email) { 
            return redirect()->back()->with('msg', 'Email đã tồn tại');
        }
        if ($phone) { 
            return redirect()->back()->with('msg', 'Phone đã tồn tại');
        }
        if ($request->password != $request->confirm_password) {
            return redirect()->back()->with('msg', 'mật khẩu không chính sác');
        }
        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'password' => bcrypt($request->password),
        ]);
        return redirect()->route('login');
    }

    public function logout(Request $request)
    {
        if ($request->getMethod() == 'GET') {
            Auth::guard('web')->logout();
            return redirect()->route('login');
        }
       
    }
}
