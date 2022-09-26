<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        $categories = Category::whereNull('parent_id')->with('childCategories')->get();
        $products = Product::paginate(10);
        return view('website.pages.product.index', compact('categories', 'products'));
    }
    
    public function show($id="")
    {
        $product = product::findorFail($id);
        $categories = Category::whereNull('parent_id')->with('childCategories')->get();
        $related_products = Product::where('category_id', $product->category_id)->where('id', '!=', $product->id)->limit(12)->get();
        return view('website.pages.details.index', compact('product', 'categories', 'related_products')); 
    }
}
