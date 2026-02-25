@extends('layouts.frontend.app')

@section('content')
<div class="category-page py-4">
    <div class="container">
        <div class="row">

            <!-- LEFT SIDEBAR -->
              <div class="col-lg-3 d-none d-lg-block">
                <div class="filter-box">
                    <h5 class="filter-title">ফিল্টার</h5>
                    <!-- SUBJECT -->
                    @if($subcategories->count() > 0)  
                    <form id="filter-form"> 
                    <div class="filter-group">
                        <h6>বিষয়</h6>
                        <ul>
                            @foreach($subcategories as $sub)
                                <li>
                                    <label>
                                        <a href="{{route('category.singleCategoryPage', $sub->id)}}" class="section-link"> {{ $sub->name }}</a>
                                    </label>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    </form>
                    @endif
                    <!-- AUTHOR -->
                    <div class="filter-group">
                        <h6>লেখক</h6>
                        <ul>
                            @foreach($authors ?? [] as $author)
                                <li>
                                    <label>
                                        <input type="checkbox">
                                        {{ $author->name }}
                                    </label>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="filter-group">
                        <h6>পাবলিকেশন</h6>
                        <ul>
                            @foreach($publications ?? [] as $pub)
                                <li>
                                    <label>
                                        <input type="checkbox">
                                        {{ $pub->name }}
                                    </label>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="filter-group">
                        <h6>দাম অনুযায়ী</h6>

                        <!-- SORT -->
                        <ul class="mb-3">
                            <li>
                                <label>
                                    <input type="radio" name="price_sort"
                                        value="low_high"
                                        onchange="this.form.submit()"
                                        {{ request('price_sort') == 'low_high' ? 'checked' : '' }}>
                                    কম থেকে বেশি
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" name="price_sort"
                                        value="high_low"
                                        onchange="this.form.submit()"
                                        {{ request('price_sort') == 'high_low' ? 'checked' : '' }}>
                                    বেশি থেকে কম
                                </label>
                            </li>
                        </ul>

                        <!-- RANGE -->
                        <ul>
                            <li>
                                <label>
                                    <input type="radio" name="price_range"
                                        value="0-200"
                                        onchange="this.form.submit()"
                                        {{ request('price_range') == '0-200' ? 'checked' : '' }}>
                                    ০ – ২০০ ৳
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" name="price_range"
                                        value="201-500"
                                        onchange="this.form.submit()"
                                        {{ request('price_range') == '201-500' ? 'checked' : '' }}>
                                    ২০১ – ৫০০ ৳
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" name="price_range"
                                        value="500+"
                                        onchange="this.form.submit()"
                                        {{ request('price_range') == '500+' ? 'checked' : '' }}>
                                    ৫০০+ ৳
                                </label>
                            </li>
                        </ul>
                    </div>

                    <!-- PRICE -->
                    <div class="filter-group">
                        <h6>দাম</h6>
                        <ul>
                            <li><label><input type="checkbox"> ০ – ২০০ ৳</label></li>
                            <li><label><input type="checkbox"> ২০১ – ৫০০ ৳</label></li>
                            <li><label><input type="checkbox"> ৫০০+ ৳</label></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- END LEFT SIDEBAR -->
  
            <!-- RIGHT CONTENT -->
            <div class="col-lg-9">
                <div class="category-product-section pb-4">
                    <div class="container">

                        <div class="section-card">

                            <!-- Section Header -->
                            <div class="section-header mb-3">
                                <h3 class="section-title">
                                    {{ $single_sub_category->name }}
                                </h3>
                            </div>  

                            <!-- PRODUCTS -->
                            @if($single_sub_category->products->count() > 0)
                                <div class="position-relative">
                                    <div class="d-flex flex-wrap">

                                        @foreach($single_sub_category->products as $product)
                                            <div class="p-sm-2 p-1" style="width:25%;">
                                                <div class="product-card-wrapper">
                                                    <div class="product-card">

                                                        <div class="discount-badge">
                                                            <span class="product-discount">{{number_format($product->discount)}}</span>
                                                        </div>

                                                    <a class="z-2"href="{{ route('product.details', $product->id) }}">
                                                        <figure class="product-card-image ratio"
                                                                style="--bs-aspect-ratio: 130%">
                                                       
                                                            <img class="object-fit-contain product-img"
                                                                 src="{{ asset($product->thumbnail) }}"
                                                                 alt="{{ $product->name }}">
                                                        </figure>

                                                        <div class="product-card-content">
                                                            <h6 class="h6 product-card-title truncate-text"
                                                                style="--lines: 2;">
                                                                    {{ $product->name }}
                                                               
                                                            </h6>
                                                            <b class="product-card-title truncate-text"
                                                                style="--lines: 2;">
                                                                CODE-{{ $product->id }}
                                                            </b>
                                                           <span class="product-card-price">
                                                        <del>
                                                         <span class="Price-amount">
                                                                 {{ number_format($product->regular_price) }} <span class="Price-currencySymbol">৳</span>
                                                            </span>
                                                        </del>
                                                        <ins>
                                                        <span class="Price-amount"> {{ number_format($product->sale_price ?? $product->regular_price) }}<span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                         </ins>
                                                        </span>
                                                        </div>
                                                            </a>
                                                        <div class="product-card-action">
                                                            <button class="btn btn-sm btn-danger add-to-cart"
                                                            data-id="{{ $product->id }}">
                                                            Add to Cart
                                                        </button>
                                                        </div>

                                                    </div>
                                                </div>
                                                     
                                            </div>
                                        @endforeach

                                    </div>
                                </div>
                            @else
                                <p class="text-muted">No products found.</p>
                            @endif

                        </div>

                    </div>
                </div>
            </div>
            <!-- END RIGHT CONTENT -->

        </div>
    </div>
</div>
@endsection
