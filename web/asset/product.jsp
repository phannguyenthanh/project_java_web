<%@page import="java.text.DecimalFormat"%>
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
                <section id="chir_collection">
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
                                <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><strong itemprop="title">Deal time</strong></li>
                            </ul>
                        </div>
                    </div>
                    <div class="container">
                        <div class="main ">
                            <div class="row">
                                <!-- Left colunm -->
                                <div class="column hidden-xs col-sm-4 col-md-3" id="left_column">
                                    <div class="box_sidebar">
                                        <div class="block left-module hidden-xs">
                                            <p class="title_block">Danh mục loại xe <i class="visible-xs fa fa-angle-down" aria-hidden="true"></i></p>
                                            <div class="block_content">
                                                <!-- layered -->
                                                <div class="layered layered-category">
                                                    <div class="layered-content">
                                                        <ul class="tree-menu">
                                                            <li class=" has-child">
                                                                <span></span>
                                                                <a class="dropdown-toggle has-category parent " href="product.jsp" title="Tất cả sản phẩm" target="_self">
                                                                    <span class="">Tất cả sản phẩm</span>
                                                                </a>
                                                            </li>

                                                            <%                                                  Vector<Types> type = types.all();

                                                                if (type == null) {
                                                                    out.println("<h3>Lỗi kết nối CSDL</h3>");
                                                                } else if (type.size() <= 0) {
                                                                    out.println("<h3>Không có sản phẩm</h3>");
                                                                } else {
                                                                    for (int i = 0; i < type.size(); i++) {
                                                            %>



                                                            <li class="active has-child">
                                                                <span></span>
                                                                <a class="dropdown-toggle has-category parent  current" href="product.jsp?status=type&id=<%=type.get(i).getId()%>" title="Thể thao" target="_self">
                                                                    <span class=""><%=type.get(i).getName()%></span>
                                                                </a>
                                                            </li>
                                                            <%
                                                                    }
                                                                }
                                                            %>


                                                        </ul>
                                                    </div>
                                                </div>
                                                <!-- ./layered -->
                                            </div>
                                        </div>
                                        <div class="block left-module">
                                            <p class="title_block">Sản phẩm nổi bật</p>

                                            <%
                                                products product = new products();
                                                Vector<Products> list_with_view = product.productNew();

                                                if (list_with_view == null) {
                                                    out.println("<h3>Lỗi kết nối CSDL</h3>");
                                                } else if (list_with_view.size() <= 0) {
                                                    out.println("<h3>Không có sản phẩm</h3>");
                                                } else {

                                            %>

                                            <div class="block_content">
                                                <div class="insBestColl">
                                                    <ul class="product-list">

                                                        <%                                                  for (int i = 0; i < list_with_view.size(); i++) {


                                                        %>
                                                        <li class="item_product">
                                                            <div class="chir_loop loop_item insScroll">
                                                                <div class="chir-img">
                                                                    <a href="/apple-ipad-pro-12-9-inch-128gb-wifi" title="">
                                                                        <picture>
                                                                            <source srcset="<%=list_with_view.get(i).getAvatar()%>" media="(min-width: 992px) and (max-width: 1199px)">
                                                                            <source srcset="<%=list_with_view.get(i).getAvatar()%>" media="(min-width: 768px) and (max-width: 991px)">
                                                                            <source srcset="<%=list_with_view.get(i).getAvatar()%>" media="(min-width: 480px) and (max-width: 767px)">
                                                                            <source srcset="<%=list_with_view.get(i).getAvatar()%>" media="(max-width: 479px)">
                                                                            <img srcset="<%=list_with_view.get(i).getAvatar()%>" alt="">
                                                                        </picture>
                                                                    </a>
                                                                    <div class="chi-action">
                                                                        <a href="javascript:void(0)" class="quick_views btn-quickview-1" data-alias="/apple-ipad-pro-12-9-inch-128gb-wifi" ><img src="images/zoom_w.png" alt="Xem nhanh" title="Xem nhanh" /></a>
                                                                        <a href="product-details.jsp?id=<%=list_with_view.get(i).getId()%>"  class="view_product"><img src="images/eye_w.png" alt="Xem chi tiết" title="Xem chi tiết" /></a>
                                                                        <a href="javascript:void(0)" class="add-cart design_cart Addcart" data-variantid="8694263"><img src="images/cart_w.png" alt="Thêm vào giỏ" title="Thêm vào giỏ" /></a>
                                                                    </div>
                                                                </div>
                                                                <div class="product-detail clearfix">
                                                                    <h3 class="pro-name"><a href="/apple-ipad-pro-12-9-inch-128gb-wifi" title="Apple iPad Pro 12.9 inch 128GB Wifi"><%=list_with_view.get(i).getName()%> </a></h3>
                                                                    <p class="pro-price">
                                                                        <%
                                                                            DecimalFormat formatter = new DecimalFormat("###,###,###");
                                                                            out.print(formatter.format(list_with_view.get(i).getPrice()));
                                                                        %>₫ 
                                                                    </p>
                                                                    <div class="product_view_list">
                                                                        <ul>
                                                                            <li>Mã sản phẩm: <span>chưa rõ</span></li>
                                                                            <li>Thương hiệu: <span>chưa rõ</span></li>
                                                                            <li>Mô tả ngắn:
                                                                                <span class="short-des">
                                                                                    iPad Pro - Sức mạnh vượt trội  
                                                                                    Là thế hệ mới nhất của dòng máy tính bảng iPad của Apple, với màn hình Retina lớn đến 12,9 inch chứa đựng bên trong nó là cả một sức mạnh khủng khiếp với bộ vi xử lý Apple A9X, là bản nâng cấp mạnh mẽ nhất hiện nay của iPad. Đi kèm các công nghệ tiên tiến nhất của Apple như Multi touch, Touch ID, iOS 9, camera cũng được nâng cấp đáng kể với iSight 8MP, camera trước hỗ trợ gọi Facetime, HDR, chụp selfie,... 
                                                                                    Màn hình lớn hơn, mỏng hơn.  
                                                                                    iPad Pro có màn hình Retina tiên tiến nhất. Màn hình 12,9 inch, 5.6 triệu điểm ảnh, diện tích hiển thị nhiều hơn 78% so với iPad...
                                                                                </span>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>

                                                        <%
                                                            }
                                                        %>

                                                    </ul>
                                                </div>
                                            </div>

                                            <%
                                                }
                                            %>
                                        </div>
                                    </div>
                                </div>
                                <!-- ./left colunm -->
                                <div class="center_column col-xs-12 col-sm-8 col-md-9 product-col" id="center_column">
                                    <!-- view-product-list-->
                                    <div id="view-product-list" class="view-product-list">
                                        <div class="collection_head relative">
                                            <div class="page_head">
                                                <h1 class="collection_title ins_title">
                                                    <%
                                                        String status = request.getParameter("status");
                                                        String search = request.getParameter("search");
                                                        String sid = request.getParameter("id");

                                                        int id = 0;

                                                        if (status == null || status.equals("")) {

                                                            out.println("Tất cả các sản phẩm");
                                                        } else if (status.equals("search")) {

                                                            out.println("Sản phẩm tìm thấy");

                                                        } else if (status.equals("type")) {

                                                            id = Integer.parseInt(sid);
                                                            Types u = types.findbyid(id);
                                                            out.println("Các loại xe " + u.getName());

                                                        } else if (status.equals("brand")) {

                                                            id = Integer.parseInt(sid);
                                                            Brands u = brands.findbyid(id);
                                                            out.print("Xe được SX theo hãng " + u.getName());
                                                        } else {
                                                            out.println("Tất cả các sản phẩm");
                                                        }
                                                    %>

                                                </h1>
                                            </div>
                                            <ul class="display-product-option">
                                                <li class="view-as-grid selected" data-view="view_grid">
                                                    <span>grid</span>
                                                </li>
                                                <li class="view-as-list" data-view="view_list">
                                                    <span>list</span>
                                                </li>
                                            </ul>
                                            <div class="browse-tags">
                                                <div id="sort-by" class="">
                                                    <label class="left">Sắp xếp: </label>
                                                    <ul>
                                                        <li>
                                                            <span class="sortText">Thứ tự</span><span class="right-arrow"></span>
                                                            <ul>
                                                                <li><a href="?sortby=manual">Mặc định</a></li>
                                                                <li><a href="?sortby=best-selling">Bán chạy nhất</a></li>
                                                                <li><a href="?sortby=alpha-asc">A &rarr; Z</a></li>
                                                                <li><a href="?sortby=alpha-desc">Z &rarr; A</a></li>
                                                                <li><a href="?sortby=price-asc">Giá tăng dần</a></li>
                                                                <li><a href="?sortby=price-desc">Giá giảm dần</a></li>
                                                                <li><a href="?sortby=created-desc">Hàng mới nhất</a></li>
                                                                <li><a href="?sortby=created-asc">Hàng cũ nhất</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- PRODUCT LIST -->  

                                        <%
                                            int itemonpager = 9;

                                            int pages = 1, start = 0, limit = 0;

                                            if (request.getParameter("pages") != null) {
                                                pages = (int) Integer.parseInt(request.getParameter("pages"));
                                            } 
