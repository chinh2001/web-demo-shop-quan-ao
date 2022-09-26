@extends('website.layouts.master')
@section('title')
Các Sản Phẩm
@endsection
@section('content')
<!-- main product -->
<div class="container_main_product">
    <div class="block-banner">
        <div class="container size-banner">
            <div class="box-banner">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide bg-web">
                            <a href="#">
                                <img src="{{ asset('images/banner/depositphotos_117785598-stock-illustration-flash-sale-banner-design-template.jpg')}}" alt="img-banner">
                            </a>
                        </div>
                        <div class="swiper-slide bg-web">
                            <a href="#">
                                <img src="{{ asset('images/banner/depositphotos_312312970-stock-illustration-veterans-day-sale-banner-design.jpg')}}" alt="img-banner">
                            </a>
                        </div>
                        <div class="swiper-slide bg-web">
                            <a href="#">
                                <img src="{{ asset('images/banner/9vZ2AB1.png')}}" alt="img-banner">
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

    <div class="main-products">
        <!-- product -->
        <div class="block-products">
            <div class="block-filter" id="finter_product">
                <div class="header-filter">
                    <h3>
                        <i class="fa-solid fa-filter"></i>
                        Bộ Lọc Tìm
                    </h3>
                </div>
                <!--filter 1 -->
                <div class="filter-directory">
                    <div class="filter-group-name">
                        <h4>
                            Theo danh mục
                        </h4>
                    </div>
                    <div class="list-filter-directory">
                        <ul>
                            <li class="checkbox-filter">
                                <label class="control-checkbox-filter">
                                    <input type="checkbox" name="" value="">
                                    <span class="lable-checkbox-filter">
                                        áo phông
                                    </span>
                                </label>
                            </li>
                            <li class="checkbox-filter">
                                <label class="control-checkbox-filter">
                                    <input type="checkbox" name="" value="">
                                    <span class="lable-checkbox-filter">
                                        áo hoodie
                                    </span>
                                </label>
                            </li>
                            <li class="checkbox-filter">
                                <label class="control-checkbox-filter">
                                    <input type="checkbox" name="" value="">
                                    <span class="lable-checkbox-filter">
                                        áo jacket
                                    </span>
                                </label>
                            </li>
                            <li class="checkbox-filter">
                                <label class="control-checkbox-filter">
                                    <input type="checkbox" name="" value="">
                                    <span class="lable-checkbox-filter">
                                        áo sweater
                                    </span>
                                </label>
                            </li>
                            <li class="checkbox-filter">
                                <label class="control-checkbox-filter">
                                    <input type="checkbox" name="" value="">
                                    <span class="lable-checkbox-filter">
                                        quần jogger
                                    </span>
                                </label>
                            </li>
                            <li class="checkbox-filter">
                                <label class="control-checkbox-filter">
                                    <input type="checkbox" name="" value="">
                                    <span class="lable-checkbox-filter">
                                        quần short
                                    </span>
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--filter 2 -->
                <div class="filter-directory">
                    <div class="filter-group-name">
                        <h4>
                            Nơi Bán
                        </h4>
                    </div>
                    <div class="list-filter-directory">
                        <ul>
                            <li class="checkbox-filter">
                                <label class="control-checkbox-filter">
                                    <input type="checkbox" name="" value="">
                                    <span class="lable-checkbox-filter">
                                        Hà Nội
                                    </span>
                                </label>
                            </li>
                            <li class="checkbox-filter">
                                <label class="control-checkbox-filter">
                                    <input type="checkbox" name="" value="">
                                    <span class="lable-checkbox-filter">
                                        Hải Dương
                                    </span>
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- filter 3 -->
                <div class="filter-directory">
                    <div class="filter-group-name">
                        <h4>
                            Thương hiệu
                        </h4>
                    </div>
                    <div class="list-filter-directory">
                        <ul>
                            <li class="checkbox-filter">
                                <label class="control-checkbox-filter">
                                    <input type="checkbox" name="" value="">
                                    <span class="lable-checkbox-filter">
                                        adidas
                                    </span>
                                </label>
                            </li>
                            <li class="checkbox-filter">
                                <label class="control-checkbox-filter">
                                    <input type="checkbox" name="" value="">
                                    <span class="lable-checkbox-filter">
                                        champion
                                    </span>
                                </label>
                            </li>
                            <li class="checkbox-filter">
                                <label class="control-checkbox-filter">
                                    <input type="checkbox" name="" value="">
                                    <span class="lable-checkbox-filter">
                                        Nike
                                    </span>
                                </label>
                            </li>
                            <li class="checkbox-filter">
                                <label class="control-checkbox-filter">
                                    <input type="checkbox" name="" value="">
                                    <span class="lable-checkbox-filter">
                                        stussy
                                    </span>
                                </label>
                            </li>
                            <li class="checkbox-filter">
                                <label class="control-checkbox-filter">
                                    <input type="checkbox" name="" value="">
                                    <span class="lable-checkbox-filter">
                                        Zara
                                    </span>
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="box-btn-filter">
                    <button class="btn-filter">
                        xóa tất cả
                    </button>
                </div>
            </div>
            <div class="block-list-pr">
                <div class="bar-arrange-product">
                    <span class="lable-bar-arrange sub_lable_none">
                        Sắp xếp theo
                    </span>
                    <div class="bar-sort-by-options">
                        <div class="sort-by-option-nam">
                            <button class="sort-nam active-btn" id="btn-sort-nam">
                                Dành cho Nam
                            </button>
                        </div>
                        <div class="sort-by-option-nu">
                            <button class="sort-nu" id="btn-sort-nu">
                                Dành cho nữ
                            </button>
                        </div>
                        <div class="sort-by-option-up-down">
                            <select name="" id="sort-pr">
                                <option value="0">
                                    giá: tăng dần
                                </option>
                                <option value="1">
                                    giá: giảm dần
                                </option>
                            </select>
                        </div>
                    </div>
                    <div class="filter_product_mobile" id="toggle_finter_in_mobile">
                        <span class="lable-bar-arrange opent_filter" id="icon_open_f">
                            bộ lọc: <i class="fa-solid fa-sort"></i>
                        </span>
                        <span class="close_filter" id="close_f">
                            <i class="fa-brands fa-xbox"></i>
                        </span>
                    </div>
                </div>
                <div class="list-products-filter">
                    <div class="list-all-product" id="test11">
                        @foreach($products as $product)
                        <div class="item-product">
                            <a href="{{route('product.show', $product->id)}}">
                                <div class="item-image">
                                    <img src="{{ asset('images/product/')}}/{{$product->image}}" height="100%" alt="product">
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
                                            {{$product->name}}
                                        </h4>
                                    </div>
                                    <div class="box-price">
                                        <div class="price">
                                            <span class="price-number">
                                                {{number_format($product->price, 0, ',', '.')}}
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
                        @endforeach
                    </div>
                </div>
                <div class="box_navigation">
                    <span id="transfer-angle-left">
                            <i class="fa-solid fa-angle-left"></i>
                    </span>
                    <span>
                        {{ $products->links()}}
                    </span>
                    <span id="transfer-angle-right">
                            <i class="fa-solid fa-angle-right"></i>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end main product -->
@endsection