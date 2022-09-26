@extends('website.layouts.master')
@section('title')
Giỏi Hàng
@endsection
@section('content')
<!-- maine -->
<div class="main-cart">
    <div class="header_cart">
        <h2 class="title_cart">
            Giỏ Hàng Của Bạn
        </h2>
        <span class="count_item_pr">
            ( 1 Sản Phẩm )
        </span>
    </div>
    <div class="col-main cart_desktop_page cart_page">
        <div class="page_cart">
            <form action="" method="post" novalidate class="margin-bottom-0">
                <div class="bg-scroll">
                    <div class="cart-thead">
                        <div class="lable_cart center col-md-3">
                            <span>
                                Ảnh sản phẩm
                            </span>
                        </div>
                        <div class="lable_cart center col-md-6">
                            <span>
                                Tên Sản Phẩm
                            </span>
                        </div>
                        <div class="lable_cart center col-md-2">
                            <span>
                                Đơn Giá
                            </span>
                        </div>
                        <div class="lable_cart center col-md-4">
                            <span>
                                Số lượng
                            </span>
                        </div>
                        <div class="lable_cart center col-md-2">
                            <span>
                                Thành tiền
                            </span>
                        </div>
                    </div>
                    <div class="cart-tbody">
                        <div class="item-cart">
                            <div class="lable_cart center col-md-3">
                                <a href="#">
                                    <img src="http://127.0.0.1:8000/images/product/781e8c8e795346909907ad120147af6e_9366_result.jpg" alt="product">
                                </a>
                            </div>
                            <div class="lable_cart col-md-6 box_name-item">
                                <h3 class="product_name">
                                    Thức ăn cho chó Nature Bridge 1.5kg Hạt cho chó Poodle - CutePets
                                </h3>
                                <span class="variant-title">
                                    Dưới 12 tháng
                                </span>
                                <a href="#" class="button remove-item remove-item-cart">
                                    <span>
                                        <i class="fa-solid fa-trash-can"></i>
                                        <span>
                                            Xóa sản phẩm
                                        </span>
                                    </span>
                                </a>
                            </div>
                            <div class="lable_cart center col-md-2">
                                <span class="cart_price">
                                    375.000₫
                                </span>
                            </div>
                            <div class="lable_cart center col-md-4">
                                <div class="number">
                                    <div class="buttons_added">
                                        <input class="minus is-form" type="button" value="-">
                                        <input aria-label="quantity" class="input-qty" max="100" min="1" name="" type="number" value="1">
                                        <input class="plus is-form" type="button" value="+">
                                    </div>
                                </div>
                            </div>
                            <div class="lable_cart center col-md-2">
                                <span class="cart_price ">
                                    375.000₫
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="cart-collaterals cart_submit">
            <div class="total_details">
                <table>
                    <tr>
                        <th>
                            Tạm Tính:
                        </th>
                        <td>
                            375.000₫
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Thành Tiền:
                        </th>
                        <td>
                            <span class="price_root">
                                375.000₫
                            </span>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="bnt_cart">
                <button class="bnt_buy_more" title="Tiếp tục mua hàng">
                    <a href="#">
                        Tiếp tục mua hàng
                    </a>
                </button>
                <button class="bnt_payment" title="Thực hiện thanh toán">
                    <a href="#">
                        Thực hiện thanh toán
                    </a>
                </button>
            </div>
        </div>
    </div>
    <div class="cart_desktop_mobile">
        <div class="page_cart">
            <form action="" method="post" novalidate class="margin-bottom-0">
                <div class="bg-scroll">
                    <div class="cart-tbody">
                        <div class="item-cart">
                            <div class="group_name-img">
                                <div class="lable_cart center col-md-3">
                                    <a href="#">
                                        <img src="#" alt="product">
                                    </a>
                                </div>
                                <div class="lable_cart col-md-6 box_name-item">
                                    <h3 class="product_name">
                                        Thức ăn cho chó Nature Bridge 1.5kg Hạt cho chó Poodle - CutePets
                                    </h3>
                                    <span class="variant-title">
                                        Dưới 12 tháng
                                    </span>
                                    <p href="#" class="button remove-item remove-item-cart">
                                        <span>
                                            Giá:
                                        </span>
                                        <span>
                                            375.000₫
                                        </span>
                                    </p>
                                </div>
                            </div>
                            <div class="lable_cart center col-md-4">
                                <div class="number">
                                    <div class="buttons_added">
                                        <input class="minus is-form" type="button" value="-">
                                        <input aria-label="quantity" class="input-qty" max="100" min="1" name="" type="number" value="1">
                                        <input class="plus is-form" type="button" value="+">
                                    </div>
                                </div>
                                <div class="delete_item">
                                    <a href="#">
                                        Xóa
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bnt_cart">
                        <button class="bnt_buy_more" title="Tiếp tục mua hàng">
                            <a href="#">
                                Tiếp tục mua hàng
                            </a>
                        </button>
                        <button class="bnt_payment" title="Thực hiện thanh toán">
                            <a href="#">
                                Thực hiện thanh toán
                            </a>
                        </button>
                        <div class="total-money_mb">
                            <span>
                                Tổng tiền
                            </span>
                            <span class="price_root">
                                375.000₫
                            </span>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- end maine -->
@endsection