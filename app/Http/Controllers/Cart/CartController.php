<?php

namespace App\Http\Controllers\Cart;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class CartController extends Controller
{
    public function cart (Request $request)
    {
        $categories = Category::whereNull('parent_id')->with('childCategories')->get();
        return view('website.pages.cart.index', compact('categories'));
    }
    
}
