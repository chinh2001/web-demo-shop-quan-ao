<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;

class HomeController extends Controller
{
    public function index()
    {
        // $brands = Brand::where('status', 'true')->get();
        try {
            //code...
            $categories = Category::whereNull('parent_id')->with('childCategories')->get();
            $categories1 = Category::with('childCategories')->limit(6)->get();
            $brands = Brand::all();
            $product_hots = Product::where('hot', 1)->limit(15)->get();
            $product_burneds = Product::where('burned', 1)->limit(20)->get();
            $product_news = Product::latest()->limit(20)->get();
        } catch (\Throwable $th) {
            //throw $th;
            dd($th);
        }

        return view('website.pages.home.index', compact('categories', 'brands', 'categories1', 'product_hots', 'product_news', 'product_burneds'));
    }
    public function search(Request $request)
    {
        $categories = Category::whereNull('parent_id')->with('childCategories')->get();
        $brands = Brand::where('status', 'true')->get();
        $keyword = $request->get('s');
        $products = Product::where('name', 'LIKE', "%" . $keyword . "%")->paginate(12)->withQueryString();

        return view('website.pages.search.index', compact('categories', 'products'));
    }

}
