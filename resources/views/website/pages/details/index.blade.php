@extends('website.layouts.master')
@section('title')
Chi Tiết Sản Phẩm
@endsection
@section('content')
<!-- main ditail -->
<div class="container-details">
    <div class="detail-product">
        <div class="bg-product1">
            <!-- Swiper -->
            <div class="swiper mySwiper_detail1">
                <div class="swiper-wrapper">
                    @if (count($product->images))
                        @foreach($product->images as $image)
                            <div class="swiper-slide sub-photo">
                                <img src="{{ asset('images/product/'.$image->imgs_product)}}" alt="product">
                            </div>
                        @endforeach
                    @else
                        <div class="swiper-slide sub-photo">
                            <img src="{{ asset('images/product/'.$product->image)}}" alt="product">
                        </div>
                    @endif
                </div>
            </div>
            <div class="product-info">
                <h1>
                    {{$product->name}}
                </h1>
                <div class="star">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star-half-stroke"></i>
                </div>
                <div class="price-detail">
                    <span>
                        Gia:
                    </span>
                    <span>
                        {{number_format($product->price, 0, ',', '.')}}
                        <span>
                            VND
                        </span>
                    </span>
                </div>
                <div class="list-img-product">
                    <div thumbsSlider="" class="swiper mySwiper01">
                        <div class="swiper-wrapper">
                            @if (count($product->images))
                            @foreach($product->images as $image)
                                <div class="swiper-slide sub-photo">
                                    <img src="{{ asset('images/product/'.$image->imgs_product)}}" alt="product">
                                </div>
                            @endforeach
                        @endif
                        </div>
                    </div>
                </div>
                <h4>Chọn size</h4>
                <div class="size">
                    <div class="size-box">
                        <span>
                            S
                        </span>
                    </div>
                    <div class="size-box">
                        <span>
                            M
                        </span>
                    </div>
                    <div class="size-box">
                        <span>
                            L
                        </span>
                    </div>
                    <div class="size-box">
                        <span>
                            XL
                        </span>
                    </div>
                    <div class="size-box">
                        <span>
                            2XL
                        </span>
                    </div>
                </div>
                <h4>
                    So luong
                </h4>
                <div class="number">
                    <div class="buttons_added">
                        <input class="minus is-form" type="button" value="-">
                        <input aria-label="quantity" class="input-qty" max="100" min="1" name="" type="number" value="1">
                        <input class="plus is-form" type="button" value="+">
                    </div>
                </div>
                <div class="bottom">
                    <botton class="hero-btm">
                        <a href="#">
                            Mua Ngay
                        </a>
                    </botton>
                    <botton class="hero-btm">
                        <a href="#">
                            Thêm Vào Giỏ Hàng
                            <i class="fa-solid fa-cart-shopping"></i>
                        </a>
                    </botton>
                </div>

            </div>
        </div>
    </div>
    <div class="detail-product">
        <div class="bg-product-content">
            <div class="details-product_content">
                <h2>
                    {{$product->name}}
                </h2>
                <div class="nd-product-content">
                    <div class="product-content1">
                       {!!$product->description!!}
                    </div>
                    <div class="product-content2">
                        <img src="{{ asset('images/product/'.$image->imgs_product)}}" alt="product">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- block product suggest-->
    <div class="block-product">
        <div class="container">
            <div class="slider-product">
                <div class="box-title-slider">
                    <h2 class="tile-slider">
                        Sản Phẩm Liên Quan
                    </h2>
                    <span class="slider-annotate">
                        <a href="{{route('product')}}">
                            xem thêm >
                        </a>
                    </span>
                </div>
                <div class="swiper mySwiper-product slider-pro">
                    <div class="swiper-wrapper">
                    @foreach($related_products as $related_product)
                        <div class="swiper-slide">
                            <div class="list-item">
                                <a href="{{route('product.show', $related_product->id)}}">
                                    <div class="item-image">
                                        <img src="{{ asset('images/product/' .$related_product->image)}}"  width="228" height="343" alt="product">
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
                                                {{$related_product->name}}
                                            </h4>
                                        </div>
                                        <div class="box-price">
                                            <div class="price">
                                                <span class="price-number">
                                                {{number_format($related_product->price, 0, ',', '.')}}
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
    <!-- end suggest product -->
</div>
<!-- end main ditail -->
@endsection