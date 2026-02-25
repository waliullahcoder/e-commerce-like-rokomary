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
                    
                    @if($bookcat_count > 0)  
                    <!-- AUTHOR -->
                    <div class="filter-group">
                        <h6>লেখক</h6>
                        <ul>
                            @foreach($authors ?? [] as $author)
                                <li>
                                    <label>
                                       <input type="checkbox" class="author-filter-sub" value="{{ $author->id }}">
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
                                        <input type="checkbox" 
                                            class="publication-filter-sub"
                                            value="{{ $pub->id }}">
                                        {{ $pub->name }}
                                    </label>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    @endif
                    <div class="filter-group">
                        <h6>দাম</h6>
                        <ul class="mb-3">
                            <li>
                                <label>
                                    <input type="radio" name="price_sort" value="low_high">
                                    কম থেকে বেশি
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" name="price_sort" value="high_low">
                                    বেশি থেকে কম
                                </label>
                            </li>
                        </ul>
                    </div>
                    <!-- PRICE -->
                    <div class="filter-group">
                        <h6>দাম</h6>
                        <ul>
                            <li>
                                <label>
                                    <input type="checkbox" class="price-range-filter-sub" value="0-200">
                                    ০ – ২০০ ৳
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="checkbox" class="price-range-filter-sub" value="201-500">
                                    ২০১ – ৫০০ ৳
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="checkbox" class="price-range-filter-sub" value="500+">
                                    ৫০০+ ৳
                                </label>
                            </li>
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
                                    <div class="container">
                                       <div id="default-products-sub" class="d-flex flex-wrap">
                                        @include('frontend.categories.partials.sub_product_list')
                                        </div>
                                      <div id="filtered-products-sub"></div>
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
