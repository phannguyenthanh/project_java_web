<%-- 
    Document   : index2
    Created on : Feb 15, 2019, 10:24:17 AM
    Author     : thanh
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Vector"%>
<%@page import="Models.Products"%>
<%@page import="Controller.products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="vi">
    <!--<![endif]-->
    <head>
        <link rel="icon" href="images/favicon.png" type="image/x-icon" />
        <meta charset="utf-8" />
        <!--[if IE]>
        <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1' />
        <![endif]-->
        <title>
            Super store 
        </title>
        <meta name="description" content="Template b&#225;n h&#224;ng đẹp, nhiều t&#237;nh năng, khả năng Responsive th&#226;n thiện với người d&#249;ng. Tương th&#237;ch với mọi thiết bị di động.">
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=0' name='viewport' />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name='revisit-after' content='1 days' />
        <link rel="canonical" href="https://super-store.bizwebvietnam.net" />
        <meta name="keywords" content="Template bán hàng đẹp, nhiều tính năng, khả năng Responsive thân thiện với người dùng. Tương thích với mọi thiết bị di động.">
        <script src='js/jquery.v2.1.3.js' type='text/javascript'></script>
        <script src='js/jquery-migrate-1.2.0.js' type='text/javascript'></script>
        <link href='css/bootstrap.css' rel='stylesheet' type='text/css' />
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-I6JCnqxMbC2DuiHjsoCiLa15NVbKRf8/ooANRLsXD87zD2dVqzlz6Oqjvj470ztk" crossorigin="anonymous">
        <link href='css/owl-carousel.css' rel='stylesheet' type='text/css' />
        <link href='css/styles.css' rel='stylesheet' type='text/css' />
        <link href='css/responsive.css' rel='stylesheet' type='text/css' />
        <script>
            window.store = {
                template: "index"
            }
        </script>
        <meta property="og:type" content="website" />
        <meta property="og:title" content="Super store" />
        <meta property="og:image" content="http:images/share_fb_home.png" />
        <meta property="og:image" content="https:images/share_fb_home.png" />
        <meta property="og:description" content="Template bán hàng đẹp, nhiều tính năng, khả năng Responsive thân thiện với người dùng. Tương thích với mọi thiết bị di động." />
        <meta property="og:url" content="https://super-store.bizwebvietnam.net" />
        <meta property="og:site_name" content="" />
    </head>
    <body class="chir_home">
        <!--  <div class="insLoading">
           <div class="sk-circle">
              <div class="sk-circle1 sk-child"></div>
              <div class="sk-circle2 sk-child"></div>
              <div class="sk-circle3 sk-child"></div>
              <div class="sk-circle4 sk-child"></div>
              <div class="sk-circle5 sk-child"></div>
              <div class="sk-circle6 sk-child"></div>
              <div class="sk-circle7 sk-child"></div>
              <div class="sk-circle8 sk-child"></div>
              <div class="sk-circle9 sk-child"></div>
              <div class="sk-circle10 sk-child"></div>
              <div class="sk-circle11 sk-child"></div>
              <div class="sk-circle12 sk-child"></div>
           </div>
           </div> -->
        <div class="chir-page">

            <!--header-->
            <%@ include file="block/header.jsp" %>
            <!--header-->

            <!--menu-->
            <%@ include file="block/menu.jsp" %>
            <!--menu-->

            <!--slider-->
            <%@ include file="block/slider.jsp" %>
            <!--slider-->
            <div class="chir_main">
                <section id="chir_seller">
                    <div class="container">
                        <div class="main">
                            <div class="title_chir">
                                <h2>
                                    Sản phẩm mới nhất
                                </h2>
                            </div>
                            <%                                products product = new products();
                                Vector<Products> list = product.productNew();

                                if (list == null) {
                                    out.println("<h3>Lỗi kết nối CSDL</h3>");
                                } else if (list.size() <= 0) {
                                    out.println("<h3>Không có sản phẩm</h3>");
                                } else {

                            %>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12 product">
                                    <div class="home_product_list bg_w">
                                        <ul class="owl_design owl_product_list">
                                            <%                                                for (int i = 0; i < list.size(); i++) {


                                            %>

                                            <li class="item_product">
                                                <div class="chir_loop loop_item insScroll">
                                                    <div class="chir-img">
                                                        <!--                                                        <div class="sale">
                                                                                                                    Giảm 27%
                                                                                                                </div>-->
                                                        <a href="/ban-phim-choi-game-led-gia-co-r8-1818" title="">
                                                            <picture>
                                                                <source srcset="<%=list.get(i).getAvatar()%>" media="(min-width: 992px) and (max-width: 1199px)">
                                                                <source srcset="<%=list.get(i).getAvatar()%>" media="(min-width: 768px) and (max-width: 991px)">
                                                                <source srcset="<%=list.get(i).getAvatar()%>" media="(min-width: 480px) and (max-width: 767px)">
                                                                <source srcset="<%=list.get(i).getAvatar()%>" media="(max-width: 479px)">
                                                                <img srcset="<%=list.get(i).getAvatar()%>" alt="">
                                                            </picture>
                                                        </a>
                                                        <div class="chi-action">
                                                            <a href="javascript:void(0)" class="quick_views btn-quickview-1" data-alias="/ban-phim-choi-game-led-gia-co-r8-1818" ><img src="<%=list.get(i).getAvatar()%>" alt="Xem nhanh" title="Xem nhanh" /></a>
                                                            <a href="product-details.jsp?id=<%=list.get(i).getId()%>"  class="view_product"><img src="images/eye_w.png" alt="Xem chi tiết" title="Xem chi tiết" /></a>
                                                            <a href="javascript:void(0)" class="add-cart design_cart Addcart" data-variantid="11091464"><img src="images/cart_w.png" alt="Thêm vào giỏ" title="Thêm vào giỏ" /></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-detail clearfix">
                                                        <h3 class="pro-name"><a href="/ban-phim-choi-game-led-gia-co-r8-1818" title="Bàn phím chơi game led giả cơ R8 1818"><%=list.get(i).getName()%> </a></h3>
                                                        <p class="pro-price">

                                                            <%
                                                                DecimalFormat formatter = new DecimalFormat("###,###,###");
                                                                out.print(formatter.format(list.get(i).getPrice()));
                                                            %>₫ 
                                                            <!--<del class="compare-price">300.000₫</del>-->
                                                        </p>
                                                        <!--                                                        <div class="product_view_list">
                                                                                                                    <ul>
                                                                                                                        <li>Mã sản phẩm: <span>chưa rõ</span></li>
                                                                                                                        <li>Thương hiệu: <span>Xiaomi</span></li>
                                                                                                                        <li>Mô tả ngắn:
                                                                                                                            <span class="short-des">
                                                                                                                                Giới thiệu sản phẩm Bàn phím chơi game led giả cơ R8 1818 
                                                                                                                                Đặc Điểm Nổi Bật: 
                                                                                                                                Bàn phím cao cấp của R8 mang tên KB-1818 với thiết kế cho cảm giác tương tự như bàn phím cơ . Với phiên bản này thì R8 mô phỏng lực nhấn và âm thanh giống như Blue Swtich của hãng Cherry . 
                                                                                                                                R8-1818 tích hợp 3 màu đèn led cực đẹp . Phím chuyển đổi nhanh 3 màu : Xanh Dương , Đỏ , Tím . Đèn led có thể tùy chỉnh sáng tối ở các mức : 30% , 70% , 100% và không sử dụng led . 
                                                                                                                                ...
                                                                                                                            </span>
                                                                                                                        </li>
                                                                                                                    </ul>
                                                                                                                </div>-->
                                                    </div>
                                                </div>
                                            </li>
                                            <%
                                                }
                                            %>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </section>
                <section id="chir_seller">
                    <div class="container">
                        <div class="main" style="margin-top: 20px">
                            <div class="title_chir">
                                <h2>
                                    Sản phẩm nổi bật
                                </h2>
                            </div>
                            <%
                                Vector<Products> l = product.productView();

                                if (list == null) {
                                    out.println("<h3>Lỗi kết nối CSDL</h3>");
                                } else if (list.size() <= 0) {
                                    out.println("<h3>Không có sản phẩm</h3>");
                                } else {

                            %>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12 product">
                                    <div class="home_product_list bg_w">
                                        <ul class="owl_design owl_product_list">

                                            <%                                                for (int i = 0; i < list.size(); i++) {


                                            %>
                                            <li class="item_product">
                                                <div class="chir_loop loop_item insScroll">
                                                    <div class="chir-img">
                                                        <!--                                                        <div class="sale">
                                                                                                                    Giảm 27%
                                                                                                                </div>-->
                                                        <a href="/ban-phim-choi-game-led-gia-co-r8-1818" title="">
                                                            <picture>
                                                                <source srcset="<%=l.get(i).getAvatar()%>" media="(min-width: 992px) and (max-width: 1199px)">
                                                                <source srcset="<%=l.get(i).getAvatar()%>" media="(min-width: 768px) and (max-width: 991px)">
                                                                <source srcset="<%=l.get(i).getAvatar()%>" media="(min-width: 480px) and (max-width: 767px)">
                                                                <source srcset="<%=l.get(i).getAvatar()%>" media="(max-width: 479px)">
                                                                <img srcset="<%=l.get(i).getAvatar()%>" alt="">
                                                            </picture>
                                                        </a>
                                                        <div class="chi-action">
                                                            <a href="javascript:void(0)" class="quick_views btn-quickview-1" data-alias="/ban-phim-choi-game-led-gia-co-r8-1818" ><img src="images/zoom_w.png" alt="Xem nhanh" title="Xem nhanh" /></a>
                                                            <a href="product-details.jsp?id=<%=list.get(i).getId()%>"  class="view_product"><img src="images/eye_w.png" alt="Xem chi tiết" title="Xem chi tiết" /></a>
                                                            <a href="javascript:void(0)" class="add-cart design_cart Addcart" data-variantid="11091464"><img src="images/cart_w.png" alt="Thêm vào giỏ" title="Thêm vào giỏ" /></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-detail clearfix">
                                                        <h3 class="pro-name"><a href="/ban-phim-choi-game-led-gia-co-r8-1818" title="Bàn phím chơi game led giả cơ R8 1818">Bàn phím chơi game led giả cơ R8 1818 </a></h3>
                                                        <p class="pro-price">
                                                            <%
                                                                DecimalFormat formatter = new DecimalFormat("###,###,###");
                                                                out.print(formatter.format(list.get(i).getPrice()));
                                                            %>₫ 

                                                        </p>
                                                        <!--                                                        <div class="product_view_list">
                                                                                                                    <ul>
                                                                                                                        <li>Mã sản phẩm: <span>chưa rõ</span></li>
                                                                                                                        <li>Thương hiệu: <span>Xiaomi</span></li>
                                                                                                                        <li>Mô tả ngắn:
                                                                                                                            <span class="short-des">
                                                                                                                                Giới thiệu sản phẩm Bàn phím chơi game led giả cơ R8 1818 
                                                                                                                                Đặc Điểm Nổi Bật: 
                                                                                                                                Bàn phím cao cấp của R8 mang tên KB-1818 với thiết kế cho cảm giác tương tự như bàn phím cơ . Với phiên bản này thì R8 mô phỏng lực nhấn và âm thanh giống như Blue Swtich của hãng Cherry . 
                                                                                                                                R8-1818 tích hợp 3 màu đèn led cực đẹp . Phím chuyển đổi nhanh 3 màu : Xanh Dương , Đỏ , Tím . Đèn led có thể tùy chỉnh sáng tối ở các mức : 30% , 70% , 100% và không sử dụng led . 
                                                                                                                                ...
                                                                                                                            </span>
                                                                                                                        </li>
                                                                                                                    </ul>
                                                                                                                </div>-->
                                                    </div>
                                                </div>
                                            </li>
                                            <%
                                                }
                                            %>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <%
                                }
                            %>

                        </div>
                        
                    </div>
                </section>

            </div>
            <!--footer-->
            <%@ include file="block/footer.jsp" %>
            <!--footer-->





        </div>
        <div class="fixedItem backtop">
            <a href="javascript:void(0)"><img src="images/top.png" alt="Super store" /></a>
        </div>
        <div class="fixedItem cart">
            <a href="/cart"><img src="images/icon_cart_mb.png" alt="Super store" /></a>
        </div>
        <section id="mobile_menu" class="visible-sm visible-xs">
            <nav>
                <div class="head">
                    <p>
                        Danh mục sản phẩm 
                    </p>
                    <div class="tool_bar_menu">
                        <a href="javascript:void(0)">
                            <span class="open-menu"></span>
                        </a>
                    </div>
                </div>
                <ul class="chir_menu_mobile">
                    <li>
                        <a href="/" class=" current" title="Trang chủ">
                            <span>Trang chủ</span>
                        </a>
                    </li>
                    <li class="mobile_child">
                        <a href="/san-pham-noi-bat" title="Bộ sưu tập" class="">
                            Bộ sưu tập <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="mobile_lvlup lv2" role="menu">
                            <li class="mobile_child">
                                <a href="/deal-time" title="Thời trang nữ">Thời trang nữ <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                <ul class="mobile_lvlup lv3">
                                    <li>
                                        <a href="/thoi-trang-ban-chay" title="Áo sơ mi nữ">Áo sơ mi nữ</a>
                                    </li>
                                    <li>
                                        <a href="/dam-mac-nha-phoi-no-xinh-xan-twins" title="Áo thun nữ">Áo thun nữ</a>
                                    </li>
                                    <li>
                                        <a href="/dam-body-duoi-ca-d0248" title="Áo thun nữ tay dài">Áo thun nữ tay dài</a>
                                    </li>
                                    <li>
                                        <a href="/dam-dao-pho-hoa-tiet-style-a1" title="Áo khoát nữ">Áo khoát nữ</a>
                                    </li>
                                    <li>
                                        <a href="/dam-mac-nha-tay-lo-nitimo-2001" title="Đầm/Chân váy">Đầm/Chân váy</a>
                                    </li>
                                    <li>
                                        <a href="/dam-maxi-du-tiec-hoa-hong-nh028" title="Nón thời trang">Nón thời trang</a>
                                    </li>
                                    <li>
                                        <a href="/dam-body-lap-the-tay-dai" title="Túi xách nữ">Túi xách nữ</a>
                                    </li>
                                    <li>
                                        <a href="/dam-vai-be-gai-laluna-g066009-2t-hong" title="Phụ kiện thời trang">Phụ kiện thời trang</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="/all" title="Balo hàng hiệu">Balo hàng hiệu</a>
                            </li>
                            <li>
                                <a href="/thoi-trang-ban-chay" title="Trang sức hoàng cung">Trang sức hoàng cung</a>
                            </li>
                            <li>
                                <a href="/trang-suc" title="Nước hoa ngoại">Nước hoa ngoại</a>
                            </li>
                            <li class="mobile_child">
                                <a href="/frontpage" title="Thời trang nam">Thời trang nam <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                <ul class="mobile_lvlup lv3">
                                    <li>
                                        <a href="/thoi-trang-ban-chay" title="Áo sơ mi nam">Áo sơ mi nam</a>
                                    </li>
                                    <li>
                                        <a href="/non-nike-xanh-den-n249" title="Áo thun nam">Áo thun nam</a>
                                    </li>
                                    <li>
                                        <a href="/combo-balo-tui-ipad-vi-nu-sunny-day-sid49183" title="Áo khoát nam">Áo khoát nam</a>
                                    </li>
                                    <li>
                                        <a href="/non-nike-xanh-den-n249" title="Dụng cụ thể nao nam">Dụng cụ thể nao nam</a>
                                    </li>
                                    <li>
                                        <a href="/giay-tennis-t19-xanh" title="Giày thể thao nam">Giày thể thao nam</a>
                                    </li>
                                    <li>
                                        <a href="/non-nike-xanh-den-n249" title="Quần tây nam">Quần tây nam</a>
                                    </li>
                                    <li>
                                        <a href="/deal-time" title="Quần jean nam">Quần jean nam</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="/my-pham" title="Mỹ phẩm cao cấp">Mỹ phẩm cao cấp</a>
                            </li>
                            <li>
                                <a href="/collections/all" title="Iphone 7/7s/7 Plus">Iphone 7/7s/7 Plus</a>
                            </li>
                            <li class="mobile_child">
                                <a href="/deal-time" title="Phụ kiện công nghệ">Phụ kiện công nghệ <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                <ul class="mobile_lvlup lv3">
                                    <li>
                                        <a href="/tai-nghe-chup-tai-siberia-v3-prism-gaming" title="Tai nghe Samsung">Tai nghe Samsung</a>
                                    </li>
                                    <li>
                                        <a href="/tai-nghe-chup-tai-cho-game-thu-kanen-km780" title="Loa Laptop">Loa Laptop</a>
                                    </li>
                                    <li>
                                        <a href="/pin-sac-du-phong-romoss-solo-5-10000mah" title="Ốp lưng">Ốp lưng</a>
                                    </li>
                                    <li>
                                        <a href="/pin-sac-du-phong-romoss-solo-5-10000mah" title="Pin sạt dự phòng">Pin sạt dự phòng</a>
                                    </li>
                                    <li>
                                        <a href="/usb-otg-sandisk-sddd2-32gb" title="USB">USB</a>
                                    </li>
                                    <li>
                                        <a href="/vien-uong-tang-cuong-testoterone-tu-nhien-cho-nam-gioi-testostro-grow" title="Chuột máy tính">Chuột máy tính</a>
                                    </li>
                                    <li>
                                        <a href="/ban-phim-may-tinh-hp-cd3000zn" title="Bàn phím máy tính">Bàn phím máy tính</a>
                                    </li>
                                    <li>
                                        <a href="/ban-phim-choi-game-led-gia-co-r8-1818" title="Thẻ nhớ">Thẻ nhớ</a>
                                    </li>
                                    <li>
                                        <a href="/sat-du-phong-a4000" title="Cáp sạt điện thoại">Cáp sạt điện thoại</a>
                                    </li>
                                    <li>
                                        <a href="/tai-nghe-chup-tai-cho-game-thu-kanen-km780" title="Loa mini">Loa mini</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/collections/all" class="" title="Sản phẩm">
                            <span>Sản phẩm</span>
                        </a>
                    </li>
                    <li>
                        <a href="/tin-tuc" class="" title="Tin tức">
                            <span>Tin tức</span>
                        </a>
                    </li>
                    <li>
                        <a href="/gioi-thieu" class="" title="Giới thiệu">
                            <span>Giới thiệu</span>
                        </a>
                    </li>
                    <li class="mobile_child">
                        <a href="/thoi-trang-ban-chay" title="Thời trang mới" class="">
                            Thời trang mới <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="mobile_lvlup lv2" role="menu">
                            <li>
                                <a href="/non-nike-xanh-den-n249" title="Áo khoát len nam">Áo khoát len nam</a>
                            </li>
                            <li>
                                <a href="/dam-mac-nha-phoi-no-xinh-xan-twins" title="Áo khoát len nữ">Áo khoát len nữ</a>
                            </li>
                            <li>
                                <a href="/giay-tennis-t19-xanh" title="Giày nam/nữ">Giày nam/nữ</a>
                            </li>
                            <li>
                                <a href="/dam-dao-pho-hoa-tiet-style-a1" title="Ví nam/nữ">Ví nam/nữ</a>
                            </li>
                            <li>
                                <a href="/deal-time" title="Túi xách nữ">Túi xách nữ</a>
                            </li>
                            <li>
                                <a href="/thoi-trang-ban-chay" title="Balo sale">Balo sale</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/deal-time" class="" title="Best Seller">
                            <span>Best Seller</span>
                        </a>
                    </li>
                    <li>
                        <a href="/lien-he-voi-chung-toi" class="" title="Liên hệ">
                            <span>Liên hệ</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </section>
        <div class="overlay_chir menu visible-sm visible-xs"></div>
        <style>
            div#popup-template {
                padding: 10px 20px;
            }
            div#popup-template h3 {
                padding: 5px;
                margin-bottom: 10px;
                text-align: center;
                text-transform: uppercase;
                font-size: 20px;
            }
            .descPopup h4 {
                margin-top: 10px;
                line-height: 1.5;
            }
            .descPopup {
                max-height: 200px;
                overflow: auto;
                margin-top: 10px;
            }
            .descPopup p span, .descPopup p a {
                color: #b00000;
            }
            .descPopup::-webkit-scrollbar {
                width: 10px;
                background-color: #E4E4E4;
            }
            .descPopup table{
                width: 100%;
                max-width: 100%;
            }
            .descPopup::-webkit-scrollbar-thumb {
                background-color: #828282;
                border-radius: 30px;
            }
            .descPopup::-webkit-scrollbar-track {
                width: 1px;
                background: #d6d6d6;
                border: 1px solid gray;
                border-radius: 30px;
                -webkit-box-shadow: 0 0 1px grey inset;
            }
            @media screen and (min-width: 1200px){
                #insPopupTemplate .content {
                    //width: 800px;
                }
            }
        </style>
        <div id="insPopupTemplate" class="newletter-popup engo-popup">
            <div class="overlay"></div>
            <div class="content">
                <div id="popup-template" class="">
                    <div class="pa-header">
                        <h3 class="">
                            Viên uống làm đẹp White
                        </h3>
                        <div class="pnewle-message">
                            <a href="http://super-store.bizwebvietnam.net/tinh-chat-duong-am-moi-za-total-hydration-lip-essence-8g">
                                <img src="images/popup_temp.png" alt="Viên uống làm đẹp White" />
                            </a>
                            <div class="descPopup">
                                <h4>
                                    Siro uống đẹp da, trắng da SNOW - White Collagen . Dưỡng trắng da, làm chậm quá trình lão hóa.
                                </h4>
                                <p>
                                    Được chiếc xuất từ thành phần chính là Collagen tự nhiên, SNOW - WHITE Collagen dạng nước là sản phẩm làm đẹp da, trắng da và làm chậm quá trình lão hóa nổi bật tại thị trường Nhật Bản, dành riêng cho phụ nữ đã ngoài 30 tuổi.
                                </p>
                                <p>
                                    Theo các nhà nghiên cứu cho biết, collagen chiếm 80% trong mô liên kết và 20% protein trong cơ thể người, giúp cơ thể hoạt động tốt, duy trì được độ đàn hồi, sự mịn màng và chắc khỏe của da, đặc biệt còn chống lão hóa rất tốt và chữa trị được các bệnh về khớp.
                                </p>
                                <h4>
                                    Công dụng Siro uống đẹp da SNOW - WHITE Collagen dạng nước:
                                </h4>
                                <p>
                                    Giảm nám, giảm tàn nhang
                                    <br>Giúp da săn chắc, làm giảm các vết nhăn ở vùng khóe mắt, ngăn ngừa chảy xệ da mang lại sự tươi trẻ cho làn da.
                                    <br>Giúp da trắng lên, sáng hơn theo thời gian sử dụng sản phẩm.
                                    <br>Bổ sung collagen, tái tạo và củng cố cấu trúc nằm sâu dưới da, giúp da căng mọng, săn chắc, đàn hồi.
                                    <br>Bổ sung các chất chống oxy hóa, làm chậm quá trình lão hóa da hiệu quả nhất.
                                    <br>Thu nhỏ lỗ chân lông, giúp da mịn màng hơn.
                                    <br>Giảm stress, tăng hưng phấn, tăng độ sáng cho mắt, giúp đầu óc minh mẫn, giúp vết thương chống hồi phục.
                                </p>
                                <table align="center" border="1" cellpadding="1" cellspacing="1" width="100%">
                                    <tbody>
                                        <tr>
                                            <td><strong><span>Tên thành phần</span></strong></td>
                                            <td><strong><span>Hàm lượng</span></strong></td>
                                        </tr>
                                        <tr>
                                            <td><span>Collagen fish peptide</span></td>
                                            <td><span>45,000 mg</span></td>
                                        </tr>
                                        <tr>
                                            <td><span>Isoflavon ( tinh chất mầm đậu nành)</span></td>
                                            <td><span>75 mg</span></td>
                                        </tr>
                                        <tr>
                                            <td><span>Glutathione</span></td>
                                            <td><span>10 mg</span></td>
                                        </tr>
                                        <tr>
                                            <td><span>Vitamin C</span></td>
                                            <td><span>5 mg</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <p style="color:{{ settings.shop_color_important }}">
                                    Công ty cam kết sử dụng mà không có hiệu quả sẽ hoàn lại toàn bộ số tiền khách hàng mua hàng.
                                </p>
                                <p>
                                    Liên hệ tư vấn và mua hàng: <a href="tel:0902233384"><span>090 22 233 84</span> </a>gặp Linh.
                                </p>
                                <p>
                                    Xem chi tiết sản phẩm tại <a href="http://super-store.bizwebvietnam.net/tinh-chat-duong-am-moi-za-total-hydration-lip-essence-8g" target="_blank">đây</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <a href="javascript:void(0)" class="close_newletter"></a>
                </div>
            </div>
        </div>
        <script>
            jQuery(document).ready(function ($) {
                setTimeout(function () {
                    if (sessionStorage.mega_popup == null) {
                        sessionStorage.mega_popup = 'show';
                        $('#insPopupTemplate').addClass('active');
                    }
                }, 500)
            });
            $(document).on('click', '.overlay, .close_newletter', function (e) {
                e.preventDefault();
                $('#insPopupTemplate').removeClass('active');
            })
        </script> 
        <div class="modal fade" id="quick-view-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="false">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title " id="">Thông tin sản phẩm</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <div class="row">
                                <form method="post" action="/cart/add">
                                    <div class="col-lg-5 col-md-6">
                                        <div class="image-zoom row">
                                            <img class="p-product-image-feature" src="">
                                            <div id="p-sliderproduct" class="flexslider">
                                                <ul class="slides"></ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-7 col-md-6 pull-right" style="padding: 0px 10px;">
                                        <div class="form-input">
                                            <div class="product-title p-title">
                                            </div>
                                            <div class="product-price">
                                                <span class="p-price "></span>
                                                <del></del>
                                            </div>
                                        </div>
                                        <div class="form-des"></div>
                                        <div class="clearfix"></div>
                                        <div class="form-input vid ">
                                            <div class="m-vendor">
                                            </div>
                                            <div class="m-sku">
                                            </div>
                                            <div class="m-tt">
                                            </div>
                                        </div>
                                        <div class="p-option-wrapper" >
                                            <select id="product-selectors" name="variantId"></select>
                                        </div>
                                        <div class="form-input qty">
                                            <label>Số lượng</label>
                                            <input name="quantity" type="number" min="1" value="1" />
                                        </div>
                                        <div class="form-input actionQVC" style="width: 100%">
                                            <button type="button" class="btn-addCart ds-cart addToCartModal cart_QV">Thêm vào giỏ</button>
                                            <!--<button disabled class="btn-detail addtocart btn-color-add btn-min-width btn-mgt btn-soldout">Hết hàng</button>-->
                                            <button style="display:none" type="button" class="btn-addCart ds-cart cart_QV noPrice" onclick="window.location = '/cart'">Xem giỏ hàng</button>
                                            <div class="qv-readmore">
                                                <span> hoặc </span><a class="read-more p-url" href="" role="button">Xem chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        <script>

            $("#menu_home").addClass("active");
            var callBack = function (variant, selector) {
                if (variant) {
                    modal = $('#quick-view-modal');
                    if (variant.featured_image) {
                        var _imgSRC = variant.featured_image.src;
                        var _urlIMG = '';
                        if (_imgSRC.indexOf('-1')) {
                            _imgSRC = _imgSRC.split('?');
                            _urlIMG = _imgSRC[0];
                        } else {
                            _urlIMG = _imgSRC;
                        }
                        setTimeout(function () {
                            modal.find('.product-thumb a[data-image="' + Bizweb.resizeImage(_urlIMG, 'medium') + '"] img').trigger('click');
                        }, 300)
                    }
                    if (variant.price > 0) {
                        modal.find('.noPrice').hide();
                        modal.find('.addToCartModal').show();
                        modal.find('.qv-readmore > span').show();
                        modal.find('.qty').show();
                        modal.find('.p-price').html(Bizweb.formatMoney(variant.price, "{{amount_no_decimals_with_comma_separator}}₫"));
                        if (variant.compare_at_price > variant.price)
                            modal.find('del').html(Bizweb.formatMoney(variant.compare_at_price, "{{amount_no_decimals_with_comma_separator}}₫"));
                        else
                            modal.find('del').html('');
                    } else {
                        modal.find('.p-price').html('Liên hệ');
                        modal.find('.addToCartModal').hide();
                        modal.find('.qty').hide();
                        //modal.find('.noPrice').show();
                        modal.find('.qv-readmore > span').hide();
                        modal.find('del').html('');
                    }
                    if (variant.available) {
                        modal.find('.addToCartModal').removeClass('disabled').removeAttr('disabled').html('Thêm vào giỏ');
                        //modal.find('.btn-soldout').css('display', 'none');
                    } else {
                        modal.find('.addToCartModal').addClass('disabled').attr('disabled', 'disabled').html('Hết hàng');
                        //modal.find('.btn-soldout').css('display', 'block');
                    }
                    if (variant.sku != null) {
                        modal.find('.m-sku').html('<span>Mã sản phẩm: </span>' + variant.sku).show();
                    } else {
                        modal.find('.m-sku').hide();
                    }
                } else {
                    modal.find('.addToCartModal').addClass('disabled').attr('disabled', 'disabled').html('Hết hàng').show();
                    modal.find('.p-price').html('Hết hàng');
                    modal.find('.qty').hide();
                    modal.find('del').html('');
                }
            }
            var p_select_data = $('.p-option-wrapper').html();
            var p_zoom = $('.image-zoom').html();
            var quickViewProduct = function (purl) {
                if ($(window).width() < 680) {
                    window.location = purl;
                    return false;
                }
                modal = $('#quick-view-modal');
                modal.modal('show');
                $.ajax({
                    url: purl + '.js',
                    async: false,
                    success: function (product) {
                        $.each(product.options, function (i, v) {
                            product.options[i] = v.name;
                        })
                        modal.find('.addToCartModal').removeClass('disabled').removeAttr('disabled').html('Thêm vào giỏ');
                        modal.find('.p-title').html('<h3>' + product.name + '</h3>');
                        modal.find('.p-option-wrapper').html(p_select_data);
                        if (product.vendor != null) {
                            modal.find('.m-vendor').html('<span>Nhà cung cấp: </span>' + product.vendor).show();
                        } else {
                            modal.find('.m-vendor').hide();
                        }
                        var productdes = product.description;
                        if (productdes == '' || productdes == 'undefined' || productdes == null) {
                            productdes = product.content;
                        }
                        if (productdes != '' && productdes != 'undefined' && productdes != null) {
                            var re_productdes = productdes.replace(/(<([^>]+)>)/ig, "")
                            var des = re_productdes.split("&nbsp;").splice(0, 30).join(" ") + "...";
                            modal.find('.form-des').html(des);
                            modal.find('.form-des').show();
                        } else {
                            modal.find('.form-des').html('Chưa có mô tả cho sản phẩm này!');
                        }
                        $('.image-zoom').html(p_zoom);
                        modal.find('.p-url').attr('href', product.url);
                        if (product.images.length == 0) {
                            modal.find('.p-product-image-feature').attr('src', '//hstatic.net/0/0/global/noDefaultImage6_large.gif');
                        } else {
                            $('#p-sliderproduct').remove();
                            $('.image-zoom').append("<div id='p-sliderproduct' class='flexslider'>");
                            $('#p-sliderproduct').append('<ul class="slides owl_design"></ul>');

                            $.each(product.images, function (i, v) {
                                elem = $('<li class="product-thumb">').append('<a href="#" data-image="" data-zoom-image=""><img /></a>');
                                elem.find('a').attr('data-image', Bizweb.resizeImage(v, 'medium'));
                                elem.find('a').attr('data-zoom-image', v);
                                elem.find('img').attr('data-image', Bizweb.resizeImage(v, 'medium'));
                                elem.find('img').attr('data-zoom-image', v);
                                elem.find('img').attr('src', Bizweb.resizeImage(v, 'small'));
                                modal.find('.slides').append(elem);
                            })

                            modal.find('.p-product-image-feature').attr('src', product.featured_image);
                            $(".modal-footer .btn-readmore").attr('href', purl);
                            setTimeout(function () {
                                $('#p-sliderproduct .slides').owlCarousel({
                                    items: 4,
                                    loop: false,
                                    autoplay: false,
                                    margin: 10,
                                    responsiveClass: true,
                                    nav: true,
                                    navText: ['‹', '›'],
                                    responsive: {
                                        0: {
                                            items: 1,
                                            margin: 0
                                        },
                                        414: {
                                            items: 2,
                                            margin: 15
                                        },
                                        480: {
                                            items: 2,
                                            margin: 15
                                        },
                                        768: {
                                            items: 2,
                                            margin: 15
                                        },
                                        992: {
                                            items: 4
                                        }
                                    }
                                });
                                modal.find('.owl-item:first-child .product-thumb img').click();
                            }, 100)
                        }
                        $.each(product.variants, function (i, v) {
                            modal.find('select#product-selectors').append("<option value='" + v.id + "'>" + v.title + ' - ' + v.price + "</option>");
                        })
                        if (product.variants.length == 1 || product.variants[0].title.indexOf('Default') != -1) {
                            $('.p-option-wrapper').hide();
                            callBack(product.variants[0], null);
                        } else
                        //$('.p-option-wrapper').hide();

                        if (product.variants.length == 1 && product.variants[0].title.indexOf('Default') != -1) {
                            callBack(product.variants[0], null);
                        } else {
                            new Bizweb.OptionSelectors('product-selectors', {
                                product: product,
                                onVariantSelected: callBack,
                                enableHistoryState: true
                            });
                            //debugger
                            if (product.options.length == 1 && product.options[0].indexOf('Tiêu đề') == -1)
                                modal.find('.selector-wrapper:eq(0)').prepend('<label>' + product.options[0] + '</label>');
                            $('.p-option-wrapper').show();
                            $('.p-option-wrapper select:not(#product-selectors)').each(function () {
                                $(this).wrap('<span class="custom-dropdown custom-dropdown--white"></span>');
                                $(this).addClass("custom-dropdown__select custom-dropdown__select--white");
                            });
                            callBack(product.variants[0], null);
                        }
                    }
                });

                //$('.modal-backdrop').css('opacity', '0');
                return false;
            }
            $('#quick-view-modal ').on('click', '.product-thumb img', function (event) {
                event.preventDefault();
                modal = $('#quick-view-modal');
                modal.find('.p-product-image-feature').attr('src', $(this).attr('data-zoom-image'));
                modal.find('.product-thumb').removeClass('active');
                $(this).parents('li').addClass('active');
                return false;
            })
            $(document).on('click', 'a.btn-quickview-1', function (event) {
                //console.log('abc')
                event.preventDefault();
                quickViewProduct($(this).attr('data-alias'));
            })
        </script>
        <div class="modal fade" id="addCartModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="false">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title " id=""><i class="fa fa-check-square-o" aria-hidden="true"></i> Thêm vào giỏ thành công</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-sm-4 col-xs-5 imgCartItem">
                            </div>
                            <div class="col-sm-8 col-xs-7 imgCartDetail">
                                <h3 class="itemCartTile"></h3>
                                <div class="itemCartPrice"></div>
                                <span class="itemCartQty"></span>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="close continueShopping" data-dismiss="modal" aria-label="Close">Tiếp tục mua sắm</button>
                        <button type="button" class="close viewCartPage" onclick="window.location = '/cart'">Xem giỏ hàng</button>
                    </div>
                </div>
            </div>
        </div>
        <script src='js/bootstrap.js' type='text/javascript'></script>
        <script src='js/fast-click.js' type='text/javascript'></script>
        <script src='js/bizweb-api.js' type='text/javascript'></script>
        <script src='js/bizweb-selection.js' type='text/javascript'></script>
        <script src='js/owl-carousel.js' type='text/javascript'></script>
        <script src='js/countdown.js' type='text/javascript'></script>
        <script src='js/scripts.js' type='text/javascript'></script>
    </body>
</html>