//                                            out.print(pages);

                                            int total = product.countproductOption(status, sid, search);
                                            if (total <= itemonpager) {
                                                start = 0;
                                                limit = total;
                                            } else {
                                                start = (pages - 1) * itemonpager;
                                                limit = itemonpager;
                                            }

                                            Vector<Products> list = product.productOption(status, sid, search, start, limit);

                                            if (list == null) {
                                                out.println("<h3>Lỗi kết nối CSDL</h3>");
                                            } else if (list.size() <= 0) {
                                                out.println("<h3>Không có sản phẩm</h3>");
                                            } else {

                                        %>


                                        <div id="pd_collection">
                                            <ul class="product-list filter products row">

                                                <%                                          for (int i = 0; i < list.size(); i++) {


                                                %>

                                                <li class="item_product col-md-4 col-sm-6 col-xs-6">
                                                    <div class="chir_loop loop_item insScroll">
                                                        <div class="chir-img">
                                                            <a href="/apple-ipad-pro-12-9-inch-128gb-wifi" title="">
                                                                <picture>
                                                                    <source srcset="<%=list.get(i).getAvatar()%>" media="(min-width: 992px) and (max-width: 1199px)">
                                                                    <source srcset="<%=list.get(i).getAvatar()%>" media="(min-width: 768px) and (max-width: 991px)">
                                                                    <source srcset="<%=list.get(i).getAvatar()%>" media="(min-width: 480px) and (max-width: 767px)">
                                                                    <source srcset="<%=list.get(i).getAvatar()%>" media="(max-width: 479px)">
                                                                    <img srcset="<%=list.get(i).getAvatar()%>" alt="">
                                                                </picture>
                                                            </a>
                                                            <div class="chi-action">
                                                                <a href="javascript:void(0)" class="quick_views btn-quickview-1" data-alias="/apple-ipad-pro-12-9-inch-128gb-wifi" ><img src="images/zoom_w.png" alt="Xem nhanh" title="Xem nhanh" /></a>
                                                                <a href="product-details.jsp?id=<%=list.get(i).getId()%>"  class="view_product"><img src="images/eye_w.png" alt="Xem chi tiết" title="Xem chi tiết" /></a>
                                                                <a href="javascript:void(0)" class="add-cart design_cart Addcart" data-variantid="8694263"><img src="images/cart_w.png" alt="Thêm vào giỏ" title="Thêm vào giỏ" /></a>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail clearfix">
                                                            <h3 class="pro-name"><a href="/apple-ipad-pro-12-9-inch-128gb-wifi" title="Apple iPad Pro 12.9 inch 128GB Wifi"><%=list.get(i).getName()%> </a></h3>
                                                            <p class="pro-price">
                                                                <%
                                                                    DecimalFormat formatter = new DecimalFormat("###,###,###");
                                                                    out.print(formatter.format(list.get(i).getPrice()));
                                                                %>₫ 
                                                            </p>
                                                            <div class="product_view_list">
                                                                <ul>
                                                                    <li>Mã sản phẩm: <span>chưa rõ</span></li>
                                                                    <li>Thương hiệu: <span>chưa rõ</span></li>
                                                                    <li>Mô tả ngắn:
                                                                        <span class="short-des">
                                                                            iPad Pro - Sức mạnh vượt trội  
                                                                            Là thế hệ mới nhất của dòng máy tính bảng iPad của Apple, với màn hình Retina lớn đến 12,9 inch chứa đựng bên trong nó là cả một sức mạnh khủng khiếp với bộ vi xử lý Apple A9X, là bản nâng cấp mạnh mẽ nhất hiện nay của iPad. Đi kèm các công nghệ tiên tiến nhất của Apple như Multi touch, Touch ID, iOS 9, camera cũng được nâng cấp đáng kể với iSight 8MP, camera trước hỗ trợ gọi Facetime, HDR, chụp selfie,... 
                                                                            Màn hình lớn hơn, mỏng hơn.  
                                                                            iPad Pro có màn hình Retina tiên tiến nhất. Màn hình 12,9 inch, 5.6 triệu điểm ảnh, diện tích hiển thị nhiều hơn 78% so với iPad...
                                                                        </span>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>

                                                <%
                                                    }

                                                %>

                                            </ul>
                                        </div>

                                        <%                                  }
                                        %>
                                    </div>
                                    <div class="container">

                                        <ul class="pagination">
                                            <%
                                                
                                                for (int i = 1; i < total / 8; i++) {
                                                       %>
                                                       <%
                                                    if (status == null || status.equals("")) {
                                                        %>
                                                        <li <%if(pages==i){%> class="active"<%}%> ><a href="product.jsp?pages=<%=i%>"><%=i%></a></li>
                                                        <%
                                                    } else if (status.equals("search")) {

                                                        %>
                                                        <li <%if(pages==i){%> class="active"<%}%> ><a href="product.jsp?status=<%=status%>&search=<%=search%>&pages=<%=i%>"><%=i%></a></li>
                                                        <%

                                                    } else if(status.equals("type")||status.equals("brand")) {
                                                        %>
                                                         <li <%if(pages==i){%> class="active"<%}%> ><a href="product.jsp?status=<%=status%>&id=<%=id%>&pages=<%=i%>"><%=i%></a></li>
                                                        <%
                                                    }
                                            %>
                                        <%}%>


                                        </ul>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>
                <input type="text" class="hidden" id="coll-handle" value="(collectionid:product=943742)" />
                <div class="overlay_chir filter visible-sm visible-xs"></div>
                <script>
                    var getCookie = function () {
                        var val = '';
                        $.each($.cookie(), function (v, i) {
                            var itemURL = v;
                            if (itemURL == 'CollectionView') {
                                val = i;
                            }
                        });
                        //console.log(val);
                        return val;
                    }
                    $(document).on('click', '.view-product-list .display-product-option li', function () {
                        $('#pd_collection').hide();
                        $('.view-product-list .display-product-option li').removeClass('selected');
                        $(this).addClass('selected');
                        $.cookie('CollectionView', $(this).data('view'), {expires: 7, path: '/'});
                        var type = getCookie();
                        if (type == 'view_grid') {
                            $('.filter').removeClass('view_list').addClass('view_grid');
                        } else {
                            $('.filter').removeClass('view_grid').addClass('view_list');
                        }
                        setTimeout(function () {
                            $('#pd_collection').fadeIn(300);
                        }, 500);
                    })
                    $(document).ready(function () {
                        var type = getCookie();
                        $('.view-product-list .display-product-option li').removeClass('selected');
                        if (type == '') {
                            $.cookie('CollectionView', 'view_grid', {expires: 7, path: '/'});
                        }
                        type = getCookie();
                        if (type == 'view_grid') {
                            $('.filter').removeClass('view_list').addClass('view_grid');
                            $('.view-product-list .display-product-option li.view-as-grid').addClass('selected');
                        } else {
                            $('.filter').removeClass('view_grid').addClass('view_list');
                            $('.view-product-list .display-product-option li.view-as-list').addClass('selected');
                        }
                    })
                </script>
                <input id="collection_id" value="943742" type="hidden"/>
                <script>
                    $(window).load(function () {
                        var sort = window.location.search;
                        if (sort != '' && sort != null) {
                            $('#sort-by span.sortText').text($('#sort-by li li a[href="' + sort + '"]').text());
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
                                <a href="/deal-time" class="current" title="Thời trang nữ">Thời trang nữ <i class="fa fa-angle-down" aria-hidden="true"></i></a>
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
                                        <a href="/deal-time" class="current" title="Quần jean nam">Quần jean nam</a>
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
                                <a href="/deal-time" class="current" title="Phụ kiện công nghệ">Phụ kiện công nghệ <i class="fa fa-angle-down" aria-hidden="true"></i></a>
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
                                <a href="/deal-time" class="current" title="Túi xách nữ">Túi xách nữ</a>
                            </li>
                            <li>
                                <a href="/thoi-trang-ban-chay" title="Balo sale">Balo sale</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/deal-time" class=" current" title="Best Seller">
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

            $("#menu_product").addClass("active");


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