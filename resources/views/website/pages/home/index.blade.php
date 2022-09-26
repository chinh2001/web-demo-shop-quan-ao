@extends('website.layouts.master')
@section('title')
Trang chủ
@endsection
@section('content')
<div class="main-content">
    <!-- Banner -->
    <div class="block-banner">
        <div class="container size-banner">
            <div class="box-banner">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide bg-web">
                            <a href="#">
                                <img src="{{ asset('images/banner/deepali-shriwal-fashion-banner-design_result.jpg')}}" alt="img-banner">
                            </a>
                        </div>
                        <div class="swiper-slide bg-web">
                            <a href="#">
                                <img src="{{ asset('images/banner/02cfcffac595c832c514d58704cd82ce.jpg')}}" alt="img-banner">
                            </a>
                        </div>
                        <div class="swiper-slide bg-web">
                            <a href="#">
                                <img src="{{ asset('images/banner/sb_1590145187_800.jpg')}}" alt="img-banner">
                            </a>
                        </div>
                    </div>
                    <div class="swiper-button-next style-wei"></div>
                    <div class="swiper-button-prev style-wei"></div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Banner -->
    <!-- block trademark -->
    <div class="block-trademark" id="link-trademark">
        <div class="container">
            <div class="block-trademark-content">
                <div class="box-title-trademark">
                    <h2 class="tile-slider">
                        thương hiệu nổi tiếng
                    </h2>
                    <span>
                        shop với những sản phẩm chính hãng
                    </span>
                </div>
                <div class="list-trademark">
                    <div class="swiper mySwiper-trademark">
                        <div class="swiper-wrapper" style="flex-direction: row;">
                            @foreach($brands as $brand)
                            <div class="swiper-slide trademark-list">
                                <a href="#">
                                    <div class="img-trademark">
                                        <img src="{{ asset('images/brands/'.$brand->image)}}" alt="item-trademark">
                                    </div>
                                </a>
                            </div>
                            @endforeach
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end block trademark -->
    <!-- block category -->
    <div class="block-category">
        <div class="container">
            <div class="blcok-category-content">
                <div class="box-title-slider">
                    <h2 class="tile-slider tile-slider-category">
                        danh mục sản phẩm
                    </h2>
                    <span class="slider-annotate">
                        <a href="{{ route('product')}}">
                            xem tất cả sản phẩm >
                        </a>
                    </span>
                </div>
                <div class="list-category">
                    @foreach($categories1 as $category1)
                    <div class="item-category">
                            <a href="{{route('category', $category1->id)}}">
                                <div class="image-category">
                                    <img src="{{ asset('images/category/'.$category1->image)}}" alt="category">
                                </div>
                                <div class="title-catrgoey">
                                    <h3>
                                        {{$category1->name}}
                                    </h3>
                                </div>
                            </a>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    <!-- end block category -->
    <!-- block product hot-->
    <div class="block-product">
        <div class="container">
            <div class="slider-product">
                <div class="box-title-slider">
                    <h2 class="tile-slider">
                        Sản Phẩm mới 
                        <img src="{{ asset('images/icon/newff.gif')}}" alt="icon-new">
                    </h2>
                    <span class="slider-annotate" style="max-height: 42px">
                        <a href="{{route('product')}}">
                            xem thêm >
                        </a>
                    </span>
                </div>
                <div class="swiper mySwiper-product slider-pro">
                    <div class="swiper-wrapper">
                        @foreach($product_news as $product_new)
                        <div class="swiper-slide">
                            <div class="list-item">
                                <a href="{{route('product.show', $product_new->id)}}">
                                    <div class="item-image">
                                        <img src="{{ asset('images/product/' .$product_new->image)}}"  width="228" height="343" alt="product">
                                        <div class="box-add-cart">
                                            <button class="add-cart">
                                                <i class="fa-solid fa-cart-plus"></i>
                                                Mua Hàng
                                            </button>
                                            <button class="add-cart">
                                                <i class="fa-solid fa-magnifying-glass"></i>
                                                chi tiết
                                            </button>
                                        </div>
                                    </div>
                                    <div class="content-product">
                                        <div class="title-item">
                                            <h4>
                                                {{$product_new->name}}
                                            </h4>
                                        </div>
                                        <div class="box-price">
                                            <div class="price">
                                                <span class="price-number">
                                                {{number_format($product_new->price, 0, ',', '.')}}
                                                </span>
                                                <span class="currency">
                                                    ₫
                                                </span>
                                            </div>
                                            <span class="address">
                                                Hà Nội
                                            </span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end new product -->
    <!-- block selling-->
    <div class="block-product">
        <div class="container">
            <div class="slider-product">
                <div class="box-title-slider">
                    <h2 class="tile-slider">
                        Sản Phẩm Bán chạy
                    </h2>
                    <span class="slider-annotate">
                        <a href="{{ route('product')}}">
                            xem thêm >
                        </a>
                    </span>
                </div>
                <div class="swiper mySwiper-product slider-pro">
                    <div class="swiper-wrapper">
                    @foreach($product_burneds as $product_burned)
                        <div class="swiper-slide">
                            <div class="list-item">
                                <a href="{{route('product.show', $product_burned->id)}}">
                                    <div class="item-image">
                                        <img src="{{ asset('images/product/'.$product_burned->image)}}" width="228" height="343" alt="product">
                                        <div class="box-add-cart">
                                            <button class="add-cart">
                                                <i class="fa-solid fa-cart-plus"></i>
                                                Mua Hàng
                                            </button>
                                            <button class="add-cart">
                                                <i class="fa-solid fa-magnifying-glass"></i>
                                                chi tiết
                                            </button>
                                        </div>
                                    </div>
                                    <div class="content-product">
                                        <div class="title-item">
                                            <h4>
                                                {{$product_burned->name}}
                                            </h4>
                                        </div>
                                        <div class="box-price">
                                            <div class="price">
                                                <span class="price-number">
                                                    {{number_format($product_burned->price, 0, ',', '.')}}
                                                </span>
                                                <span class="currency">
                                                    ₫
                                                </span>
                                            </div>
                                            <span class="address">
                                                Hà Nội
                                            </span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end selling -->
    <!-- block hot-->
    <div class="block-product">
        <div class="container">
            <div class="slider-product">
                <div class="box-title-slider">
                    <h2 class="tile-slider">
                        Sản Phẩm hot
                    </h2>
                    <span class="slider-annotate">
                        <a href="{{ route('product')}}">
                            xem thêm >
                        </a>
                    </span>
                </div>
                <div class="swiper mySwiper-product slider-pro">
                    <div class="swiper-wrapper">
                    @foreach($product_hots as $product_hot)
                        <div class="swiper-slide">
                            <div class="list-item">
                                <a href="{{route('product.show', $product_hot->id)}}">
                                    <div class="item-image">
                                        <img src="{{ asset('images/product/'.$product_hot->image)}}" width="228" height="343" alt="product">
                                        <div class="box-add-cart">
                                            <button class="add-cart">
                                                <i class="fa-solid fa-cart-plus"></i>
                                                Mua Hàng
                                            </button>
                                            <button class="add-cart">
                                                <i class="fa-solid fa-magnifying-glass"></i>
                                                chi tiết
                                            </button>
                                        </div>
                                    </div>
                                    <div class="content-product">
                                        <div class="title-item">
                                            <h4>
                                                {{$product_hot->name}}
                                            </h4>
                                        </div>
                                        <div class="box-price">
                                            <div class="price">
                                                <span class="price-number">
                                                    {{number_format($product_hot->price, 0, ',', '.')}}
                                                </span>
                                                <span class="currency">
                                                    ₫
                                                </span>
                                            </div>
                                            <span class="address">
                                                Hà Nội
                                            </span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end hot -->
</div>
@endsection

