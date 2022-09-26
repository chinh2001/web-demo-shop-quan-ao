@extends('website.layouts.master')
@section('title')
Brand host
@endsection
@section('content')
<!-- page brand -->
<div class="container-brand">
    <div class="bannerWrap">
        <div class="contact">
            <h2>Hello! Wellcome</h2>
            <p>Famous brands are included in HSC.</p>
        </div>
    </div>
    <div class="content-brand">
        <figure class=" bg-img-brand ">
                <div class="img-brand">
                        <div class="ig">
                            <img src="{{asset('images/brands/item_img/sinitta-leunen-bBw0JMlqNyE-unsplash.jpg')}}" id="image1">
                        </div>
                        <div class="ig">
                            <img src="{{asset('images/brands/item_img/collins-lesulie-2i9hqT5qPgI-unsplash.jpg')}}" id="image2">
                        </div>
                        <div class="ig">
                            <img src="{{asset('images/brands/item_img/image-adidas3.jpg')}}" id="image3">
                        </div>
                </div>
                <div class="img-auto">
                    <button onClick="autoRun()"><i class="fa-solid fa-play"></i>Start</button>
                    <button onClick="changeImage(-1); return false;">Previous Image</button>
                    <button onClick="pause();">pause</button>
                    <button onClick="changeImage(1); return false;">Next Image</button>   
                </div>
                <script src="brand.js"></script>
                <figcaption>
                    <div class="bg-info">
                        <div class="info-brand">
                            <p>HSC where all inspirations connect</p>
                            <h1>PROVIDE A GOOD USER EXPERIENCE</h1>
                            <p>Bằng việc liên kết với các thương hiệu thời trang lớn. Chúng tôi đem đến sự trải nghiệm tốt nhất cho người dùng . Viêc đa dạng sản phẩm và thương hiệu khiến cho khách hàng có nhiều lựa chon hơn và tạo cảm giác thích thú </p>
                            <button type="button" id="" class="button">
                                <a href="#">SHOP</a>
                            </button>
                        </div>
                    </div>
                    
                    <div class="bg-info">
                        <div class="info-brand">
                            
                            <h1>NIKE</h1>
                            <p>Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.</p>
                            <button type="button" id="" class="button">
                                <a href="#">SHOP</a>
                            </button>
                        </div>
                    </div>
                    <div class="bg-img">
                        <img loading="lazy" src="{{asset('images/brands/item_img/mathieu-chassara-47KbIvcklh8-unsplash.jpg')}}" >
                    </div>
                    <div class="bg-info">
                        <div class="info-brand">
                            <h1>ADIDAS</h1>
                            <p> Thương hiệu Adidas bao gồm giày dép, quần áo, mũ, tất, túi xách thể thao… Ưu điểm của những sản phẩm thương hiệu Adidas đó là luôn được làm từ những chất liệu tốt nhất, thiết kế khá tỉ mỉ, cẩn thận, tinh tế thể hiện trong từng đường may để mang tới người dùng cảm giác thoải mái, dễ chịu.</p>
                            <button type="button" id="" class="button">
                                <a href="#">SHOP</a>
                            </button>
                        </div>
                    </div>
                    <div class="bg-img">
                        
                    </div>
                    <div class="bg-info">
                        <div class="info-brand">
                            
                            <h1>ZARA</h1>
                            <p>Thương hiệu Zara luôn cung cấp đa dạng các mặt hàng thời trang dành cho nam và nữ với thiết kế đẹp, độc đáo theo xu hướng thời trang của thế giới. Ngoài ra, Zara cũng cung cấp các mẫu thiết kế khác như giày dép, phụ kiện và khăn choàng,… và các mặt hàng quần áo trẻ em, tại đây sẽ đáp ứng nhu cầu mua sắm thời trang cho cả gia đình bạn.</p>
                            <button type="button" id="" class="button">
                                <a href="#">SHOP</a>
                            </button>
                            
                        </div>
                    </div>
                    <div class="bg-img">
                        
                        <img loading="lazy" src="{{asset('images/brands/item_img/highlight-id-DbOdCSoefsg-unsplash.jpg')}}">
                    </div>
                    <div class="bg-info">
                        <div class="info-brand">
                            
                            <h1>CHAMPION</h1>
                            <p>Chữ “C” màu đỏ, trắng và xanh lam. Đó là biểu tượng của Champion - một công ty quần áo có hơn 100 năm lịch sử tồn tại. Quá khứ đầy huy hoàng của thương hiệu Champion đã cho ta thấy câu chuyện về những bộ đồ đầy chất lượng và độ tin cậy. Những đổi mới của thương hiệu (chẳng hạn như áo hoodie!) Đã trở thành xu hướng của toàn cầu, và đến tận ngày nay nó vẫn là một thứ không thể thiếu trong tủ đồ của bạn.</p>
                            <button type="button" id="" class="button">
                                <a href="#">SHOP</a>
                            </button>
                            
                        </div>
                    </div>
                    <div class="bg-img">
                        
                        <img loading="lazy" src="{{asset('images/brands/item_img/maksim-larin-tecILYzVAzg-unsplash.jpg')}}">
                    </div>
                    <div class="bg-info">
                        <div class="info-brand">
                        
                            <h1>STUSSY</h1>
                            <p>Stussy cái tên nổi tiếng trong làng thời trang, khai sinh ra phong cách thời trang đường phố và đưa nó tới những sàn runway lẫy lừng trên thế giới. Bạn có thể bắt gặp Stussy tại rất nhiều nơi trên đất nước ta như trên những con phố lớn tại nhà thờ Đức Bà vào mùa hè hay tới mùa đông tại những nhà hát lớn ở Hà Nội. Thậm chí là vào những ngày mưa trên bãi biển Mũi Né, cũng thấp thoáng bóng dáng của Stussy .

                            </p>
                            <button type="button" id="" class="button">
                                <a href="#">SHOP</a>
                            </button>
                            
                        </div>
                    </div>
                    <div class="bg-img">
                        
                        <img loading="lazy" src="{{asset('images/brands/item_img/lexscope-aSTsquoadMU-unsplash.jpg')}}">
                    </div>
                    <div class="bg-info">
                        <div class="info-brand">
                            
                            <h1>DICKIES</h1>
                            <p>Ngày nay, Dickies được biết đến như là nhãn hàng của sự đơn giản, một biểu tượng cho văn hóa CHICANO, tạo nên chất riêng cho bản thân người mặc.</p>
                            <button type="button" id="" class="button">
                                <a href="#">SHOP</a>
                            </button>
                            
                        </div>
                    </div>
                    <div class="bg-img">
                        <img loading="lazy" src="{{asset('images/brands/item_img/dickies.jpeg')}}">
                    </div>
                </figcaption>
        </figure>
    </div>
</div>
<!-- end page -->
@endsection