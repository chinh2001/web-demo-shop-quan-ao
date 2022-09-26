<?php

namespace App\Http\Controllers\News;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class NewsController extends Controller
{
    public function news(Request $request)
    {
        $categories = Category::whereNull('parent_id')->with('childCategories')->get();
        return view('website.pages.news.index', compact('categories'));
    }
    public function detail_new (Request $request)
    {
        $categories = Category::whereNull('parent_id')->with('childCategories')->get();
        return view('website.pages.detail_new.index', compact('categories'));
    }
}
