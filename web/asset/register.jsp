<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
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
      Đăng ký tài khoản  Super store
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
		<meta property="og:title" content="Đăng ký tài khoản" />
		<meta property="og:image" content="http://bizweb.dktcdn.net/100/172/651/themes/226402/assets/share_fb_home.png?1523791827416" />
		<meta property="og:image" content="https://bizweb.dktcdn.net/100/172/651/themes/226402/assets/share_fb_home.png?1523791827416" />
		<meta property="og:url" content="https://super-store.bizwebvietnam.net/account/login" />
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
              <style>
                #columns {
                padding-bottom: 0;
                }
                .reg-shop {	
                margin: 0;
                max-width: 100%;
                padding: 20px;
                }
                .userbox {
                padding: 0px 0px;
                }
                .userbox form > strong {
                font-size: 16px;
                }
                .reg-shop p{
                line-height: 1.2;
                margin: 10px 0px;
                }
                span.required {
                color: red;
                margin-left: 5px;
                }
                p.required{
                margin-bottom: 10px;	
                font-size: 12px;
                }
                #customer_register ul.form-list input {
                margin-bottom: 10px;
                }
                .buttons-set a{
                vertical-align: middle;
                margin-left: 10px;	
                }
                .buttons-set button#send2 {
                margin-right: 10px;
                background: #111312;
                border: none;
                color: #fff;
                outline: none;
                padding: 0;
                height: 35px;
                }
                .form-list li {
                padding-right: 20px;
                margin: 0;
                }
              </style>
              <div class="columns-container account-customer">
                <div class="container" id="columns">
                  <div class="row clearfix">
                    <div id="layout-page"  class="col-lg-12 col-md-12 col-sm-12 col-xs-12 " id="layout-page">
                      <div class="reg-shop">
                        <span class="account-ver-title">
                          <h1>Tạo tài khoản</h1>
                        </span>
                        <div class="userbox">
                          <form accept-charset='UTF-8' action='/account/register' id='customer_register' method='post'>
                            <input name='FormType' type='hidden' value='customer_register' />
                            <input name='utf8' type='hidden' value='true' />            
                            <p class="text-reg">Bạn đã có tài khoản? Hãy <a href="/account/login">Đăng nhập</a></p>
                            <ul class="form-list row">
                              <li class="col-sm-6 col-xs-12">
                                <div class="customer-name">
                                  <div class="input-box name-firstname">
                                    <label for="firstname"> Tên <span class="required">*</span></label>
                                    <br>
                                    <input type="text" name="FirstName" title="Tên" class="input-text "placeholder="Tên" id="firstname">
                                  </div>
                                </div>
                              </li>
                              <li class="col-sm-6 col-xs-12">
                                <div class="input-box name-lastname">
                                  <label for="lastname"> Họ <span class="required">*</span> </label>
                                  <br>
                                  <input type="text" class="input-text" value="" id="lastname" title="email" name="LastName" id="email" placeholder="Họ" >
                                </div>
                              </li>
                              <li class="col-sm-6 col-xs-12">
                                <label for="email">Email<span class="required">*</span></label>
                                <br>                
                                <input type="email" value="" class="input-text" title="Email" name="email" id="email" placeholder="Email">
                              </li>
                              <li class="col-sm-6 col-xs-12">
                                <label for="pass">Mật khẩu<span class="required">*</span></label>
                                <br>                
                                <input type="password" value="" class="input-text" title="Mật khẩu" name="password" id="pass" placeholder="Mật khẩu">
                              </li>
                            </ul>
                            <p class="required"><span class="required">*</span> Bắt buộc</p>
                            <div class="buttons-set">
                              <button id="send2" type="submit" class="button login"><span>Đăng ký</span></button>              
                              <!--hoặc <a href="/account/login">Đăng nhập</a> -->
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                    <!-- #register -->
                  </div>
                </div>
              </div>
              <!-- #customer-register -->
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
            			if(_imgSRC.indexOf('-1')){
            				_imgSRC = _imgSRC.split('?');
            				_urlIMG = _imgSRC[0];
            			}else{
            				_urlIMG = _imgSRC;
            			}
            			setTimeout(function(){
            				modal.find('.product-thumb a[data-image="'+Bizweb.resizeImage(_urlIMG, 'medium')+'"] img').trigger('click');
            			},300)
            		}
            		if(variant.price > 0 ){
            			modal.find('.noPrice').hide();
            			modal.find('.addToCartModal').show();
            			modal.find('.qv-readmore > span').show();
            			modal.find('.qty').show();
            			modal.find('.p-price').html(Bizweb.formatMoney(variant.price, "{{amount_no_decimals_with_comma_separator}}₫"));
            			if (variant.compare_at_price > variant.price )
            				modal.find('del').html(Bizweb.formatMoney(variant.compare_at_price, "{{amount_no_decimals_with_comma_separator}}₫"));
            			else
            				modal.find('del').html('');
            		}else{
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
            		}
            		else {
            			modal.find('.addToCartModal').addClass('disabled').attr('disabled','disabled').html('Hết hàng');
            			//modal.find('.btn-soldout').css('display', 'block');
            		}
            		if (variant.sku != null ){
            			modal.find('.m-sku').html('<span>Mã sản phẩm: </span>'+ variant.sku).show();
            		}else{
            			modal.find('.m-sku').hide();
            		}
            	}
            	else {
            		modal.find('.addToCartModal').addClass('disabled').attr('disabled','disabled').html('Hết hàng').show();
            		modal.find('.p-price').html('Hết hàng');
            		modal.find('.qty').hide();
            		modal.find('del').html('');
            	}
            }
            var p_select_data = $('.p-option-wrapper').html();
            var p_zoom = $('.image-zoom').html();
            var quickViewProduct = function (purl) {
            	if ($(window).width() < 680) { window.location = purl; return false; }
            	modal = $('#quick-view-modal'); modal.modal('show');
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
            			if(product.vendor != null){
            				modal.find('.m-vendor').html('<span>Nhà cung cấp: </span>'+ product.vendor).show();
            			}else{
            				modal.find('.m-vendor').hide();
            			}
            			var productdes = product.description;
            			if(productdes == '' || productdes == 'undefined' || productdes == null ){
            				productdes = product.content;
            			}
            			if(productdes != '' && productdes != 'undefined' && productdes != null ){
            				var re_productdes = productdes.replace(/(<([^>]+)>)/ig,"")
            				var des = re_productdes.split("&nbsp;").splice(0, 30).join(" ") + "...";
            				modal.find('.form-des').html(des);
            				modal.find('.form-des').show();
            			}else{
            				modal.find('.form-des').html('Chưa có mô tả cho sản phẩm này!');
            			}
            			$('.image-zoom').html(p_zoom);
            			modal.find('.p-url').attr('href', product.url);
            			if (product.images.length == 0) {
            				modal.find('.p-product-image-feature').attr('src', '//hstatic.net/0/0/global/noDefaultImage6_large.gif');
            			}
            			else {
            				$('#p-sliderproduct').remove();
            				$('.image-zoom').append("<div id='p-sliderproduct' class='flexslider'>");
            				$('#p-sliderproduct').append('<ul class="slides owl_design"></ul>');
            
            				$.each(product.images, function (i, v) {
            					elem = $('<li class="product-thumb">').append('<a href="#" data-image="" data-zoom-image=""><img /></a>');
            					elem.find('a').attr('data-image', Bizweb.resizeImage(v, 'medium'));
            					elem.find('a').attr('data-zoom-image', v);
            					elem.find('img').attr('data-image', Bizweb.resizeImage(v, 'medium'));
            					elem.find('img').attr('data-zoom-image',v);
            					elem.find('img').attr('src', Bizweb.resizeImage(v, 'small'));
            					modal.find('.slides').append(elem);
            				})
            
            				modal.find('.p-product-image-feature').attr('src', product.featured_image);
            				$(".modal-footer .btn-readmore").attr('href', purl);
            				setTimeout(function(){
            					$('#p-sliderproduct .slides').owlCarousel({
            						items: 4,
            						loop: false,
            						autoplay: false,
            						margin: 10,
            						responsiveClass: true,
            						nav : true,
            						navText: ['‹' , '›'],
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
            				},100)
            			}
            			$.each(product.variants, function (i, v) {
            				modal.find('select#product-selectors').append("<option value='" + v.id + "'>" + v.title + ' - ' + v.price + "</option>");
            			})
            			if (product.variants.length == 1 || product.variants[0].title.indexOf('Default') != -1){
            				$('.p-option-wrapper').hide();
            				callBack(product.variants[0], null);
            			}
            			else
            				//$('.p-option-wrapper').hide();
            
            				if (product.variants.length == 1 && product.variants[0].title.indexOf('Default') != -1) {
            					callBack(product.variants[0], null);
            				}
            			else {
            				new Bizweb.OptionSelectors('product-selectors', {
            					product: product,
            					onVariantSelected: callBack, 
            					enableHistoryState: true
            				});     
            				//debugger
            				if (product.options.length == 1 && product.options[0].indexOf('Tiêu đề')==-1)
            
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