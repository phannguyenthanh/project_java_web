<%@page import="java.text.DecimalFormat"%>
<%@page import="Models.Products"%>
<%@page import="Controller.products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String sid = request.getParameter("id");
    int id = Integer.parseInt(sid);

    Products u = products.findbyid(id);

    Types t = types.findbyid(u.getType());
    String type = t.getName();

%>
<head>
    <link rel="icon" href="images/favicon.png" type="image/x-icon" />
    <meta charset="utf-8" />
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
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Super store" />
    <meta property="og:image" content="http:images/share_fb_home.png" />
    <meta property="og:image" content="https:images/share_fb_home.png" />
    <meta property="og:description" content="Template bán hàng đẹp, nhiều tính năng, khả năng Responsive thân thiện với người dùng. Tương thích với mọi thiết bị di động." />
    <meta property="og:url" content="https://super-store.bizwebvietnam.net" />
    <meta property="og:site_name" content="" />
</head>
<body class="chir_un_home">
    <div class="chir-page">
        <!--header-->
        <%@ include file="block/header.jsp" %>
        <!--header-->

        <!--menu-->
        <%@ include file="block/menu.jsp" %>
        <!--menu-->
        <div class="chir_main">
            <div id="mango-product">
                <div class="breadcrumb-box">
                    <div class="container">
                        <div class="row">
                            <style>
                                .chir_breadcrumb ul li {
                                    display: inline-block;
                                    padding: 10px 0px;
                                }
                                .chir_breadcrumb ul li strong {
                                    font-family: 'brandon_textregular'!important;
                                }
                            </style>
                            <div class="chir_breadcrumb  hidden-xs" >
                                <div class="container">
                                    <ul itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
                                        <li class="home"> <a itemprop="url" title="Quay lại trang chủ" href="/"><span itemprop="title">Trang chủ</span></a><span>&mdash;&rsaquo;</span></li>
                                        <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
                                            <a itemprop="url" href="/deal-time"><span itemprop="title">Sản phẩm</span>&mdash;&rsaquo;</a>
                                        </li>
                                        <li><strong><%=u.getName()%></strong>
                                        <li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box_collection">
                    <div class="container">
                        <div class="information-blocks bg_w">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 information-entry">
                                    <div class="product-preview-box relative">
                                        <div class="swiper-feature text-center">
                                            <img class="product-image-feature" src="<%=u.getAvatar()%> " alt="<%=u.getName()%>">
                                        </div>
                                        <!--                              <div id="thumb_img" class="">
                                                                         <ul class="slide_thumb_img owl_design" >
                                                                            <li class="product-thumb">
                                                                               <a href="javascript:" >
                                                                               <img alt="" data-change="images/demo1.jpg" data-image="images/demo1.jpg" src="images/demo1.jpg?v=1484670382133" >
                                                                               </a>
                                                                            </li>
                                                                            <li class="product-thumb">
                                                                               <a href="javascript:" >
                                                                               <img alt="" data-change="images/demo2.jpg" data-image="images/demo2.jpg" src="images/demo2.jpg" >
                                                                               </a>
                                                                            </li>
                                                                            <li class="product-thumb">
                                                                               <a href="javascript:" >
                                                                               <img alt="" data-change="images/demo7.jpg" data-image="images/demo7.jpg" src="images/demo7.jpg" >
                                                                               </a>
                                                                            </li>
                                                                            <li class="product-thumb">
                                                                               <a href="javascript:" >
                                                                               <img alt="" data-change="images/demo8.jpg" data-image="images/demo8.jpg" src="images/demo8.jpg" >
                                                                               </a>
                                                                            </li>
                                                                         </ul>
                                                                      </div>-->
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 information-entry">
                                    <div class="product-detail-box">
                                        <h3 class="product-subtitle"></h3>
                                        <h1 class="product-title"><%=u.getName()%></h1>
                                        <span class="sku"><strong>Mã sản phẩm:</strong> Chưa rõ</span>
                                        <div class="row">
                                            <div class="col-sm-5 col-xs-5 left_box">
                                                <div class="price detail-info-entry">
                                                    <div class="current">
                                                        <%
                                                            DecimalFormat formatter = new DecimalFormat("###,###,###");
                                                            out.print(formatter.format(u.getPrice()));
                                                        %>₫ 

                                                    </div>
                                                </div>
                                                <!--                                    <div class="quantity-selector detail-info-entry">
                                                                                       <div class="detail-info-entry-title">Số lượng</div>
                                                                                       <div class="entry number-minus">&nbsp;</div>
                                                                                       <div class="entry number">1</div>
                                                                                       <div class="entry number-plus">&nbsp;</div>
                                                                                    </div>-->
                                                <div class="select clearfix">
                                                    <input type="hidden" name="variantId" value="8694263" id="one_variant" />
                                                </div>
                                                <div class="select-swatch">							
                                                </div>
                                            </div>
                                            <div class="col-sm-7 col-xs-7 right_box text-left">
                                                <div class="pd_policy">
                                                    <h3>Dịch vụ của chúng tôi</h3>
                                                    <p class="serv-1">Giao tận nhà trong 1-3 ngày làm việc <br><span>(áp dụng cho đơn hàng > 3 sản phẩm)</span></p>
                                                    <p class="serv-2">Cam kết nếu hình không đúng thực tế , bạn nhận ngay coupon mua hàng trị giá 2.000.000đ tại hệ thống siêu thị Big C.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="detail-info-entry pd_action">
                                            <a href="../carts_add?id=<%=u.getId()%>" class="button btn-outline btn-addCart ">Thêm vào giỏ</a>
                                            <a href="javascript:void(0)" class="button btn-outline btn-buyNow ">Mua ngay</a>
                                            <a href="javascript:void(0)" class="button btn-outline btn-Soldout hidden">Hết hàng</a>
                                            <div class="clear"></div>
                                        </div>
                                        <div class="pd_saler">
                                            <h3>Chỉ số</h3>
                                            <p>
                                                Xuất xứ : <%=u.getMade_in()%>
                                            </p>
                                            <p>
                                                Phân khối : <%=u.getCapacity()%>
                                            </p>
                                            <p>
                                                Màu : <%=u.getColor()%>
                                            </p>
                                            <p>
                                                Ngày đăng : <%=u.getCreated_at()%>
                                            </p>
                                            <p>
                                                Đời xe : <%=u.getModel_year()%>
                                            </p>

                                            <p>
                                                Loại xe : <%=type%>
                                            </p>
                                            <p>
                                                Địa điểm : <%=u.getLocation()%>
                                            </p>
                                        </div>
                                        <div class="product_socaial">
                                            <div class="box_social">
                                                <div class="fb">
                                                    <div class="fb-like" data-href="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                                                </div>
                                                <div class="gg">
                                                    <div class="g-plus" data-action="share" data-annotation="none" data-href=""></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="information-blocks">
                            <div class="tabs-container style-1">
                                <div class="swiper-tabs description">
                                    <div class="title_chir">
                                        <h2>
                                            Chi tiết sản phẩm
                                        </h2>
                                    </div>
                                    <div class="content-text bg_w">
                                                <%=u.getContent()%>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            <script>
                $(document).on('click', '.btn-addCart', function (e) {
                    e.preventDefault();
                    var id = $('input#one_variant').val(),
                            qty = parseInt($('.quantity-selector .entry.number').text()),
                            img = $('.swiper-feature img.product-image-feature').clone(),
                            title = $('.product-detail-box .product-title').text(),
                            price = $('.product-detail-box .price').clone();
                    if (id == null || id == undefined) {
                        id = $('select#product-selectors').val();
                    }
                    ajaxAddCartItem(id, qty, img, title, price);
                })

                $(".product-thumb img").click(function () {
                    $('.zoomContainer').remove();
                    $('.product-image-feature').removeData('elevateZoom');
                    $(".product-thumb").removeClass('active');
                    $(this).parents('li').addClass('active');
                    $(".product-image-feature").attr("src", $(this).attr("data-image"));
                    if ($(window).width() > 1024) {
                        jQuery(".product-image-feature").elevateZoom({
                            scrollZoom: true,
                            easing: true
                        });
                    }
                    //$(".product-image-feature").attr("data-zoom-image",$(this).attr("data-zoom-image"));
                });

                $(".product-thumb").first().addClass('active');
                $(document).ready(function () {
                    $('.swatch input').click(function () {
                        var _optionID = $(this).parents('.swatch').data('option');
                        var _optionVal = $(this).val();
                        $(this).parents('.select-swap').find('label').removeClass('sd');
                        $(this).next().addClass('sd');
                        $('.single-option-selector[data-option="' + _optionID + '"]').val(_optionVal).trigger('change');
                    })
                    $(document).on('click', '.btn-buyNow', function () {
                        var _variantID = $('#product-selectors').val();
                        var _Qty = parseInt($('.quantity-selector .entry.number').text());
                        ;
                        if (_variantID == null) {
                            _variantID = $('#one_variant').val();
                        }
                        jQuery.ajax({
                            type: "POST",
                            url: "/cart/add.js",
                            data: "quantity=" + _Qty + "&VariantId=" + _variantID,
                            dataType: "json",
                            success: function (e) {
                                window.location = '/checkout';
                            },
                            error: function (e, t) {
                                Bizweb.onError(e, t);
                            }
                        });
                    })
                    jQuery('.slide_thumb_img').owlCarousel({
                        items: 5,
                        loop: false,
                        autoplay: false,
                        margin: 0,
                        responsiveClass: true,
                        nav: true,
                        navText: ['‹', '›'],
                        responsive: {
                            0: {
                                items: 3
                            },
                            319: {
                                items: 3
                            },
                            480: {
                                items: 5
                            },
                            768: {
                                items: 6
                            },
                            992: {
                                items: 4
                            },
                            1200: {
                                items: 5
                            }
                        }
                    })
                    jQuery('.content-related-product').owlCarousel({
                        items: 5,
                        loop: false,
                        autoplay: false,
                        margin: 0,
                        responsiveClass: true,
                        nav: true,
                        navText: ['‹', '›'],
                        responsive: {
                            0: {
                                items: 1,
                                margin: 0,
                            },
                            320: {
                                items: 2,
                                margin: 0,
                            },
                            768: {
                                items: 3
                            },
                            992: {
                                items: 4
                            },
                            1200: {
                                items: 5
                            }
                        }
                    })
                })
                $(document).on('click', '.quantity-selector .entry', function () {
                    var _qty = parseInt($('.quantity-selector .entry.number').text());
                    if ($(this).hasClass('number-minus')) {
                        if (_qty > 1) {
                            $('.quantity-selector .entry.number').html(_qty - 1);
                        }
                    } else {
                        $('.quantity-selector .entry.number').html(_qty + 1);
                    }
                })
            </script>
            <script>
                var selectCallback = function (variant, selector) {

                    var addToCart = jQuery('.add2cart '),
                            productPrice = jQuery('.product-price'),
                            buyNow = jQuery('.buy-now');

                    if (variant) {
                        if (variant.image) {
                            $('.product-thumb img[data-change="' + variant.image.src + '"]').trigger('click');
                        }
                        if (variant.sku != null) {
                            jQuery('.sku').html('<strong>Mã sản phẩm: </strong>' + variant.sku);
                        } else {
                            jQuery('.sku').html('<strong>Mã sản phẩm: </strong>Chưa rõ');
                        }
                        if (variant.available) {
                            jQuery('.btn-addCart').removeClass('hidden');
                            jQuery('.btn-Soldout').addClass('hidden');
                            jQuery('.btn-buyNow').removeClass('hidden');
                            jQuery('.sold').remove();
                        } else {
                            jQuery('.btn-Soldout').removeClass('hidden');
                            jQuery('.btn-addCart').addClass('hidden');
                            jQuery('.btn-buyNow').addClass('hidden');
                            jQuery('.product-preview-box').append('<div class="sold">Hết hàng</div>');
                            jQuery('.quantity-selector').show();
                        }

                        // Regardless of stock, update the product price
                        //productPrice.html(Bizweb.formatMoney(variant.price, "{{amount_no_decimals_with_comma_separator}}₫"));

                        // Also update and show the product's compare price if necessary
                        if (variant.price > 0) {
                            jQuery('.quantity-selector').show();
                            if (variant.compare_at_price > variant.price) {
                                jQuery('.price.detail-info-entry .current').html(Bizweb.formatMoney(variant.price, "{{amount_no_decimals_with_comma_separator}}₫"));
                                jQuery('.price.detail-info-entry .prev').remove();
                                jQuery('.price.detail-info-entry .current').after('<div class="prev">' + Bizweb.formatMoney(variant.compare_at_price, "{{amount_no_decimals_with_comma_separator}}₫") + '</div>')
                                var pro_sold = variant.price;
                                var pro_comp = variant.compare_at_price / 100;
                                var sale = 100 - (pro_sold / pro_comp);
                                var kq_sale = Math.round(sale);
                                jQuery('.sale').remove();
                                jQuery('.product-preview-box').append('<div class="sale">Giảm: ' + kq_sale + "%</div>");
                            } else {
                                jQuery('.price.detail-info-entry .current').html(Bizweb.formatMoney(variant.price, "{{amount_no_decimals_with_comma_separator}}₫"));
                                jQuery('.price.detail-info-entry .prev').remove();
                                jQuery('.sale').remove();
                            }
                        } else {
                            jQuery('.price.detail-info-entry .current').html('Liên hệ');
                            jQuery('.sale').remove();
                            jQuery('.price.detail-info-entry .prev').remove();
                            jQuery('.btn-addCart').addClass('hidden');
                            jQuery('.btn-buyNow').addClass('hidden');
                            jQuery('.quantity-selector').hide();
                        }
                    } else {
                        jQuery('.btn-Soldout').removeClass('hidden');
                        jQuery('.btn-addCart').addClass('hidden');
                        jQuery('.btn-buyNow').addClass('hidden');
                        jQuery('.product-preview-box').append('<div class="sold">Hết hàng</div>');
                        jQuery('.quantity-selector').hide();
                        jQuery('.price.detail-info-entry .current').html('Hết hàng');
                        jQuery('.sale').remove();
                        jQuery('.price.detail-info-entry .prev').remove();
                    }
                };
                jQuery(function ($) {


                    // Add label if only one product option and it isn't 'Title'. Could be 'Size'.


                    // Hide selectors if we only have 1 variant and its title contains 'Default'.

                    $('.selector-wrapper').hide();

                    $('.selector-wrapper').css({
                        'text-align': 'left',
                        'margin-bottom': '15px'
                    });
                });
            </script>
            <script>
                $(document).ready(function () {
                    setTimeout(function () {
                        $('.swatch .select-swap .swatch-element:first-child input').trigger('click');
                    }, 200)
                    if ($(window).width() > 1024) {
                        jQuery(".product-image-feature").elevateZoom({
                            scrollZoom: true,
                            easing: true
                        });
                    }
                })
            </script>
        </div>

        <%@ include file="block/footer.jsp" %>

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
                    <a href="/" class="" title="Trang chủ">
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