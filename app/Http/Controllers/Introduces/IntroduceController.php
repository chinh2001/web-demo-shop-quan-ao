<?php

namespace App\Http\Controllers\Introduces;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class IntroduceController extends Controller
{
    public function introduces(Request $request)
    {
        $categories = Category::whereNull('parent_id')->with('childCategories')->get();
        return view('website.pages.introduce.index', compact('categories'));
    }
}
