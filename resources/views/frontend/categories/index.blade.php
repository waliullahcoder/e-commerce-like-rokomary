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
                    @if($bookcat_count > 0)  
                    <!-- AUTHOR -->
                    <div class="filter-group">
                        <h6>লেখক</h6>
                        <ul>
                            @foreach($authors ?? [] as $author)
                                <li>
                                    <label>
                                       <input type="checkbox" class="author-filter" value="{{ $author->id }}">
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
                                            class="publication-filter"
                                            value="{{ $pub->id }}">
                                        {{ $pub->name }}
                                    </label>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    @endif
                    <div class="filter-group">
                        <h6>দাম অনুযায়ী</h6>

                        <!-- SORT -->
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
            <!-- RIGHT CONTENT -->

           
    <div class="col-lg-9">
    <div class="category-product-section pb-4">

        <div class="container">
             <div id="default-products">
                @include('frontend.categories.partials.product_list')
            </div>
            <div id="filtered-products"></div>
        </div>


    </div>
</div>

            <!-- END RIGHT CONTENT -->

        </div>
    </div>
</div>
@endsection
