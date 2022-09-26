@extends('website.layouts.master')
@section('title')
tin tức
@endsection
@section('content')
<!-- main news -->
<article id="blog" class="padding-block">
    <div class="container blog-section">
        <div class="title-section">
                Góc Tư Vấn Mặc Đẹp
            </div>
            <div class="row_new row-cols-2 row-cols-lg-4 gy-4">
                <div class="col-12">
                    <div class="article-big">
                        <div class="row_new align-items-center mx-0">
                            <div class="col-lg-7 px-0">
                                <a href="{{ route('detail_new')}}"
                                    title="Chương trình Khách Hàng Thân Thiết 2021" class="d-block ratio ratio-16x9">
                                    <img loading="lazy"
                                        src="https://2sao.vietnamnetjsc.vn/images/2021/06/03/15/00/hotgirl-02.jpg"
                                        alt="Chương trình Khách Hàng Thân Thiết 2021">
                                </a>
                            </div>
                            <div class="col-lg-5 content-article-big">
                                <div class="d-flex justify-content-between">
                                    <a href="{{ route('detail_new')}}" class="article-category link text-decoration-none"
                                        title="MARC 2021">
                                        SHC 2022
                                    </a>
                                    <span class="article-date">
                                        04/01/2021
                                    </span>
                                </div>
                                <a href="{{ route('detail_new')}}"
                                    title="Chương trình Khách Hàng Thân Thiết 2021"
                                    class="article-title text-decoration-none">
                                    Tốp đồ bới nữ đẹp 2022 đang hót trend, tôn vinh vóc dáng của nàng
                                </a>
                                <p class="article-excerpt">
                                Để giúp bạn có thể dễ dàng lựa chọn cho mình bộ đồ bơi phù hợp nhất, MARC đã tổng hợp TOP đồ bơi nữ đẹp 2022 dưới đây với...
                                </p>
                                <a href="{{ route('detail_new')}}"
                                    title="Chương trình Khách Hàng Thân Thiết 2021" class="link">
                                    Đọc tin ngay
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="article-item col">
                    <a href="{{ route('detail_new')}}" title="DEAL ĐỒNG GIÁ SHOPPING THẢ GA - Đầm 295K" class="d-block ratio ratio-1x1">
                        <img loading="lazy"
                            src="//file.hstatic.net/1000197303/article/dam295_fb_cover_900x900__2__633174ed95ca4097b3433101bdd788c2_grande.jpg"
                            alt="DEAL ĐỒNG GIÁ SHOPPING THẢ GA - Đầm 295K">
                    </a>
                    <div class="article-published d-flex flex-wrap justify-content-between">
                        <a href="{{ route('detail_new')}}" class="order-1 order-xl-0 article-category link text-decoration-none"
                            title="MARC 2021">SHC 2022
                        </a>
                        <span class="article-date">29/04/2020

                        </span>
                    </div>
                    <a href="{{ route('detail_new')}}" title="DEAL ĐỒNG GIÁ SHOPPING THẢ GA - Đầm 295K"
                        class="article-title text-decoration-none">
                        DEAL ĐỒNG GIÁ SHOPPING THẢ GA - Đầm 295K
                    </a>
                    <p class="article-excerpt">Từ 4/5 đến hết ngày 10/5/2020, SHC tặng nàng một deal hot hơn cả mùa hè:
                        rất nhiều mẫu đầm của SHC được bán với giá ưu đãi chỉ&nbsp;295K. Nàng...
                    </p>
                    <a href="javascript:"onclick="window.location.href='{{route('detail_new')}}'"
                        title="DEAL ĐỒNG GIÁ SHOPPING THẢ GA - Đầm 295K" class="link">
                        Đọc tin ngay
                    </a>
                </div>
                <div class="article-item col">
                    <a href="#" title="THOẢI MÁI SHOPPING – KHÔNG LO PHÍ SHIP" class="d-block ratio ratio-1x1">
                        <img loading="lazy"
                            src="//file.hstatic.net/1000197303/article/post_a441021b766c41c79cd818f9e78fa2c8_ff52d9451d43496d8b8e682cfb76830b_grande.jpg"
                            alt="THOẢI MÁI SHOPPING – KHÔNG LO PHÍ SHIP">
                    </a>
                    <div class="article-published d-flex flex-wrap justify-content-between">
                        <a href="#" class="order-1 order-xl-0 article-category link text-decoration-none"
                            title="MARC 2021">
                            SHC 2022
                        </a>
                        <span class="article-date">
                            06/02/2020

                        </span>
                    </div>
                    <a href="#"
                        title="THOẢI MÁI SHOPPING – KHÔNG LO PHÍ SHIP" class="article-title text-decoration-none">
                        THOẢI MÁI SHOPPING – KHÔNG LO PHÍ SHIP
                    </a>
                    <p class="article-excerpt">Trong thời điểm nóng bỏng thế này mọi người muốn mua sắm nhưng ngại ra
                        đường vì lo lắng về dịch bệnh. Hiểu được tâm lý đó của khách hàng,...</p>
                    <a href="javascript:"
                        onclick="window.location.href='#'"
                        title="THOẢI MÁI SHOPPING – KHÔNG LO PHÍ SHIP" class="link">Đọc tin ngay</a>
                </div>
                <div class="article-item col">
                    <a href="#"
                        title="BỐC THĂM 100% TRÚNG THƯỞNG DÀNH CHO KHÁCH HÀNG PLATINUM" class="d-block ratio ratio-1x1">
                        <img loading="lazy"
                            src="//file.hstatic.net/1000197303/article/cover_841025c7b7464633a6d643fff6f51924_37d13ad77ffa43b4a093b28c64d69404_grande.png"
                            alt="BỐC THĂM 100% TRÚNG THƯỞNG DÀNH CHO KHÁCH HÀNG PLATINUM">
                    </a>
                    <div class="article-published d-flex flex-wrap justify-content-between">
                        <a href="#" class="order-1 order-xl-0 article-category link text-decoration-none"
                            title="MARC 2021">
                            SHC 2022
                        </a>
                        <span class="article-date">
                            16/12/2019

                        </span>
                    </div>
                    <a href="#" title="BỐC THĂM 100% TRÚNG THƯỞNG DÀNH CHO KHÁCH HÀNG PLATINUM"
                        class="article-title text-decoration-none">
                        BỐC THĂM 100% TRÚNG THƯỞNG DÀNH CHO KHÁCH HÀNG PLATINUM
                    </a>
                    <p class="article-excerpt">Bắt đầu từ ngày 19/12/2019 SHC sẽ dành tặng món quà đặc biệt cho các nàng
                        Platinum trong dịp Christmas này. "ting ting" chính xác là tiếng tin nhắn mà...
                    </p>
                    <a href="javascript:"
                        onclick="window.location.href='#'"
                        title="BỐC THĂM 100% TRÚNG THƯỞNG DÀNH CHO KHÁCH HÀNG PLATINUM" class="link">
                        Đọc tin ngay
                    </a>
                </div>
                <div class="article-item col">
                    <a href="About.html" title="Mặc đẹp cùng SHC tháng 9 - Back to school" target="_blank"
                        class="d-block ratio ratio-1x1">
                        <img loading="lazy"
                            src="//file.hstatic.net/1000197303/article/thumnail_900x900-01_8a5dd0841da84b48ad93cc4b741e8cb6_ce1de2883dab4def85c949c576fbc040_grande.png"
                            alt="Mặc đẹp cùng SHC tháng 9 - Back to school">
                    </a>
                    <div class="article-published d-flex flex-wrap justify-content-between">
                        <a href="#" class="order-1 order-xl-0 article-category link text-decoration-none"
                            title="MARC 2021">
                            SHC 2022
                        </a>
                        <span class="article-date">
                            26/09/2019

                        </span>
                    </div>
                    <a href="About.html" title="Mặc đẹp cùng SHC tháng 9 - Back to school"
                        class="article-title text-decoration-none">
                        Mặc đẹp cùng SHC tháng 9 - Back to school
                    </a>
                    <p class="article-excerpt">
                        Với những nàng còn là sinh viên, việc chọn trang phục đến lớp mỗi ngày
                        sao cho cá tính nhưng phù hợp với hoàn cảnh thường khiến các nàng phải...
                    </p>
                    <a href="javascript:" onclick="window.location.href='About.html'"
                        title="Mặc đẹp cùng SHC tháng 9 - Back to school" class="link">
                        Đọc tin ngay
                    </a>
                </div>
            </div>
            <div class="title-section">
               Tin Tức Nhà SHC 2022
            </div>
            <div class="row_new row-cols-2 row-cols-lg-4 gy-4">
                <div class="col-12">
                    <div class="article-big">
                        <div class="row_new align-items-center mx-0">
                            <div class="col-lg-7 px-0">
                                <a href="{{ route('detail_new')}}"
                                    title="Chương trình Khách Hàng Thân Thiết 2021" class="d-block ratio ratio-16x9">
                                    <img loading="lazy"
                                        src="https://file.hstatic.net/1000197303/article/crm_cover3_567102e8988b4f338256179ceb3a7418.jpg"
                                        alt="Chương trình Khách Hàng Thân Thiết 2021">
                                </a>
                            </div>
                            <div class="col-lg-5 content-article-big">
                                <div class="d-flex justify-content-between">
                                    <a href="{{ route('detail_new')}}" class="article-category link text-decoration-none"
                                        title="MARC 2021">
                                        SHC 2022
                                    </a>
                                    <span class="article-date">
                                        04/01/2021
                                    </span>
                                </div>
                                <a href="{{ route('detail_new')}}"
                                    title="Chương trình Khách Hàng Thân Thiết 2021"
                                    class="article-title text-decoration-none">
                                    Chương trình Khách Hàng Thân Thiết 2021
                                </a>
                                <p class="article-excerpt">
                                    Để cảm ơn sự ủng hộ và yêu thích của bạn đối với SHC
                                    Fashion&nbsp;và chào đón năm 2022&nbsp;đầy hứng khởi,&nbsp;MARC cập nhật lại chương
                                    trình khách hàng thân thiết...
                                </p>
                                <a href="{{ route('detail_new')}}"
                                    title="Chương trình Khách Hàng Thân Thiết 2021" class="link">
                                    Đọc tin ngay
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="article-item col">
                    <a href="{{ route('detail_new')}}" title="TƯNG BỪNG KHAI TRƯƠNG TẠI SC VIVOCITY" class="d-block ratio ratio-1x1">
                        <img src="//file.hstatic.net/1000197303/article/must_have_3_1x1_04c44e77964849c58d93ae1d26c667ff_69a150c8e7244f9d8fe21839dff57fa5_grande.jpg"
                            alt="TƯNG BỪNG KHAI TRƯƠNG TẠI SC VIVOCITY">
                    </a>
                    <div class="article-published d-flex flex-wrap justify-content-between">
                        <a href="{{ route('detail_new')}}" class="order-1 order-xl-0 article-category link text-decoration-none"
                            title="MARC 2021">
                            SHC 2022
                        </a>
                        <span class="article-date">
                            02/06/2020
                        </span>
                    </div>
                    <a href="{{ route('detail_new')}}" title="TƯNG BỪNG KHAI TRƯƠNG TẠI SC VIVOCITY"
                        class="article-title text-decoration-none">
                        TƯNG BỪNG KHAI TRƯƠNG TẠI SC VIVOCITY
                    </a>
                    <p class="article-excerpt">Các nàng ơi vậy là SHC đã chính thức có mặt tại SC
                        VivoCity&nbsp;😍&nbsp;Hy vọng đây sẽ là một địa điểm mua sắm ưa thích mới của các
                        nàng&nbsp;nhé!💥&nbsp;Nhân dịp...
                    </p>
                    <a href="{{ route('detail_new')}}" onclick="window.location.href='#'"
                        title="TƯNG BỪNG KHAI TRƯƠNG TẠI SC VIVOCITY" class="link">
                        Đọc tin ngay
                    </a>
                </div>
                <div class="article-item col">
                    <a href="#" title="DEAL ĐỒNG GIÁ SHOPPING THẢ GA - Đầm 295K" class="d-block ratio ratio-1x1">
                        <img loading="lazy"
                            src="//file.hstatic.net/1000197303/article/dam295_fb_cover_900x900__2__633174ed95ca4097b3433101bdd788c2_grande.jpg"
                            alt="DEAL ĐỒNG GIÁ SHOPPING THẢ GA - Đầm 295K">
                    </a>
                    <div class="article-published d-flex flex-wrap justify-content-between">
                        <a href="#" class="order-1 order-xl-0 article-category link text-decoration-none"
                            title="MARC 2021">SHC 2022
                        </a>
                        <span class="article-date">29/04/2020

                        </span>
                    </div>
                    <a href="#" title="DEAL ĐỒNG GIÁ SHOPPING THẢ GA - Đầm 295K"
                        class="article-title text-decoration-none">
                        DEAL ĐỒNG GIÁ SHOPPING THẢ GA - Đầm 295K
                    </a>
                    <p class="article-excerpt">Từ 4/5 đến hết ngày 10/5/2020, SHC tặng nàng một deal hot hơn cả mùa hè:
                        rất nhiều mẫu đầm của SHC được bán với giá ưu đãi chỉ&nbsp;295K. Nàng...
                    </p>
                    <a href="javascript:"
                        onclick="window.location.href='#'"
                        title="DEAL ĐỒNG GIÁ SHOPPING THẢ GA - Đầm 295K" class="link">
                        Đọc tin ngay
                    </a>
                </div>
                <div class="article-item col">
                    <a href="#" title="Covid-19 - Cập nhật thời gian đóng cửa tạm thời cửa hàng"
                        class="d-block ratio ratio-1x1">
                        <img loading="lazy"
                            src="//file.hstatic.net/1000197303/article/thongbao1_ef943086a094449ea110fd9e82a3d249_079b7603c9094103acc1466ca9399b7c_grande.jpg"
                            alt="Covid-19 - Cập nhật thời gian đóng cửa tạm thời cửa hàng">
                    </a>
                    <div class="article-published d-flex flex-wrap justify-content-between">
                        <a href="#" class="order-1 order-xl-0 article-category link text-decoration-none"
                            title="MARC 2021">
                            SHC 2022
                        </a>
                        <span class="article-date">
                            
                        26/03/2020

                        </span>
                    </div>
                    <a href="#" title="Covid-19 - Cập nhật thời gian đóng cửa tạm thời cửa hàng"
                        class="article-title text-decoration-none">
                        Covid-19 - Cập nhật thời gian đóng cửa tạm thời cửa hàng
                    </a>
                    <p class="article-excerpt">Xin chào các cô nàng của SHC,Chúng ta đều cập nhật tình hình dịch mỗi
                        ngày, ở một số tuyến đường và khu vực đang trở nên nhạy cảm hơn....
                    </p>
                    <a href="javascript:"
                        onclick="window.location.href='#'"
                        title="Covid-19 - Cập nhật thời gian đóng cửa tạm thời cửa hàng" class="link">
                        Đọc tin ngay
                    </a>
                </div>
                <div class="article-item col">
                    <a href="#" title="The love of my life is GIVING" class="d-block ratio ratio-1x1">
                        <img loading="lazy"
                            src="//file.hstatic.net/1000197303/article/tu-thien_7cd19c7fa0e74d3c847b1503b7676345_c492ae6dffa644bba7bc37f483aaa1fb_grande.jpg"
                            alt="The love of my life is GIVING">
                    </a>
                    <div class="article-published d-flex flex-wrap justify-content-between">
                        <a href="#" class="order-1 order-xl-0 article-category link text-decoration-none"
                            title="MARC 2021">
                            SHC 2022
                        </a>
                        <span class="article-date">
                            24/09/2019
                        </span>
                    </div>
                    <a href="#" title="The love of my life is GIVING" class="article-title text-decoration-none">
                        The love of my life is GIVING
                    </a>
                    <p class="article-excerpt">
                        Chiến dịch gây quỹ từ thiện 1 T-SHIRT = 1000 SMILES mùa Trung Thu 2019Ý
                        tưởng chiến dịch 1 T-SHIRT = 1000 SMILES đến vào một ngày cuối tháng 8...
                    </p>
                    <a href="javascript:" onclick="window.location.href='#'"
                        title="The love of my life is GIVING" class="link">
                        Đọc tin ngay
                    </a>
                </div>
                <div class="article-item col">
                    <a href="#" title="TRẢI NGHIỆM HÈ CỰC CHẤT CÙNG 5000 QUÀ TẶNG SIÊU HOT"
                        class="d-block ratio ratio-1x1">
                        <img loading="lazy"
                            src="//file.hstatic.net/1000197303/article/carousel_1x1_7c56746360b84339a924daac60f5cf8f_grande.jpg"
                            alt="TRẢI NGHIỆM HÈ CỰC CHẤT CÙNG 5000 QUÀ TẶNG SIÊU HOT">
                    </a>
                    <div class="article-published d-flex flex-wrap justify-content-between">
                        <a href="#" class="order-1 order-xl-0 article-category link text-decoration-none"
                            title="MARC 2021">
                            SHC 2022
                        </a>
                        <span class="article-date">
                            27/06/2019
                        </span>
                    </div>
                    <a href="#" title="TRẢI NGHIỆM HÈ CỰC CHẤT CÙNG 5000 QUÀ TẶNG SIÊU HOT"
                        class="article-title text-decoration-none">
                        TRẢI NGHIỆM HÈ CỰC CHẤT CÙNG 5000 QUÀ TẶNG SIÊU HOT
                    </a>
                    <p class="article-excerpt">
                        Mùa hè của bạn thế nào rồi bạn ơi? Đã rực rỡ và đầy sắc màu chưa?Vào đây
                        khám phá ngay chương trình kết hợp cực hoành tráng để bạn...
                    </p>
                    <a href="javascript:"
                        onclick="window.location.href='#'"
                        title="TRẢI NGHIỆM HÈ CỰC CHẤT CÙNG 5000 QUÀ TẶNG SIÊU HOT" class="link">
                        Đọc tin ngay
                    </a>
                </div>
                <div class="article-item col">
                    <a href="#" title="WE GO. WE SHARE - CHIA SẺ TRẢI NGHIỆM, TRÚNG CHUYẾN DU LỊCH MIỄN PHÍ"
                        class="d-block ratio ratio-1x1">
                        <img loading="lazy"
                            src="//file.hstatic.net/1000197303/article/blog-1_7cac46ffed794543a1c4be5f8d60cb44_grande.jpg"
                            alt="WE GO. WE SHARE - CHIA SẺ TRẢI NGHIỆM, TRÚNG CHUYẾN DU LỊCH MIỄN PHÍ">
                    </a>
                    <div class="article-published d-flex flex-wrap justify-content-between">
                        <a href="#" class="order-1 order-xl-0 article-category link text-decoration-none"
                            title="MARC 2021">
                            SHC 2022
                        </a>
                        <span class="article-date">
                            12/06/2019
                            
                        </span>
                    </div>
                    <a href="#" title="WE GO. WE SHARE - CHIA SẺ TRẢI NGHIỆM, TRÚNG CHUYẾN DU LỊCH MIỄN PHÍ"
                        class="article-title text-decoration-none">
                        WE GO. WE SHARE - CHIA SẺ TRẢI NGHIỆM, TRÚNG CHUYẾN DU LỊCH MIỄN PHÍ
                    </a>
                    <p class="article-excerpt">
                        Every summer has a storyStory of love, strory of friendshipStory of
                        living to the fullestStory to remember, to tell and to be proud of✨Mùa hè này, hãy lên kế
                        hoạch...
                    </p>
                    <a href="javascript:"
                        onclick="window.location.href='#'"
                        title="WE GO. WE SHARE - CHIA SẺ TRẢI NGHIỆM, TRÚNG CHUYẾN DU LỊCH MIỄN PHÍ" class="link">Đọc
                        tin ngay
                    </a>
                </div>
                <div class="article-item col">
                    <a href="#" title="CỬA HÀNG MỚI NHẤT ĐƯỢC RA MẮT TẠI TRUNG TÂM GÒ VẤP"
                        class="d-block ratio ratio-1x1">
                        <img loading="lazy"
                            src="//file.hstatic.net/1000197303/article/hinh_blog_a269ab572fb7465c98c872d2f96a1a41_grande.jpg"
                            alt="CỬA HÀNG MỚI NHẤT ĐƯỢC RA MẮT TẠI TRUNG TÂM GÒ VẤP">
                    </a>
                    <div class="article-published d-flex flex-wrap justify-content-between">
                        <a href="#" class="order-1 order-xl-0 article-category link text-decoration-none"
                            title="MARC 2021">
                            SHC 2022
                        </a>
                        <span class="article-date">
                            01/08/2018
                            
                        </span>
                    </div>
                    <a href="#" title="CỬA HÀNG MỚI NHẤT ĐƯỢC RA MẮT TẠI TRUNG TÂM GÒ VẤP"
                        class="article-title text-decoration-none">
                        CỬA HÀNG MỚI NHẤT ĐƯỢC RA MẮT TẠI TRUNG TÂM GÒ VẤP
                    </a>
                    <p class="article-excerpt">
                        Ngày 28.07.2018 ngay tại trung tâm sầm uất nhất ở quận Gò Vấp SHC đã mở
                        một cửa hàng mới mẻ ngập tràn màu sắc. Các bạn Gò Vấp từ...
                    </p>
                    <a href="javascript:"
                        onclick="window.location.href='#'"
                        title="CỬA HÀNG MỚI NHẤT ĐƯỢC RA MẮT TẠI TRUNG TÂM GÒ VẤP" class="link">
                        Đọc tin ngay
                    </a>
                </div>
                <div class="article-item col">
                    <a href="#" title="MARC KHAI TRƯƠNG CỬA HÀNG TẠI GIA LAI" class="d-block ratio ratio-1x1">
                        <img loading="lazy"
                            src="//file.hstatic.net/1000197303/article/hinh_blog_06f5d64495ee40488f11650dbfdd6128_grande.jpg"
                            alt="MARC KHAI TRƯƠNG CỬA HÀNG TẠI GIA LAI">
                    </a>
                    <div class="article-published d-flex flex-wrap justify-content-between">
                        <a href="#" class="order-1 order-xl-0 article-category link text-decoration-none"
                            title="MARC 2021">
                            SHC 2022
                        </a>
                        <span class="article-date">
                            24/05/2018
                            
                        </span>
                    </div>
                    <a href="#" title="MARC KHAI TRƯƠNG CỬA HÀNG TẠI GIA LAI"
                        class="article-title text-decoration-none">
                        SHC KHAI TRƯƠNG CỬA HÀNG TẠI GIA LAI
                    </a>
                    <p class="article-excerpt">
                        Ngày 19.05.2018 vừa rồi SHC đã khai trương cửa hàng mới tại Thành phố Gia
                        Lai.MARC đã về đến Thành phố Gia Lai, với diện mạo mới mẻ của mùa...
                    </p>
                    <a href="javascript:"
                        onclick="window.location.href='#'"
                        title="MARC KHAI TRƯƠNG CỬA HÀNG TẠI GIA LAI" class="link">
                        Đọc tin ngay
                    </a>
                </div>
                <div class="article-item col">
                    <a href="#" title="MARC KHAI TRƯƠNG CỬA HÀNG FLAGSHIP ĐẦU TIÊN TẠI TP.HCM"
                        class="d-block ratio ratio-1x1">
                        <img loading="lazy" src="//file.hstatic.net/1000197303/article/_dsc7771_grande.jpg"
                            alt="MARC KHAI TRƯƠNG CỬA HÀNG FLAGSHIP ĐẦU TIÊN TẠI TP.HCM">
                    </a>
                    <div class="article-published d-flex flex-wrap justify-content-between">
                        <a href="#" class="order-1 order-xl-0 article-category link text-decoration-none"
                            title="MARC 2021">
                            SHC 2022
                        </a>
                        <span class="article-date">
                            30/11/2017
                            
                        </span>
                    </div>
                    <a href="#" title="MARC KHAI TRƯƠNG CỬA HÀNG FLAGSHIP ĐẦU TIÊN TẠI TP.HCM"
                        class="article-title text-decoration-none">
                        SHC KHAI TRƯƠNG CỬA HÀNG FLAGSHIP ĐẦU TIÊN TẠI TP.HCM
                    </a>
                    <p class="article-excerpt">
                        Thương hiệu SHC vừa khai trương của hàng flagship đầu tiên tại địa chỉ 83
                        Mạc Thị Bưởi. Cùng với 28 cơ sở trên toàn quốc, SHC đang được đông...
                    </p>
                    <a href="javascript:"
                        onclick="window.location.href='#'"
                        title="MARC KHAI TRƯƠNG CỬA HÀNG FLAGSHIP ĐẦU TIÊN TẠI TP.HCM" class="link">
                        Đọc tin ngay
                    </a>
                </div>
                <div class="article-item col">
                    <a href="#" title="Chặng đường mới - SHC Thủ Đức" class="d-block ratio ratio-1x1">
                        <img loading="lazy"
                            src="//file.hstatic.net/1000197303/article/1_f3341a5d24734453be7a043319be01a6_grande.jpg"
                            alt="Chặng đường mới - SHC Thủ Đức">
                    </a>
                    <div class="article-published d-flex flex-wrap justify-content-between">
                        <a href="#" class="order-1 order-xl-0 article-category link text-decoration-none"
                            title="MARC 2021">
                            SHC 2022
                        </a>
                        <span class="article-date">
                            14/09/2017
                            
                        </span>
                    </div>
                    <a href="#" title="Chặng đường mới - SHC Thủ Đức" class="article-title text-decoration-none">
                        Chặng đường mới - SHC Thủ Đức
                    </a>
                    <p class="article-excerpt">
                        Sau một thời gian ấp ủ, vì muốn nhận được sự yêu mến hơn từ khách hàng mà
                        SHC Thủ Đức đã quyết định hoàn thiện hơn, bằng cách đưa...
                    </p>
                    <a href="javascript:" onclick="window.location.href='#'"
                        title="Chặng đường mới - SHC Thủ Đức" class="link">
                        Đọc tin ngay
                    </a>
                </div>
            </div>
        </div>
    </article>
<!-- end main news -->
@endsection