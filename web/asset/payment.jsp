<%@page import="Models.View_Carts"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Map"%>
<%@page import="Models.Item"%>
<%@page import="Models.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    View_Carts cart = (View_Carts) session.getAttribute("cart");
    if(cart == null){
        cart = new View_Carts();
        session.setAttribute("cart", cart);
    }
%>
<!DOCTYPE html>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class="anyflexbox boxshadow display-table">
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="description" content="Super store - Thanh toán đơn hàng" />
      <title>Super store - Thanh toán đơn hàng</title>
      <link rel="shortcut icon" href="//bizweb.dktcdn.net/assets/favicon.ico" type="image/x-icon" />
      <script src='js/jquery.v2.1.3.js' type='text/javascript'></script>
      <link href='css/bootstrap.css' rel='stylesheet' type='text/css' />
      <link href='css/nprogress.css' rel='stylesheet' type='text/css' />
      <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-I6JCnqxMbC2DuiHjsoCiLa15NVbKRf8/ooANRLsXD87zD2dVqzlz6Oqjvj470ztk" crossorigin="anonymous">   
      <link href="css/checkout_dev_2.css" rel="stylesheet" type="text/css">
      <link href='css/checkout.css' rel='stylesheet' type='text/css' />
   </head>
   <body class="body--custom-background-color ">
      <div class="banner" data-header="">
         <div class="wrap">
            <div class="shop logo logo--left ">
               <h1 class="shop__name">
                  <a href="/">
                  Super store
                  </a>
               </h1>
            </div>
         </div>
      </div>
      <button class="order-summary-toggle" bind-event-click="Bizweb.StoreCheckout.toggleOrderSummary(this)">
         <div class="wrap">
            <h2>
               <label class="control-label">Đơn hàng</label>
               <label class="control-label hidden-small-device">
               (1 sản phẩm)
               </label>
               <label class="control-label visible-small-device inline">
               (1)
               </label>
            </h2>
            <a class="underline-none expandable pull-right" href="javascript:void(0)">
            Xem chi tiết
            </a>
         </div>
      </button>
      <div context="paymentStatus" define='{ paymentStatus: new Bizweb.PaymentStatus(this,{payment_processing:"",payment_provider_id:"",payment_info:{} }) }'>
      </div>
      <form method="post" action="../bills_add" data-toggle="validator" class="content stateful-form formCheckout">
         <div class="wrap" context="checkout" define='{checkout: new Bizweb.StoreCheckout(this,{ token: "4e19ca15e033494ea55fedac3290ae5b", email: "", totalOrderItemPrice: 220000.0000, shippingFee: 0, freeShipping: false, requiresShipping: true, existCode: false, code: "", discount: 0, settingLanguage: "vi", moneyFormat: "{{amount_no_decimals_with_comma_separator}}₫", discountLabel: "Miễn phí", districtPolicy: "optional", district: "", province:"", otherAddress: false, shippingId: 0, shippingMethods: [], customerAddressId: 0, reductionCode: "" })}'>
            <div class='sidebar '>
               <div class="sidebar_header">
                  <h2>
                     <label class="control-label">Đơn hàng</label>
                     <label class="control-label">(<%=cart.countItem()%> sản phẩm)</label>
                  </h2>
                  <hr class="full_width"/>
               </div>
               <div class="sidebar__content">
                  <div class="order-summary order-summary--product-list order-summary--is-collapsed">
                     <div class="summary-body summary-section summary-product" >
                        <div class="summary-product-list">
                           <table class="product-table">
                              <tbody>
                                    <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%>
                                 <tr class="product product-has-image clearfix">
                                    <td>
                                       <div class="product-thumbnail">
                                          <div class="product-thumbnail__wrapper">
                                             <img src='<%=list.getValue().getProduct().getAvatar()%>' class='product-thumbnail__image' />
                                          </div>
                                          <span class="product-thumbnail__quantity" aria-hidden="true"><%=list.getValue().getQuantity()%></span>
                                       </div>
                                    </td>
                                    <td class="product-info">
                                       <span class="product-info-name">
                                           <%=list.getValue().getProduct().getName()%>
                                       </span>
                                       <span class="product-info-description">
                                       <%=list.getValue().getProduct().getColor()%>
                                       </span>
                                    </td>
                                    <td class="product-price text-right">
                                       <%
                                                            DecimalFormat formatter = new DecimalFormat("###,###,###");
                                                            out.print(formatter.format(list.getValue().getProduct().getPrice()));
                                                        %>₫ 
                                    </td>
                                 </tr>
                                 <%}%>
                              </tbody>
                           </table>
                           <div class="order-summary__scroll-indicator">
                              Cuộn chuột để xem thêm
                              <i class="fa fa-long-arrow-down" aria-hidden="true"></i>
                           </div>
                        </div>
                     </div>
                     <hr class="m0"/>
                  </div>
                  <div class="order-summary order-summary--discount">
                     <div class="summary-section">
                        <div class="form-group m0" bind-show="!existCode ||code == null || !code.length">
                           <div class="field__input-btn-wrapper">
                              <div class="field__input-wrapper">
                                 <input bind="code" name="code" type="text" class="form-control discount_code" placeholder="Nhập mã giảm giá" value="" id="checkout_reduction_code"/>
                              </div>
                              <button bind-event-click="reduction_code = false, caculateShippingFee('')" class="btn btn-primary event-voucher-apply" type="button">Áp dụng</button>
                           </div>
                        </div>
                        <div bind-class="{'warning' : existCode && !freeShipping && discount == 0,'success' : existCode && ( freeShipping || discount >0 )}" class="clearfix hide" bind-show="code!= null && code.length && existCode">
                           <div class="pull-left">
                              <i class="fa fa-check applied-discount-status-success" aria-hidden="true"></i>
                              <i class="fa fa-exclamation-triangle applied-discount-status-warning" aria-hidden="true"></i>
                           </div>
                           <div bind="code" class="pull-left applied-discount-code">
                           </div>
                           <div bind="(discountShipping && freeShipping) ? 'Miễn phí' : money(discount,'{{amount_no_decimals_with_comma_separator}}₫')" class="pull-right">
                              0
                           </div>
                           <input bind-event-click="removeCode('')" class="btn btn-delete" type="button" value="×" name="commit">
                        </div>
                        <div class="error mt10 hide" bind-show="inValidCode">
                           Mã khuyến mãi không hợp lệ
                        </div>
                     </div>
                     <hr class="m0"/>
                  </div>
                  <div class="order-summary order-summary--total-lines">
                     <div class="summary-section border-top-none--mobile">
                        <div class="total-line total-line-subtotal clearfix">
                           <span class="total-line-name pull-left">
                           Tạm tính
                           </span>
                           <span  class="total-line-subprice pull-right">
                          <%
                                                     DecimalFormat formatter = new DecimalFormat("###,###,###");
                                                    out.print(formatter.format(cart.totalCart()));
                                                %>₫
                           </span>
                        </div>
                        <div class="total-line total-line-shipping clearfix" bind-show="requiresShipping">
                           <span class="total-line-name pull-left">
                           Phí vận chuyển
                           </span>
                           <span class="total-line-shipping pull-right"   >
                           Miễn phí
                           </span>
                        </div>
                        <div class="total-line total-line-total clearfix">
                           <span class="total-line-name pull-left">
                           Tổng cộng
                           </span>
                           <span class="total-line-price pull-right">
                           <%
                                                     
                                                    out.print(formatter.format(cart.totalCart()));
                                                %>₫ 
                           </span>
                        </div>
                     </div>
                  </div>
                  <div class="form-group clearfix hidden-sm hidden-xs">
                     <div class="field__input-btn-wrapper mt10">
                        <a class="previous-link" href="/cart">
                        <i class="fa fa-angle-left fa-lg" aria-hidden="true"></i>
                        <span>Quay về giỏ hàng</span>
                        </a>
                        <input class="btn btn-primary btn-checkout"  type="submit" value="ĐẶT HÀNG" />
                        <!--<input type="submit" value="" />-->
                     </div>
                  </div>
                  <div class="form-group has-error">
                     <div class="help-block ">
                        <ul class="list-unstyled">
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <div class="main" role="main">
               <div class="main_header">
                  <div class="shop logo logo--left ">
                     <h1 class="shop__name">
                        <a href="/">
                        Super store
                        </a>
                     </h1>
                  </div>
               </div>
               <div class="main_content">
                  <div class="row">
                     <div class="col-md-6 col-lg-6">
                        <div class="section" define="{billing_address: {}}">
                           <div class="section__header">
                              <div class="layout-flex layout-flex--wrap">
                                 <h2 class="section__title layout-flex__item layout-flex__item--stretch">
                                    <i class="fa fa-id-card-o fa-lg section__title--icon hidden-md hidden-lg" aria-hidden="true"></i>
                                    <label class="control-label">Thông tin mua hàng</label>
                                 </h2>
                                 <a class="layout-flex__item section__title--link" href="/account/login?returnUrl=/checkout">
                                 <i class="fa fa-user-circle-o fa-lg" aria-hidden="true"></i>
                                 Đăng nhập 
                                 </a>
                              </div>
                           </div>
                            
                           <div class="section__content">
                              
                              <div class="billing">
                                 <div>
                                    <div class="form-group">
                                       <div class="field__input-wrapper" bind-class="{ 'js-is-filled': billing_address.full_name }">
                                          <span class="field__label" bind-event-click="handleClick(this)">
                                          Họ và tên
                                          </span>
                                           <input name="total" type="hidden" value="<%=cart.totalCart()%>" />
                                          <input name="name" type="text" bind-event-change="saveAbandoned()" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_billing_address_last_name" data-error="Vui lòng nhập họ tên" required bind="billing_address.full_name" />
                                       </div>
                                       <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="form-group">
                                       <div class="field__input-wrapper" bind-class="{ 'js-is-filled': billing_address.phone }">
                                          <span class="field__label" bind-event-click="handleClick(this)" >
                                          Số điện thoại
                                          </span>
                                          <input name="phone" data-error="Vui lòng nhập số điện thoại" required bind-event-change="saveAbandoned()" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_billing_address_phone"  bind="billing_address.phone"/>
                                       </div>
                                       <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="form-group">
                                       <div class="field__input-wrapper" bind-class="{ 'js-is-filled': billing_address.address1 }">
                                          <span class="field__label" bind-event-click="handleClick(this)">
                                          Địa chỉ
                                          </span>
                                          <input name="address" data-error="Vui lòng nhập địa chỉ" required bind-event-change="saveAbandoned()" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_billing_address_address1"  bind="billing_address.address1" />
                                       </div>
                                       <div class="help-block with-errors"></div>
                                    </div>

                                    <div bind-show="!otherAddress" class="form-group">
                                       <div class="error hide" bind-show="requiresShipping && loadedShippingMethods && shippingMethods.length == 0  && BillingProvinceId  ">
                                          <label>Khu vực này không hỗ trợ vận chuyển</label>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
    
                       
                        <div class="section" bind-class="{ 'pt0': otherAddress, 'pt10': !otherAddress}">
                           <div class="section__content">
                              <div class="form-group m0">
                                 <textarea name="content" bind-event-change="saveAbandoned()" value="" class="field__input form-control m0" placeholder="Ghi chú"></textarea>
                              </div>
                           </div>
                        </div>
                     </div>
                     
                  </div>
               </div>
               <div class="main_footer footer unprint">
                  <div class="mt10"></div>
               </div>
                
             
              
            </div>
         </div>
      </form>
      <script src='js/jquery-2.1.3.min.js' type='text/javascript'></script>
      <script src='js/bootstrap.min.js' type='text/javascript'></script>
      <script src='js/twine.min.js' type='text/javascript'></script>
      <script src='js/validator.min.js' type='text/javascript'></script>
      <script src='js/nprogress.js' type='text/javascript'></script>
      <script src='js/money-helper.js' type='text/javascript'></script>
      <script src="js/ua-parser.pack.js" type='text/javascript'></script>
      <script src="js/checkout_dev_2.js" type='text/javascript'></script>
      <script type="text/javascript">
         $(document).ajaxStart(function () {
             NProgress.start();
         });
         $(document).ajaxComplete(function () {
             NProgress.done();
         });
         
         context = {}
         
         $(function () {
             Twine.reset(context).bind().refresh();
         });
         
         $(document).ready(function () {
         setTimeout(function(){
         }, 50);
         });
      </script>
   </body>
</html>