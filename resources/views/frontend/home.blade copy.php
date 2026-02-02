@extends('layouts.frontend.app')

@section('content')
    <div class="hero-section">
        <div class="container">
            <div class="swiper carousel" data-items="1" data-sm-items="1" data-xs-items="1" data-autoplay="true" data-dots="true"
                data-arrows="true" data-loop="true">
                <div class="swiper-wrapper">
                    @foreach ($slides as $item)
                        <div class="swiper-slide">
                            @if ($item->link)
                                <a href="{{ $item->link }}">
                                    <img class="w-100" src="{{ asset($item->image) }}"
                                        srcset="{{ asset($item->mobile_image) }} 768w, {{ asset($item->image) }} 1200w"
                                        sizes="(max-width: 768px) 100vw, 1200px" alt="Slide Image">
                                </a>
                            @else
                                <img class="w-100" src="{{ asset($item->image) }}"
                                    srcset="{{ asset($item->mobile_image) }} 768w, {{ asset($item->image) }} 1200w"
                                    sizes="(max-width: 768px) 100vw, 1200px" alt="Slide Image">
                            @endif
                        </div>
                    @endforeach
                </div>
                @if (count($slides) > 1)
                    <div class="swiper-arrow-btn swiper-button-prev">
                        <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                fill="#333333"></path>
                        </svg>
                    </div>
                    <div class="swiper-arrow-btn swiper-button-next">
                        <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                fill="#333333"></path>
                        </svg>
                    </div>
                @endif
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
    <!-- End Hero -->

    @foreach ($homeSections as $item)
        <div class="featured-category-section py-4">
            <div class="container">
                <div class="position-relative">
                    <div class="swiper carousel" id="category-swiper" data-items="2" data-xl-items="6" data-lg-items="5"
                        data-md-items="4" data-sm-items="3" data-xs-items="3" data-margin="10" data-dots="false"
                        data-arrows="true">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <a href="./category.html" class="featured-category">
                                    <div class="featured-category-img">
                                        <img src="./assets/images/category/1.png" height="40" alt="">
                                    </div>
                                    <div class="featured-category-text">ইসলামি সাহিত্য</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="featured-category">
                                    <div class="featured-category-img">
                                        <img src="./assets/images/category/2.png" height="40" alt="">
                                    </div>
                                    <div class="featured-category-text">আল হাদিস</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="featured-category">
                                    <div class="featured-category-img">
                                        <img src="./assets/images/category/3.png" height="40" alt="">
                                    </div>
                                    <div class="featured-category-text">সন্তান প্রতিপালন</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="featured-category">
                                    <div class="featured-category-img">
                                        <img src="./assets/images/category/4.png" height="40" alt="">
                                    </div>
                                    <div class="featured-category-text">শিশু কিশোরদের বই</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="featured-category">
                                    <div class="featured-category-img">
                                        <img src="./assets/images/category/5.png" height="40" alt="">
                                    </div>
                                    <div class="featured-category-text">সীরাতে রাসূল (সা.)</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="featured-category">
                                    <div class="featured-category-img">
                                        <img src="./assets/images/category/6.png" height="40" alt="">
                                    </div>
                                    <div class="featured-category-text">সাহাবীদের জীবনী</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="featured-category">
                                    <div class="featured-category-img">
                                        <img src="./assets/images/category/2.png" height="40" alt="">
                                    </div>
                                    <div class="featured-category-text">তরজমা ও তাফসীর</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="featured-category">
                                    <div class="featured-category-img">
                                        <img src="./assets/images/category/5.png" height="40" alt="">
                                    </div>
                                    <div class="featured-category-text">আরবী ভাষা শিক্ষা</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="featured-category">
                                    <div class="featured-category-img">
                                        <img src="./assets/images/category/1.png" height="40" alt="">
                                    </div>
                                    <div class="featured-category-text">পরকাল ও জান্নাত-জাহান্নাম</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="featured-category">
                                    <div class="featured-category-img">
                                        <img src="./assets/images/category/3.png" height="40" alt="">
                                    </div>
                                    <div class="featured-category-text">আত্মশুদ্ধি ও অনুপ্রেরণা</div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-arrow-btn swiper-button-prev" data-target="#category-swiper">
                        <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                fill="#333333"></path>
                        </svg>
                    </div>
                    <div class="swiper-arrow-btn swiper-button-next" data-target="#category-swiper">
                        <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                fill="#333333"></path>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Featured Category -->
    @endforeach


    <div class="category-product-section pb-4">
        <div class="container">
            <div class="section-card">
                <div class="section-header mb-3">
                    <h3 class="section-title">ট্রেন্ডিং বইসমূহ</h3>
                    <a href="./category.html" class="section-link">সবগুলো দেখুন</a>
                </div>
                <div class="position-relative">
                    <div class="swiper carousel" data-items="2" data-xl-items="6" data-lg-items="5" data-md-items="4"
                        data-sm-items="3" data-xs-items="2" data-margin="5" data-dots="false" data-arrows="true">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/1.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/2.webp"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/3.png"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/4.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/5.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/6.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/7.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/8.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-arrow-btn swiper-button-prev">
                            <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                    fill="#333333"></path>
                            </svg>
                        </div>
                        <div class="swiper-arrow-btn swiper-button-next">
                            <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                    fill="#333333"></path>
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Category Wise Products -->

    <div class="category-product-section pb-4">
        <div class="container">
            <div class="section-card">
                <div class="section-header mb-3">
                    <h3 class="section-title">নতুন প্রকাশিত বই</h3>
                    <a href="./category.html" class="section-link">সবগুলো দেখুন</a>
                </div>
                <div class="position-relative">
                    <div class="swiper carousel" data-items="2" data-xl-items="6" data-lg-items="5" data-md-items="4"
                        data-sm-items="3" data-xs-items="2" data-margin="5" data-dots="false" data-arrows="true">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/1.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/2.webp"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/3.png"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/4.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/5.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/6.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/7.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/8.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-arrow-btn swiper-button-prev">
                            <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                    fill="#333333"></path>
                            </svg>
                        </div>
                        <div class="swiper-arrow-btn swiper-button-next">
                            <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                    fill="#333333"></path>
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Category Wise Products -->

    <div class="pb-4">
        <div class="container">
            <div class="row g-3">
                <div class="col-sm-4">
                    <a href="#"><img src="./assets/images/banners/1.jpg" alt=""></a>
                </div>
                <div class="col-sm-4">
                    <a href="#"><img src="./assets/images/banners/2.jpg" alt=""></a>
                </div>
                <div class="col-sm-4">
                    <a href="#"><img src="./assets/images/banners/3.jpg" alt=""></a>
                </div>
            </div>
        </div>
    </div>
    <!-- End Banner -->

    <div class="category-product-section pb-4">
        <div class="container">
            <div class="section-card">
                <div class="section-header mb-3">
                    <h3 class="section-title">সিয়ান যুগপূর্তি অফার</h3>
                    <a href="./category.html" class="section-link">সবগুলো দেখুন</a>
                </div>
                <div class="position-relative">
                    <div class="swiper carousel" data-items="2" data-xl-items="6" data-lg-items="5" data-md-items="4"
                        data-sm-items="3" data-xs-items="2" data-margin="5" data-dots="false" data-arrows="true">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/1.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/2.webp"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/3.png"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/4.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/5.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/6.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/7.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/8.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-arrow-btn swiper-button-prev">
                        <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                fill="#333333"></path>
                        </svg>
                    </div>
                    <div class="swiper-arrow-btn swiper-button-next">
                        <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                fill="#333333"></path>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Category Wise Products -->

    <div class="category-product-section pb-4">
        <div class="container">
            <div class="section-card">
                <div class="section-header mb-3">
                    <h3 class="section-title">রবিউল আউয়াল সীরাত গ্রন্থমালা</h3>
                    <a href="./category.html" class="section-link">সবগুলো দেখুন</a>
                </div>
                <div class="position-relative">
                    <div class="swiper carousel" data-items="2" data-xl-items="6" data-lg-items="5" data-md-items="4"
                        data-sm-items="3" data-xs-items="2" data-margin="5" data-dots="false" data-arrows="true">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/1.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/2.webp"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/3.png"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/4.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/5.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/6.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/7.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/8.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 2;">
                                                    <a href="./single-product.html">
                                                        একনজরে উম্মাহর ইতিহাস ৩ খন্ড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 2;">
                                                    <a href="./author.html">আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-arrow-btn swiper-button-prev">
                        <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                fill="#333333"></path>
                        </svg>
                    </div>
                    <div class="swiper-arrow-btn swiper-button-next">
                        <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                fill="#333333"></path>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Category Wise Products -->

    <div class="author-section pb-4">
        <div class="container">
            <div class="section-card">
                <div class="section-header mb-3">
                    <h3 class="section-title">জনপ্রিয় লেখক</h3>
                    <a href="./authors.html" class="section-link">সবগুলো দেখুন</a>
                </div>
                <div class="position-relative">
                    <div class="swiper carousel" data-items="2" data-xl-items="7" data-lg-items="6"
                        data-md-items="5" data-sm-items="4" data-xs-items="3" data-margin="5" data-dots="false"
                        data-arrows="true">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <a href="./author.html" class="author-card">
                                    <img src="./assets/images/authors/1.jpg">
                                    <p class="author-card-text">মিজানুর রহমান আজহারি</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./author.html" class="author-card">
                                    <img src="./assets/images/authors/2.jpg">
                                    <p class="author-card-text">আরিফ আজাদ</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./author.html" class="author-card">
                                    <img src="./assets/images/authors/3.jpg">
                                    <p class="author-card-text">আরিফ আজাদ</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./author.html" class="author-card">
                                    <img src="./assets/images/authors/4.jpg">
                                    <p class="author-card-text">আরিফ আজাদ</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./author.html" class="author-card">
                                    <img src="./assets/images/authors/5.jpg">
                                    <p class="author-card-text">আরিফ আজাদ</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./author.html" class="author-card">
                                    <img src="./assets/images/authors/6.jpg">
                                    <p class="author-card-text">আরিফ আজাদ</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./author.html" class="author-card">
                                    <img src="./assets/images/authors/2.jpg">
                                    <p class="author-card-text">আরিফ আজাদ</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./author.html" class="author-card">
                                    <img src="./assets/images/authors/1.jpg">
                                    <p class="author-card-text">মিজানুর রহমান আজহারি</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./author.html" class="author-card">
                                    <img src="./assets/images/authors/2.jpg">
                                    <p class="author-card-text">আরিফ আজাদ</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./author.html" class="author-card">
                                    <img src="./assets/images/authors/3.jpg">
                                    <p class="author-card-text">আরিফ আজাদ</p>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-arrow-btn swiper-button-prev">
                        <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                fill="#333333"></path>
                        </svg>
                    </div>
                    <div class="swiper-arrow-btn swiper-button-next">
                        <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                fill="#333333"></path>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Category Wise Products -->

    <div class="category-product-section pb-4">
        <div class="container">
            <div class="section-card pb-2">
                <div class="section-header mb-3">
                    <h3 class="section-title">আতর ও সুগন্ধি পণ্য</h3>
                    <a href="./category.html" class="section-link">সবগুলো দেখুন</a>
                </div>
                <div class="position-relative">
                    <div class="swiper carousel" data-items="2" data-xl-items="7" data-lg-items="6"
                        data-md-items="5" data-sm-items="3" data-xs-items="2" data-margin="5" data-dots="false"
                        data-arrows="true">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/9.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content pb-sm-3">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 1;">
                                                    <a href="./single-product.html">
                                                        আতর : ডানহিল রেড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 1;">
                                                    <a href="./author.html">Perfumance BD</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/10.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content pb-sm-3">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 1;">
                                                    <a href="./single-product.html">
                                                        আতর : হুগো টনিক
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 1;">
                                                    <a href="./author.html">Perfumance BD</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/11.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content pb-sm-3">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 1;">
                                                    <a href="./single-product.html">
                                                        আতর : গ্রিন অউদ
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 1;">
                                                    <a href="./author.html">Perfumance BD</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/10.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content pb-sm-3">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 1;">
                                                    <a href="./single-product.html">
                                                        আতর : ডানহিল রেড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 1;">
                                                    <a href="./author.html">Perfumance BD</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/12.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content pb-sm-3">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 1;">
                                                    <a href="./single-product.html">
                                                        আতর : হুগো টনিক
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 1;">
                                                    <a href="./author.html">Perfumance BD</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/13.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content pb-sm-3">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 1;">
                                                    <a href="./single-product.html">
                                                        আতর : গ্রিন অউদ
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 1;">
                                                    <a href="./author.html">Perfumance BD</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <div class="discount-badge">
                                                <span class="product-discount">45</span>
                                            </div>
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/14.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content pb-sm-3">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 1;">
                                                    <a href="./single-product.html">
                                                        আতর : ডানহিল রেড
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 1;">
                                                    <a href="./author.html">Perfumance BD</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/15.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content pb-sm-3">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 1;">
                                                    <a href="./single-product.html">
                                                        আতর : হুগো টনিক
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 1;">
                                                    <a href="./author.html">Perfumance BD</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-sm-2 p-1">
                                    <div class="product-card-wrapper">
                                        <div class="product-card">
                                            <figure class="product-card-image ratio" style="--bs-aspect-ratio: 130%">
                                                <a class="z-2" href="./single-product.html"></a>
                                                <img class="object-fit-contain" src="./assets/images/product/9.jpg"
                                                    alt="">
                                            </figure>
                                            <div class="product-card-content pb-sm-3">
                                                <h6 class="h6 product-card-title truncate-text" style="--lines: 1;">
                                                    <a href="./single-product.html">
                                                        আতর : গ্রিন অউদ
                                                    </a>
                                                </h6>
                                                <p class="product-card-author truncate-text" style="--lines: 1;">
                                                    <a href="./author.html">Perfumance BD</a>
                                                </p>
                                                <span class="product-card-price">
                                                    <del>
                                                        <span class="Price-amount">
                                                            600&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </del>
                                                    <ins>
                                                        <span class="Price-amount">462&nbsp;
                                                            <span class="Price-currencySymbol">৳</span>
                                                        </span>
                                                    </ins>
                                                </span>
                                            </div>
                                            <div class="product-card-action">
                                                <button type="button" class="btn btn-xs btn-cart">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-arrow-btn swiper-button-prev">
                        <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                fill="#333333"></path>
                        </svg>
                    </div>
                    <div class="swiper-arrow-btn swiper-button-next">
                        <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                fill="#333333"></path>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Category Wise Products -->

    <div class="category-section pb-4">
        <div class="container">
            <div class="section-card">
                <div class="section-header mb-3">
                    <h3 class="section-title">অন্যান্য পণ্য</h3>
                    <a href="./categories.html" class="section-link">সবগুলো দেখুন</a>
                </div>
                <div class="position-relative">
                    <div class="swiper carousel" data-items="2" data-xl-items="7" data-lg-items="6"
                        data-md-items="5" data-sm-items="3" data-xs-items="2" data-margin="20" data-dots="false"
                        data-arrows="true">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <a href="./category.html" class="category-card2">
                                    <div class="category-card2-image ratio"
                                        style="--bs-aspect-ratio: 100%; width: 80px;">
                                        <img class="object-fit-contain" src="./assets/images/category/4.png"
                                            alt="">
                                    </div>
                                    <div class="category-card2-text">আতর</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="category-card2">
                                    <div class="category-card2-image ratio"
                                        style="--bs-aspect-ratio: 100%; width: 80px;">
                                        <img class="object-fit-contain" src="./assets/images/category/11.png"
                                            alt="">
                                    </div>
                                    <div class="category-card2-text">টি শার্ট</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="category-card2">
                                    <div class="category-card2-image ratio"
                                        style="--bs-aspect-ratio: 100%; width: 80px;">
                                        <img class="object-fit-contain" src="./assets/images/category/12.png"
                                            alt="">
                                    </div>
                                    <div class="category-card2-text">ঘড়ি</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="category-card2">
                                    <div class="category-card2-image ratio"
                                        style="--bs-aspect-ratio: 100%; width: 80px;">
                                        <img class="object-fit-contain" src="./assets/images/category/13.png"
                                            alt="">
                                    </div>
                                    <div class="category-card2-text">ব্যাগ</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="category-card2">
                                    <div class="category-card2-image ratio"
                                        style="--bs-aspect-ratio: 100%; width: 80px;">
                                        <img class="object-fit-contain" src="./assets/images/category/1.png"
                                            alt="">
                                    </div>
                                    <div class="category-card2-text">ছাতা</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="category-card2">
                                    <div class="category-card2-image ratio"
                                        style="--bs-aspect-ratio: 100%; width: 80px;">
                                        <img class="object-fit-contain" src="./assets/images/category/15.png"
                                            alt="">
                                    </div>
                                    <div class="category-card2-text">জায়নামায</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="category-card2">
                                    <div class="category-card2-image ratio"
                                        style="--bs-aspect-ratio: 100%; width: 80px;">
                                        <img class="object-fit-contain" src="./assets/images/category/2.png"
                                            alt="">
                                    </div>
                                    <div class="category-card2-text">বুকমার্ক</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="category-card2">
                                    <div class="category-card2-image ratio"
                                        style="--bs-aspect-ratio: 100%; width: 80px;">
                                        <img class="object-fit-contain" src="./assets/images/category/13.png"
                                            alt="">
                                    </div>
                                    <div class="category-card2-text">ব্যাগ</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="category-card2">
                                    <div class="category-card2-image ratio"
                                        style="--bs-aspect-ratio: 100%; width: 80px;">
                                        <img class="object-fit-contain" src="./assets/images/category/1.png"
                                            alt="">
                                    </div>
                                    <div class="category-card2-text">ছাতা</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="category-card2">
                                    <div class="category-card2-image ratio"
                                        style="--bs-aspect-ratio: 100%; width: 80px;">
                                        <img class="object-fit-contain" src="./assets/images/category/15.png"
                                            alt="">
                                    </div>
                                    <div class="category-card2-text">জায়নামায</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./category.html" class="category-card2">
                                    <div class="category-card2-image ratio"
                                        style="--bs-aspect-ratio: 100%; width: 80px;">
                                        <img class="object-fit-contain" src="./assets/images/category/2.png"
                                            alt="">
                                    </div>
                                    <div class="category-card2-text">বুকমার্ক</div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-arrow-btn swiper-button-prev">
                        <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                fill="#333333"></path>
                        </svg>
                    </div>
                    <div class="swiper-arrow-btn swiper-button-next">
                        <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                fill="#333333"></path>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Categories -->

    <div class="brand-section pb-4">
        <div class="container">
            <div class="section-card">
                <div class="section-header mb-3">
                    <h3 class="section-title">ব্র্যান্ডসমূহ</h3>
                    <a href="./brands.html" class="section-link">সবগুলো দেখুন</a>
                </div>
                <div class="position-relative mb-3">
                    <div class="swiper carousel" data-items="2" data-xl-items="7" data-lg-items="6"
                        data-md-items="5" data-sm-items="3" data-xs-items="2" data-margin="20" data-dots="false"
                        data-arrows="true">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <a href="./brand.html" class="brand-card">
                                    <div class="brand-card-image ratio" style="--bs-aspect-ratio: 100%;">
                                        <img class="object-fit-contain" src="./assets/images/brand/1.jpg"
                                            alt="">
                                    </div>
                                    <div class="brand-card-text">Perfumance BD</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./brand.html" class="brand-card">
                                    <div class="brand-card-image ratio" style="--bs-aspect-ratio: 100%;">
                                        <img class="object-fit-contain" src="./assets/images/brand/2.jpg"
                                            alt="">
                                    </div>
                                    <div class="brand-card-text">Muslim Day Planner</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./brand.html" class="brand-card">
                                    <div class="brand-card-image ratio" style="--bs-aspect-ratio: 100%;">
                                        <img class="object-fit-contain" src="./assets/images/brand/3.png"
                                            alt="">
                                    </div>
                                    <div class="brand-card-text">Azan Lifestyle</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./brand.html" class="brand-card">
                                    <div class="brand-card-image ratio" style="--bs-aspect-ratio: 100%;">
                                        <img class="object-fit-contain" src="./assets/images/brand/4.jpg"
                                            alt="">
                                    </div>
                                    <div class="brand-card-text">BEARDBROS</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./brand.html" class="brand-card">
                                    <div class="brand-card-image ratio" style="--bs-aspect-ratio: 100%;">
                                        <img class="object-fit-contain" src="./assets/images/brand/5.jpg"
                                            alt="">
                                    </div>
                                    <div class="brand-card-text">Hamnah</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./brand.html" class="brand-card">
                                    <div class="brand-card-image ratio" style="--bs-aspect-ratio: 100%;">
                                        <img class="object-fit-contain" src="./assets/images/brand/7.png"
                                            alt="">
                                    </div>
                                    <div class="brand-card-text">Afdal</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./brand.html" class="brand-card">
                                    <div class="brand-card-image ratio" style="--bs-aspect-ratio: 100%;">
                                        <img class="object-fit-contain" src="./assets/images/brand/6.jpg"
                                            alt="">
                                    </div>
                                    <div class="brand-card-text">MabiY Shop</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./brand.html" class="brand-card">
                                    <div class="brand-card-image ratio" style="--bs-aspect-ratio: 100%;">
                                        <img class="object-fit-contain" src="./assets/images/brand/8.jpg"
                                            alt="">
                                    </div>
                                    <div class="brand-card-text">Deen</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./brand.html" class="brand-card">
                                    <div class="brand-card-image ratio" style="--bs-aspect-ratio: 100%;">
                                        <img class="object-fit-contain" src="./assets/images/brand/9.jpg"
                                            alt="">
                                    </div>
                                    <div class="brand-card-text">MabiY Shop</div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="./brand.html" class="brand-card">
                                    <div class="brand-card-image ratio" style="--bs-aspect-ratio: 100%;">
                                        <img class="object-fit-contain" src="./assets/images/brand/10.jpg"
                                            alt="">
                                    </div>
                                    <div class="brand-card-text">Deen</div>
                                </a>
                            </div>
                        </div>
                        <div class="swiper-arrow-btn swiper-button-prev">
                            <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                    fill="#333333"></path>
                            </svg>
                        </div>
                        <div class="swiper-arrow-btn swiper-button-next">
                            <svg width="11" height="16" viewBox="0 0 11 16" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M9.7637 0.333588C10.1815 0.741772 10.1815 1.42208 9.77223 1.83026L3.5905 7.99554L9.7637 14.1608C10.1815 14.5775 10.1815 15.2493 9.7637 15.666C9.3459 16.0827 8.67231 16.0827 8.25451 15.666L1.16897 8.59931C0.836434 8.26767 0.836434 7.73192 1.16897 7.40027L8.25451 0.333588C8.67231 -0.0831001 9.3459 -0.0831001 9.7637 0.333588Z"
                                    fill="#333333"></path>
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Brands -->
@endsection
