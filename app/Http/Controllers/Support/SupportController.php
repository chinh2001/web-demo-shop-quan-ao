<?php

namespace App\Http\Controllers\Support;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class SupportController extends Controller
{
    // page support
    public function support(Request $request)
    {
        $categories = Category::whereNull('parent_id')->with('childCategories')->get();
        return view('website.pages.support.index', compact('categories'));
    }
    // page policy
    public function policy(Request $request)
    {
        $categories = Category::whereNull('parent_id')->with('childCategories')->get();
        return view('website.pages.policy.index', compact('categories'));
    }
}
