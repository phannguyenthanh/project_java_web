<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class="anyflexbox boxshadow display-table">
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="description" content="Super store - Thanh toÃ¡n ÄÆ¡n hÃ ng" />
      <title>Super store - Thanh toÃ¡n ÄÆ¡n hÃ ng</title>
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
               <label class="control-label">ÄÆ¡n hÃ ng</label>
               <label class="control-label hidden-small-device">
               (1 sáº£n pháº©m)
               </label>
               <label class="control-label visible-small-device inline">
               (1)
               </label>
            </h2>
            <a class="underline-none expandable pull-right" href="javascript:void(0)">
            Xem chi tiáº¿t
            </a>
         </div>
      </button>
      <div context="paymentStatus" define='{ paymentStatus: new Bizweb.PaymentStatus(this,{payment_processing:"",payment_provider_id:"",payment_info:{} }) }'>
      </div>
      <form method="post" action="" data-toggle="validator" class="content stateful-form formCheckout">
         <div class="wrap" context="checkout" define='{checkout: new Bizweb.StoreCheckout(this,{ token: "4e19ca15e033494ea55fedac3290ae5b", email: "", totalOrderItemPrice: 220000.0000, shippingFee: 0, freeShipping: false, requiresShipping: true, existCode: false, code: "", discount: 0, settingLanguage: "vi", moneyFormat: "{{amount_no_decimals_with_comma_separator}}â«", discountLabel: "Miá»n phÃ­", districtPolicy: "optional", district: "", province:"", otherAddress: false, shippingId: 0, shippingMethods: [], customerAddressId: 0, reductionCode: "" })}'>
            <div class='sidebar '>
               <div class="sidebar_header">
                  <h2>
                     <label class="control-label">ÄÆ¡n hÃ ng</label>
                     <label class="control-label">(1 sáº£n pháº©m)</label>
                  </h2>
                  <hr class="full_width"/>
               </div>
               <div class="sidebar__content">
                  <div class="order-summary order-summary--product-list order-summary--is-collapsed">
                     <div class="summary-body summary-section summary-product" >
                        <div class="summary-product-list">
                           <table class="product-table">
                              <tbody>
                                 <tr class="product product-has-image clearfix">
                                    <td>
                                       <div class="product-thumbnail">
                                          <div class="product-thumbnail__wrapper">
                                             <img src='images/upload-7148f7f9999d472ea143b534473dc0e3-grande.jpg' class='product-thumbnail__image' />
                                          </div>
                                          <span class="product-thumbnail__quantity" aria-hidden="true">1</span>
                                       </div>
                                    </td>
                                    <td class="product-info">
                                       <span class="product-info-name">
                                       BÃ n phÃ­m chÆ¡i game led giáº£ cÆ¡ R8 1818
                                       </span>
                                       <span class="product-info-description">
                                       Tráº¯ng
                                       </span>
                                    </td>
                                    <td class="product-price text-right">
                                       220.000â«
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                           <div class="order-summary__scroll-indicator">
                              Cuá»n chuá»t Äá» xem thÃªm
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
                                 <input bind="code" name="code" type="text" class="form-control discount_code" placeholder="Nháº­p mÃ£ giáº£m giÃ¡" value="" id="checkout_reduction_code"/>
                              </div>
                              <button bind-event-click="reduction_code = false, caculateShippingFee('')" class="btn btn-primary event-voucher-apply" type="button">Ãp dá»¥ng</button>
                           </div>
                        </div>
                        <div bind-class="{'warning' : existCode && !freeShipping && discount == 0,'success' : existCode && ( freeShipping || discount >0 )}" class="clearfix hide" bind-show="code!= null && code.length && existCode">
                           <div class="pull-left">
                              <i class="fa fa-check applied-discount-status-success" aria-hidden="true"></i>
                              <i class="fa fa-exclamation-triangle applied-discount-status-warning" aria-hidden="true"></i>
                           </div>
                           <div bind="code" class="pull-left applied-discount-code">
                           </div>
                           <div bind="(discountShipping && freeShipping) ? 'Miá»n phÃ­' : money(discount,'{{amount_no_decimals_with_comma_separator}}â«')" class="pull-right">
                              0
                           </div>
                           <input bind-event-click="removeCode('')" class="btn btn-delete" type="button" value="Ã" name="commit">
                        </div>
                        <div class="error mt10 hide" bind-show="inValidCode">
                           MÃ£ khuyáº¿n mÃ£i khÃ´ng há»£p lá»
                        </div>
                     </div>
                     <hr class="m0"/>
                  </div>
                  <div class="order-summary order-summary--total-lines">
                     <div class="summary-section border-top-none--mobile">
                        <div class="total-line total-line-subtotal clearfix">
                           <span class="total-line-name pull-left">
                           Táº¡m tÃ­nh
                           </span>
                           <span bind="money(totalOrderItemPrice - discount,'{{amount_no_decimals_with_comma_separator}}â«')" class="total-line-subprice pull-right">
                           220.000â«
                           </span>
                        </div>
                        <div class="total-line total-line-shipping clearfix" bind-show="requiresShipping">
                           <span class="total-line-name pull-left">
                           PhÃ­ váº­n chuyá»n
                           </span>
                           <span bind="shippingFee >  0 ? money(shippingFee,'{{amount_no_decimals_with_comma_separator}}â«') : ((requiresShipping && shippingMethods.length == 0) ? 'Khu vá»±c nÃ y khÃ´ng há» trá»£ váº­n chuyá»n': 'Miá»n phÃ­')" class="total-line-shipping pull-right"  bind-show="ShippingProvinceId || BillingProvinceId && !otherAddress || (requiresShipping && shippingMethods.length > 0)" >
                           Miá»n phÃ­
                           </span>
                        </div>
                        <div class="total-line total-line-total clearfix">
                           <span class="total-line-name pull-left">
                           Tá»ng cá»ng
                           </span>
                           <span bind="money(totalOrderItemPrice + (isNaN(shippingFee) ? 0 : shippingFee) - discount,'{{amount_no_decimals_with_comma_separator}}â«')" class="total-line-price pull-right">
                           220.000â« 323abc
                           </span>
                        </div>
                     </div>
                  </div>
                  <div class="form-group clearfix hidden-sm hidden-xs">
                     <div class="field__input-btn-wrapper mt10">
                        <a class="previous-link" href="/cart">
                        <i class="fa fa-angle-left fa-lg" aria-hidden="true"></i>
                        <span>Quay vá» giá» hÃ ng</span>
                        </a>
                        <input class="btn btn-primary btn-checkout" data-loading-text="Äang xá»­ lÃ½" type="button" bind-event-click="paymentCheckout('AIzaSyDWReBlPxFt-i145Gsd502wOqRS0KXFHW4;AIzaSyAbtwApDToQWn7snVio3Y9PWFbcpdnOWdk;AIzaSyA5rJOu8wci0li24bnZ1WogMEH93p-DGlM')" value="Äáº¶T HÃNG" />
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
                                    <label class="control-label">ThÃ´ng tin mua hÃ ng</label>
                                 </h2>
                                 <a class="layout-flex__item section__title--link" href="/account/login?returnUrl=/checkout">
                                 <i class="fa fa-user-circle-o fa-lg" aria-hidden="true"></i>
                                 ÄÄng nháº­p 
                                 </a>
                              </div>
                           </div>
                           <div class="section__content">
                              <div class="form-group" bind-class="{'has-error' : invalidEmail}">
                                 <div>
                                    <label class="field__input-wrapper" bind-class="{ 'js-is-filled': email }">
                                    <span class="field__label" bind-event-click="handleClick(this)">
                                    Email
                                    </span>
                                    <input name="Email" type="email" bind-event-change="changeEmail()" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_email" data-error="Vui lÃ²ng nháº­p email ÄÃºng Äá»nh dáº¡ng"  required  name="Email"  value=""  pattern="^([a-zA-Z0-9_\-\.\+]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" bind="email" />
                                    </label>
                                 </div>
                                 <div class="help-block with-errors">
                                 </div>
                              </div>
                              <div class="billing">
                                 <div>
                                    <div class="form-group">
                                       <div class="field__input-wrapper" bind-class="{ 'js-is-filled': billing_address.full_name }">
                                          <span class="field__label" bind-event-click="handleClick(this)">
                                          Há» vÃ  tÃªn
                                          </span>
                                          <input name="BillingAddress.LastName" type="text" bind-event-change="saveAbandoned()" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_billing_address_last_name" data-error="Vui lÃ²ng nháº­p há» tÃªn" required bind="billing_address.full_name" />
                                       </div>
                                       <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="form-group">
                                       <div class="field__input-wrapper" bind-class="{ 'js-is-filled': billing_address.phone }">
                                          <span class="field__label" bind-event-click="handleClick(this)">
                                          Sá» Äiá»n thoáº¡i
                                          </span>
                                          <input name="BillingAddress.Phone" bind-event-change="saveAbandoned()" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_billing_address_phone"  bind="billing_address.phone"/>
                                       </div>
                                       <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="form-group">
                                       <div class="field__input-wrapper" bind-class="{ 'js-is-filled': billing_address.address1 }">
                                          <span class="field__label" bind-event-click="handleClick(this)">
                                          Äá»a chá»
                                          </span>
                                          <input name="BillingAddress.Address1" bind-event-change="saveAbandoned()" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_billing_address_address1"  bind="billing_address.address1" />
                                       </div>
                                       <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="form-group">
                                       <div class="field__input-wrapper field__input-wrapper--select">
                                          <label class="field__label" for="BillingProvinceId">
                                          Tá»nh thÃ nh
                                          </label>
                                          <select class="field__input field__input--select form-control" name="BillingProvinceId" id="billingProvince" required data-error="Báº¡n chÆ°a chá»n tá»nh thÃ nh" bind-event-change="billingProviceChange('')" bind="BillingProvinceId">
                                             <option value=''>--- Chá»n tá»nh thÃ nh ---</option>
                                             <option  value="1">HÃ  Ná»i</option>
                                             <option  value="2">TP Há» ChÃ­ Minh</option>
                                             <option  value="3">An Giang</option>
                                             <option  value="4">BÃ  Rá»a-VÅ©ng TÃ u</option>
                                             <option  value="5">Báº¯c Giang</option>
                                             <option  value="6">Báº¯c Káº¡n</option>
                                             <option  value="7">Báº¡c LiÃªu</option>
                                             <option  value="8">Báº¯c Ninh</option>
                                             <option  value="9">Báº¿n Tre</option>
                                             <option  value="10">BÃ¬nh Äá»nh</option>
                                             <option  value="11">BÃ¬nh DÆ°Æ¡ng</option>
                                             <option  value="12">BÃ¬nh PhÆ°á»c</option>
                                             <option  value="13">BÃ¬nh Thuáº­n</option>
                                             <option  value="14">CÃ  Mau</option>
                                             <option  value="15">Cáº§n ThÆ¡</option>
                                             <option  value="16">Cao Báº±ng</option>
                                             <option  value="17">ÄÃ  Náºµng</option>
                                             <option  value="18">Äáº¯k Láº¯k</option>
                                             <option  value="19">Äáº¯k NÃ´ng</option>
                                             <option  value="20">Äiá»n BiÃªn</option>
                                             <option  value="21">Äá»ng Nai</option>
                                             <option  value="22">Äá»ng ThÃ¡p</option>
                                             <option  value="23">Gia Lai</option>
                                             <option  value="24">HÃ  Giang</option>
                                             <option  value="25">HÃ  Nam</option>
                                             <option  value="26">HÃ  TÄ©nh</option>
                                             <option  value="27">Háº£i DÆ°Æ¡ng</option>
                                             <option  value="28">Háº£i PhÃ²ng</option>
                                             <option  value="29">Háº­u Giang</option>
                                             <option  value="30">HÃ²a BÃ¬nh</option>
                                             <option  value="31">HÆ°ng YÃªn</option>
                                             <option  value="32">KhÃ¡nh HÃ²a</option>
                                             <option  value="33">KiÃªn Giang</option>
                                             <option  value="34">Kon Tum</option>
                                             <option  value="35">Lai ChÃ¢u</option>
                                             <option  value="36">LÃ¢m Äá»ng</option>
                                             <option  value="37">Láº¡ng SÆ¡n</option>
                                             <option  value="38">LÃ o Cai</option>
                                             <option  value="39">Long An</option>
                                             <option  value="40">Nam Äá»nh</option>
                                             <option  value="41">Nghá» An</option>
                                             <option  value="42">Ninh BÃ¬nh</option>
                                             <option  value="43">Ninh Thuáº­n</option>
                                             <option  value="44">PhÃº Thá»</option>
                                             <option  value="45">PhÃº YÃªn</option>
                                             <option  value="46">Quáº£ng BÃ¬nh</option>
                                             <option  value="47">Quáº£ng Nam</option>
                                             <option  value="48">Quáº£ng NgÃ£i</option>
                                             <option  value="49">Quáº£ng Ninh</option>
                                             <option  value="50">Quáº£ng Trá»</option>
                                             <option  value="51">SÃ³c TrÄng</option>
                                             <option  value="52">SÆ¡n La</option>
                                             <option  value="53">TÃ¢y Ninh</option>
                                             <option  value="54">ThÃ¡i BÃ¬nh</option>
                                             <option  value="55">ThÃ¡i NguyÃªn</option>
                                             <option  value="56">Thanh HÃ³a</option>
                                             <option  value="57">Thá»«a ThiÃªn Huáº¿</option>
                                             <option  value="58">Tiá»n Giang</option>
                                             <option  value="59">TrÃ  Vinh</option>
                                             <option  value="60">TuyÃªn Quang</option>
                                             <option  value="61">VÄ©nh Long</option>
                                             <option  value="62">VÄ©nh PhÃºc</option>
                                             <option  value="63">YÃªn BÃ¡i</option>
                                          </select>
                                       </div>
                                       <div class="help-block with-errors"></div>
                                    </div>
                                    <div bind-show="!otherAddress" class="form-group">
                                       <div class="field__input-wrapper field__input-wrapper--select">
                                          <label class="field__label" for="BillingDistrictId">
                                          Quáº­n huyá»n
                                          </label>
                                          <select class="field__input field__input--select form-control" name="BillingDistrictId" id="billingDistrict"  bind-event-change="billingDistrictChange('')" bind="BillingDistrictId">
                                             <option value="">--- Chá»n quáº­n huyá»n ---</option>
                                          </select>
                                       </div>
                                       <div class="help-block with-errors"></div>
                                    </div>
                                    <div bind-show="!otherAddress" class="form-group">
                                       <div class="error hide" bind-show="requiresShipping && loadedShippingMethods && shippingMethods.length == 0  && BillingProvinceId  ">
                                          <label>Khu vá»±c nÃ y khÃ´ng há» trá»£ váº­n chuyá»n</label>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="section pt10">
                           <div class="section__content">
                              <div class="form-group" bind-show="requiresShipping">
                                 <div class="checkbox-wrapper">
                                    <div class="checkbox__input">
                                       <input class="input-checkbox" type="checkbox"  value="false"  name="otherAddress" id="other_address" bind="otherAddress" bind-event-change="changeOtherAddress(this)">
                                    </div>
                                    <label class="checkbox__label" for="other_address">
                                    Giao hÃ ng Äáº¿n Äá»a chá» khÃ¡c
                                    </label>          
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="section pt10" bind-show="otherAddress">
                           <div class="section__header">
                              <h2 class="section__title">
                                 <i class="fa fa-id-card-o fa-lg section__title--icon hidden-md hidden-lg" aria-hidden="true"></i>
                                 <label class="control-label">
                                 ThÃ´ng tin nháº­n hÃ ng
                                 </label>
                              </h2>
                           </div>
                           <div class="section__content">
                              <div bind-show="otherAddress" define="{shipping_address: {}, shipping_expand:true,show_district:  true ,show_country:  false }" class="shipping  hide ">
                                 <div bind-show="shipping_expand || !otherAddress">
                                    <div class="form-group">
                                       <div class="field__input-wrapper" bind-class="{ 'js-is-filled': shipping_address.full_name }">
                                          <span class="field__label" bind-event-click="handleClick(this)">
                                          Há» vÃ  tÃªn
                                          </span>
                                          <input name="ShippingAddress.LastName" bind-event-change="saveAbandoned()" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_shipping_address_last_name" data-error="Vui lÃ²ng nháº­p há» tÃªn" bind="shipping_address.full_name" />
                                       </div>
                                       <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="form-group">
                                       <div class="field__input-wrapper" bind-class="{ 'js-is-filled': shipping_address.phone }">
                                          <span class="field__label" bind-event-click="handleClick(this)">
                                          Sá» Äiá»n thoáº¡i
                                          </span>
                                          <input name="ShippingAddress.Phone" bind-event-change="saveAbandoned()" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_shipping_address_phone"  bind="shipping_address.phone"/>
                                       </div>
                                       <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="form-group">
                                       <div class="field__input-wrapper" bind-class="{ 'js-is-filled': shipping_address.address1 }">
                                          <span class="field__label" bind-event-click="handleClick(this)">
                                          Äá»a chá»
                                          </span>
                                          <input name="ShippingAddress.Address1" bind-event-change="saveAbandoned()" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_shipping_address_address1"  bind="shipping_address.address1" />
                                       </div>
                                       <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="form-group">
                                       <div class="field__input-wrapper field__input-wrapper--select">
                                          <label class="field__label" for="BillingProvinceId">
                                          Tá»nh thÃ nh
                                          </label>
                                          <select class="field__input field__input--select form-control" name="ShippingProvinceId" id="shippingProvince" data-error="Báº¡n chÆ°a chá»n tá»nh thÃ nh" bind-event-change="shippingProviceChange('')" bind="ShippingProvinceId">
                                             <option value=''>--- Chá»n tá»nh thÃ nh ---</option>
                                             <option  value="1">HÃ  Ná»i</option>
                                             <option  value="2">TP Há» ChÃ­ Minh</option>
                                             <option  value="3">An Giang</option>
                                             <option  value="4">BÃ  Rá»a-VÅ©ng TÃ u</option>
                                             <option  value="5">Báº¯c Giang</option>
                                             <option  value="6">Báº¯c Káº¡n</option>
                                             <option  value="7">Báº¡c LiÃªu</option>
                                             <option  value="8">Báº¯c Ninh</option>
                                             <option  value="9">Báº¿n Tre</option>
                                             <option  value="10">BÃ¬nh Äá»nh</option>
                                             <option  value="11">BÃ¬nh DÆ°Æ¡ng</option>
                                             <option  value="12">BÃ¬nh PhÆ°á»c</option>
                                             <option  value="13">BÃ¬nh Thuáº­n</option>
                                             <option  value="14">CÃ  Mau</option>
                                             <option  value="15">Cáº§n ThÆ¡</option>
                                             <option  value="16">Cao Báº±ng</option>
                                             <option  value="17">ÄÃ  Náºµng</option>
                                             <option  value="18">Äáº¯k Láº¯k</option>
                                             <option  value="19">Äáº¯k NÃ´ng</option>
                                             <option  value="20">Äiá»n BiÃªn</option>
                                             <option  value="21">Äá»ng Nai</option>
                                             <option  value="22">Äá»ng ThÃ¡p</option>
                                             <option  value="23">Gia Lai</option>
                                             <option  value="24">HÃ  Giang</option>
                                             <option  value="25">HÃ  Nam</option>
                                             <option  value="26">HÃ  TÄ©nh</option>
                                             <option  value="27">Háº£i DÆ°Æ¡ng</option>
                                             <option  value="28">Háº£i PhÃ²ng</option>
                                             <option  value="29">Háº­u Giang</option>
                                             <option  value="30">HÃ²a BÃ¬nh</option>
                                             <option  value="31">HÆ°ng YÃªn</option>
                                             <option  value="32">KhÃ¡nh HÃ²a</option>
                                             <option  value="33">KiÃªn Giang</option>
                                             <option  value="34">Kon Tum</option>
                                             <option  value="35">Lai ChÃ¢u</option>
                                             <option  value="36">LÃ¢m Äá»ng</option>
                                             <option  value="37">Láº¡ng SÆ¡n</option>
                                             <option  value="38">LÃ o Cai</option>
                                             <option  value="39">Long An</option>
                                             <option  value="40">Nam Äá»nh</option>
                                             <option  value="41">Nghá» An</option>
                                             <option  value="42">Ninh BÃ¬nh</option>
                                             <option  value="43">Ninh Thuáº­n</option>
                                             <option  value="44">PhÃº Thá»</option>
                                             <option  value="45">PhÃº YÃªn</option>
                                             <option  value="46">Quáº£ng BÃ¬nh</option>
                                             <option  value="47">Quáº£ng Nam</option>
                                             <option  value="48">Quáº£ng NgÃ£i</option>
                                             <option  value="49">Quáº£ng Ninh</option>
                                             <option  value="50">Quáº£ng Trá»</option>
                                             <option  value="51">SÃ³c TrÄng</option>
                                             <option  value="52">SÆ¡n La</option>
                                             <option  value="53">TÃ¢y Ninh</option>
                                             <option  value="54">ThÃ¡i BÃ¬nh</option>
                                             <option  value="55">ThÃ¡i NguyÃªn</option>
                                             <option  value="56">Thanh HÃ³a</option>
                                             <option  value="57">Thá»«a ThiÃªn Huáº¿</option>
                                             <option  value="58">Tiá»n Giang</option>
                                             <option  value="59">TrÃ  Vinh</option>
                                             <option  value="60">TuyÃªn Quang</option>
                                             <option  value="61">VÄ©nh Long</option>
                                             <option  value="62">VÄ©nh PhÃºc</option>
                                             <option  value="63">YÃªn BÃ¡i</option>
                                          </select>
                                       </div>
                                       <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="form-group">
                                       <div class="field__input-wrapper field__input-wrapper--select">
                                          <label class="field__label" for="BillingDistrictId">
                                          Quáº­n huyá»n
                                          </label>
                                          <select class="field__input field__input--select form-control" name="ShippingDistrictId" id="shippingDistrict"  bind-event-change="shippingDistrictChange('')" bind="ShippingDistrictId">
                                             <option value="">--- Chá»n quáº­n huyá»n ---</option>
                                          </select>
                                       </div>
                                       <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="form-group">
                                       <div class="error hide" bind-show="requiresShipping && shippingMethods.length == 0 && ShippingProvinceId ">
                                          <label>Khu vá»±c nÃ y khÃ´ng há» trá»£ váº­n chuyá»n</label>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="section" bind-class="{ 'pt0': otherAddress, 'pt10': !otherAddress}">
                           <div class="section__content">
                              <div class="form-group m0">
                                 <textarea name="note" bind-event-change="saveAbandoned()" value="" class="field__input form-control m0" placeholder="Ghi chÃº"></textarea>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-6 col-lg-6">
                        <div class="section shipping-method hide" bind-show="shippingMethods.length > 0">
                           <div class="section__header">
                              <h2 class="section__title">
                                 <i class="fa fa-truck fa-lg section__title--icon hidden-md hidden-lg" aria-hidden="true"></i>
                                 <label class="control-label">Váº­n chuyá»n</label>
                              </h2>
                           </div>
                           <div class="section__content">
                              <div class="content-box">
                              </div>
                           </div>
                        </div>
                        <div class="section payment-methods" bind-class="{'p0--desktop': shippingMethods.length == 0}">
                           <div class="section__header">
                              <h2 class="section__title">
                                 <i class="fa fa-credit-card fa-lg section__title--icon hidden-md hidden-lg" aria-hidden="true"></i>
                                 <label class="control-label">Thanh toÃ¡n</label>
                              </h2>
                           </div>
                           <div class="section__content">
                              <div class="content-box">
                                 <div class="content-box__row">
                                    <div class="radio-wrapper">
                                       <div class="radio__input">
                                          <input class="input-radio" type="radio" value="176129" name="PaymentMethodId" id="payment_method_176129" data-check-id="4" bind="payment_method_id" checked>
                                       </div>
                                       <label class="radio__label" for="payment_method_176129">
                                          <span class="radio__label__primary">Thanh toÃ¡n khi giao hÃ ng (COD)</span>
                                          <span class="radio__label__accessory">
                                             <ul>
                                                <li class="payment-icon-v2 payment-icon--4">
                                                   <i class="fa fa-money payment-icon-fa" aria-hidden="true"></i>
                                                </li>
                                             </ul>
                                          </span>
                                       </label>
                                    </div>
                                    <!-- /radio-wrapper--> 
                                 </div>
                                 <div class="radio-wrapper content-box__row content-box__row--secondary hide" id="payment-gateway-subfields-176129" bind-show="payment_method_id == 176129">
                                    <div class="blank-slate">
                                       <p>cod</p>
                                    </div>
                                 </div>
                                 <a href="javascript:void(0)" data-toggle="modal" data-target="#moca-modal" data-backdrop="static" data-keyboard="false" class="trigger-moca-modal" style="display: none;" title="Thanh toÃ¡n qua Moca">
                                 </a>
                                 <a href="javascript:void(0)" data-toggle="modal" data-target="#qr-error-modal" class="trigger-qr-error-modal" style="display: none;" title="Lá»i thanh toÃ¡n">
                                 </a>
                                 <a data-toggle="modal" data-target="#zalopay_modal" data-backdrop="static" data-keyboard="false" class="trigger-zalopay-modal" style="display: none;" title="Thanh toÃ¡n qua ZaloPay">
                                 </a>
                                 <div class="modal fade moca-modal" id="moca-modal" tabindex="-1" role="dialog">
                                    <div class="modal-dialog">
                                       <div class="modal-content">
                                          <div>
                                             <iframe style="border: 0px; width: 100%; height: 100%;" src=""></iframe>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="modal fade" id="qr-error-modal" data-width="" tabindex="-1" role="dialog">
                                    <div class="modal-dialog">
                                       <div class="modal-content">
                                          <div class="modal-body">
                                             <button aria-hidden="true" data-dismiss="modal" class="close" type="button">Ã</button>
                                             <div class="invalid_order">
                                                <p>Giao dá»ch cá»§a báº¡n chÆ°a Äá»§ háº¡n má»©c thanh toÃ¡n</p>
                                                <p>Háº¡n má»©c tá»i thiá»u Äá» thanh toÃ¡n ÄÆ°á»£c lÃ  <span>1Ä</span></p>
                                                <p>Vui lÃ²ng chá»n hÃ¬nh thá»©c thanh toÃ¡n khÃ¡c</p>
                                             </div>
                                             <div class="custom_error_message"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="modal fade zalopay_modal" id="zalopay_modal" tabindex="-1" role="dialog">
                                    <div class="modal-dialog">
                                       <div class="modal-content">
                                          <div class="modal-body">
                                             <div style="display:flex; justify-content: space-around;">
                                                <div class="qr-wrapper">
                                                   <img />
                                                   <div class="qr-timer-container">
                                                      Thá»i gian quÃ©t mÃ£ QR Äá» thanh toÃ¡n cÃ²n <span class="qr-timer" style="color:#4286f6;">300</span> giÃ¢y
                                                   </div>
                                                </div>
                                                <div class="qr-guide-content">
                                                   <p><b>Thá»±c hiá»n theo hÆ°á»ng dáº«n sau Äá» thanh toÃ¡n:</b></p>
                                                   <p>BÆ°á»c 1: Má» á»©ng dá»¥ng ZaloPay</p>
                                                   <p>BÆ°á»c 2: Chá»n "Thanh ToÃ¡n" <img src="//bizweb.dktcdn.net/assets/images/barcode-zalo.png" class="zalopay-qr-payment-icon"></img> vÃ  quÃ©t mÃ£ QR code bÃªn cáº¡nh</p>
                                                   <p>BÆ°á»c 3: HoÃ n thÃ nh cÃ¡c bÆ°á»c thanh toÃ¡n theo hÆ°á»ng dáº«n trÃªn á»©ng dá»¥ng</p>
                                                </div>
                                             </div>
                                             <div style="justify-content: flex-end;display: flex;"><button type="button" class="btn btn-default" data-dismiss="modal">Há»§y thanh toÃ¡n</button></div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="section hidden-md hidden-lg">
                           <div class="form-group clearfix m0">
                              <input class="btn btn-primary btn-checkout" data-loading-text="Äang xá»­ lÃ½" type="button" bind-event-click="paymentCheckout('AIzaSyDWReBlPxFt-i145Gsd502wOqRS0KXFHW4;AIzaSyAbtwApDToQWn7snVio3Y9PWFbcpdnOWdk;AIzaSyA5rJOu8wci0li24bnZ1WogMEH93p-DGlM')" value="Äáº¶T HÃNG" />
                           </div>
                           <div class="text-center mt20">
                              <a class="previous-link" href="/cart">
                              <i class="fa fa-angle-left fa-lg" aria-hidden="true"></i>
                              <span>Quay vá» giá» hÃ ng</span>
                              </a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="main_footer footer unprint">
                  <div class="mt10"></div>
               </div>
               <div class="modal fade" id="refund-policy" data-width="" tabindex="-1" role="dialog">
                  <div class="modal-dialog modal-lg">
                     <div class="modal-content">
                        <div class="modal-header">
                           <button aria-hidden="true" data-dismiss="modal" class="close" type="button">Ã</button>
                           <h4 class="modal-title">ChÃ­nh sÃ¡ch hoÃ n tráº£</h4>
                        </div>
                        <div class="modal-body">
                           <pre></pre>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="modal fade" id="privacy-policy" data-width="" tabindex="-1" role="dialog">
                  <div class="modal-dialog modal-lg">
                     <div class="modal-content">
                        <div class="modal-header">
                           <button aria-hidden="true" data-dismiss="modal" class="close" type="button">Ã</button>
                           <h4 class="modal-title">ChÃ­nh sÃ¡ch báº£o máº­t</h4>
                        </div>
                        <div class="modal-body">
                           <pre></pre>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="modal fade" id="terms-of-service" data-width="" tabindex="-1" role="dialog">
                  <div class="modal-dialog modal-lg">
                     <div class="modal-content">
                        <div class="modal-header">
                           <button aria-hidden="true" data-dismiss="modal" class="close" type="button">Ã</button>
                           <h4 class="modal-title">Äiá»u khoáº£n sá»­ dá»¥ng</h4>
                        </div>
                        <div class="modal-body">
                           <pre></pre>
                        </div>
                     </div>
                  </div>
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