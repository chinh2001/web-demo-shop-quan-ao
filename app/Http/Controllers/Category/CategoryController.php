<?php

namespace App\Http\Controllers\Category;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;

class CategoryController extends Controller
{
    public function index(Request $request)
    {
        $categories = Category::whereNull('parent_id')->with('childCategories')->get();
        $products = Product::all();
        return view('website.pages.product.index', compact('categories', 'products'));
    }
    public function show($id="")
    {
        $category = Category::findorFail($id);
        $categories = Category::whereNull('parent_id')->with('childCategories')->get();
        $ids = [];
        array_push($ids, $category->id);
        foreach ($category->childCategories as $childCategory):
            array_push($ids, $childCategory->id);
            foreach($childCategory->categories as $child):
                array_push($ids, $child->id);
            endforeach;
        endforeach;
        $products = Product::latest()->whereIn('category_id', $ids)->paginate(15);
        // $brands = Brand::latest()->get();
        return view('website.pages.product.index', compact('category', 'categories', 'products')); 

    }
}
