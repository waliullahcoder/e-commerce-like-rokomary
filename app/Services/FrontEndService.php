<?php

namespace App\Services;

use App\HelperClass;
use App\Models\Menu;
use App\Models\MenuItem;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\Publication;
use App\Models\Product;
use App\Models\Author;
use App\Services\Utility\ProductUtility;
use Illuminate\Support\Facades\Auth;
use DB;

class FrontEndService
{
    public function getMenu()
    {

    /*
    |--------------------------------------------------------------------------
    | MAIN MENUS (parent_id = NULL)
    |--------------------------------------------------------------------------
    */
    $menus = Category::whereNull('parent_id')
        ->where('status', 1)
        ->select(
            'id',
            'id as category_id',
            'name',
            'url as menu_url',
            'name as category_name',
            'slug as category_slug',
            'position'
        )->orderBy('serial', 'asc')
        ->get()
        ->groupBy('position');

    $data['top_menus']         = $menus['header_top']        ?? collect();
    $data['middle_menus']      = $menus['header']            ?? collect();
    $data['mega_menus']        = $menus['mega_menu_parent']  ?? collect();
    $data['footer_col1_menus'] = $menus['footer']       ?? collect();
    $data['footer_col2_menus'] = $menus['footer_col2']       ?? collect();

    $data['sub_menus'] = Category::where('status', 1)
        ->where('position', 'mega_menu_child')
        ->whereHas('parents')
        ->select(
            'id',
            'name',
            'parent_id',
            'slug as category_slug'
        )
        ->get()
        ->groupBy('parent_id');

    return $data;

    }

     public function getSubCategoryData($category_id){
             return DB::table('categories')
            ->where('parent_id', $category_id)
            ->get();
     }

public function getProductData($cat_id)
{
    // 1️⃣ Direct child categories
   // $directCategories = Category::where('parent_id', $cat_id);

    // 2️⃣ Pivot table থেকে category id নেওয়া
    $pivotCategoryIds = \DB::table('category_subcategory')
        ->where('parent_id', $cat_id)
        ->pluck('subcategory_id');

    // 3️⃣ Pivot categories query
    $pivotCategories = Category::whereIn('id', $pivotCategoryIds);

    // 4️⃣ দুইটা merge করা
    //  $categories = $directCategories
    //     ->union($pivotCategories)
    $categories = $pivotCategories->with([
            'products' => function($query) {
                $query->where('status', 1)->inRandomOrder();
            },
            'products.variants',
            'subcategories'
        ])
        ->get();

    return $categories;
}

//--------------Home Page----------------//

//Homepage Category all
public function getSubCategoryHomePageOnly()
{
$categories = Category::whereNotNull('parent_id')->where('position', 'homepage')->orderBy('id', 'desc')->get();
       return $categories;
}

//ট্রেন্ডিং বইসমূহ and নতুন প্রকাশিত বই
public function getSubCategoryTrendsNewBookProductOnly()
{
return Category::whereNotNull('parent_id')
        ->whereIn('slug', ['trending-bismuuh', 'ntun-prkasit-bi'])
        ->with(['products' => function($query) {
            $query->where('status', 1)->inRandomOrder();
        }, 'products.variants'])
        ->orderBy('id', 'asc')
        ->get();
}

//Banner add category
public function getSubCategoryBannerOnly()
{
    return Category::whereNotNull('parent_id')->where('position', 'homepage_banner_category')->get();
}

//Flat Offer
public function getSubCategorySianJugpuertiNrobiulAualProductOnly()
{
return Category::whereNotNull('parent_id')
    ->whereIn('slug', ['sizan-zugpuurti-ofar', 'rbiul-auzal-seerat-grnthmala'])
    ->with(['products' => function($query) {
            $query->where('status', 1)->inRandomOrder();
        }, 'products.variants'])
    ->orderBy('id', 'asc')
    ->get();
}
//জনপ্রিয় লেখক
public function getSubCategoryWriterOnly()
{
    return SubCategory::with('category')
    ->where('parent_id', 228)
    ->get();
}

//বেস্ট সেলার বই
public function getSubCategoryBestSellerBoiOnly()
{
    return Product::where('status', 1)
        ->orderByDesc(
            DB::raw('(SELECT COALESCE(SUM(qty),0) 
                      FROM order_items 
                      WHERE order_items.product_id = products.id)')
        )
        ->with('variants')
        ->limit(10)
        ->get();
}

//নিয়োগ সহায়িকা
public function getSubCategoryNiogSohaikaOnly()
{
    return Category::whereNotNull('parent_id')
    ->whereIn('slug', ['niyog-shayika-1'])
    ->with(['products' => function($query) {
            $query->where('status', 1)->inRandomOrder();
        }, 'products.variants'])
    ->orderBy('id', 'asc')
    ->get();
}

//অন্যান্য পণ্য
public function getSubCategoryOthersOnly()
{
    return Category::whereNotNull('parent_id')->where('position', 'homepage_others_category')->get();
}

//ব্র্যান্ডসমূহ
public function getSubCategoryBrandOnly()
{
    return Category::whereNotNull('parent_id')->where('position', 'homepage_brands_category')->get();
}

//--------------Home Page\\\\\\\\\\----------------//

public function getSubCategoryDataAll()
{
   
$categories = Category::whereNotNull('parent_id')->get();
       return $categories;
}

public function getSubCategoryProductAll()
{
$get_sub_category_product_all = Category::whereNotNull('parent_id')->with('products','products.variants')->get();
       return $get_sub_category_product_all;
}

 public function singleCategoryPage($sub_cat_id)
{
   
    $single_sub_category = Category::with('products','products.variants')
        ->where('id', $sub_cat_id)
        ->first();
        return $single_sub_category;
    }

public function productDetails($id)
{
   
    $product = Product::with('variants')
        ->where('id', $id)
        ->first();
        return $product;
}   

public function getAuthor()
{
   $authors = Author::orderBy('id', 'desc')
    ->limit(10)
    ->get();
    return $authors;
}
public function getPublication()
{
    $publications = Publication::orderBy('id', 'desc')->limit(10)->get();
        return $publications;
}
public function productAll()
{
    $product = Product::with('variants')
        ->orderBy('id', 'desc')
        ->get()->random(4);
        return $product;
}  

}