<?php

namespace App\Http\Controllers\Brand;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class BrandController extends Controller
{
    public function brand(Request $request)
    {
        $categories = Category::whereNull('parent_id')->with('childCategories')->get();
        return view('website.pages.brand.index', compact('categories'));
    }
}
