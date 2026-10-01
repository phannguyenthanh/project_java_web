<%-- 
    Document   : header
    Created on : Mar 15, 2019, 11:03:24 AM
    Author     : sinhs
--%>

<%@page import="Models.View_Carts"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    View_Carts cart = (View_Carts) session.getAttribute("cart");
    if(cart == null){
        cart = new View_Carts();
        session.setAttribute("cart", cart);
    }
%>
<header id="header_chir" class="bg_w">
            <section id="chir_top_bar" class="hidden-xs hidden-sm">
               <div class="main">
                  <div class="container">
                     <ul>
                        <li><i class="fa fa-map-marker" aria-hidden="true"></i> <span>Số 288, Dương Đình Hội, P. Tăng Nhơn Phú B, Quận 9 - TP Hồ Chí Minh</span></li>
                        <li><a href="mailto:inspire.itdev@gmail.com" ><i class="fa fa-envelope" aria-hidden="true"></i> inspire.itdev@gmail.com</a></li>
                        <li><a href="tel:01662465188"><i class="fa fa-mobile" aria-hidden="true"></i> 01662 465 188</a></li>
                     </ul>
                  </div>
               </div>
            </section>
            <section id="main_header">
               <div class="container">
                  <div class="row">
                     <div id="chir_logo" class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div class="tool_bar_menu visible-xs visible-sm">
                           <a href="javascript:void(0)">
                           <span class="open-menu"></span>
                           </a>
                        </div>
                        <div class="tool_bar_user visible-xs visible-sm">
                           <a href="/cart" title="Giỏ hàng" class="cart_mobile">
                           <span class="cart-control control-4">
                           </span>
                               <span id="count_Cart_mobile" class="header-cart-count CartCount">0</span>
                           </a>
                           <div class="site_user_xs relative">
                              <span class="open-user">
                                 <div class="div-user-control control-2">
                                 </div>
                              </span>
                              <div class="box_user_xs">
                                 <ul class="dropdown-menu info-user user-xs" aria-labelledby="dLabel">
                                    <li class="info"><a href="/account/login" class="login"><i class="fa fa-sign-in" aria-hidden="true"></i> Đăng nhập</a></li>
                                    <li class="info"><a href="/account/register"><i class="fa fa-registered" aria-hidden="true"></i> Đăng ký</a></li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <p>
                            <a href="/"><img src="img/viewmoto-logo.png" style="height:90px" /></a>
                        </p>
                        <h1 class="hide">
                           Super store
                        </h1>
                     </div>
                     <div id="chir_search_head" class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="chir_frm">
                           <form id="frm_search_head" action="product.jsp">
                              <i class="fa fa-search"></i>
                              <input type="hidden" name="status" value="search" />
                              <input required type="text" name="search" placeholder="Tìm kiếm..." />
                              <button type="submit" class="chir_btn_sub">
                              Tìm kiếm
                              </button>
                           </form>
                        </div>
                        <ul class="chir_autocomplete">
<!--                           <li class="title"><strong>Gợi ý từ khóa: </strong></li>
                           <li><span>Thời trang nam, Thời trang nữ, Balo, Túi xách, Mè và bé...</span></li>-->
                        </ul>
                     </div>
                     <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs fr scroll-down2">
                        <div class="control-box">
                           <ul class="ul-control-box">
                              <li class="top-hotline">
                                 <a href="/apps/kiem-tra-don-hang" title="Hot line">
                                 <span class="div-user-control control-4">
                                 <img src="images/phone.png"/>
                                 </span>
                                 <span class="info">Tra cứu đơn hàng</span>
                                 </a>
                              </li>
                              <li class="top-cart-block">
                                 <a href="cart.jsp" class="open-cart-popup" title="Giỏ hàng">
                                 <span class="div-user-control control-4" id="cartItemsCount">
                                 </span>
                                 <span class="info">Giỏ hàng</span>
                                 <span id="count_Cart" class="header-cart-count CartCount"><%=cart.countItem()%></span>
                                 </a>
                              </li>
                              <li class="dropdown" id="segment_user_do_login">
                                  <%
                                    if(session.getAttribute("account_asset")== "ok"){  
                                  %>
                                    <a class="info" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <div class="div-user-control control-2" >
                                            <img src="${avatar_asset}">
                                    </div>
                                    <span> ${name_asset}</span>
                                 </a>
                                 <ul class="dropdown-menu info-user" aria-labelledby="dLabel">
                                    <li class="info"><a href="login.jsp" class="login"><i class="fa fa-sign-in" aria-hidden="true"></i> Tài khoản</a></li>
                                    <li class="info"><a href="../logout_asset"><i class="fa fa-registered" aria-hidden="true"></i> Đăng xuất</a></li>
                                 </ul>
                                  <%}else{%>
                                 <a class="info" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    <div class="div-user-control control-2" >
                                        <img src="default/img_264157.png">
                                    </div>
                                    <span> Tài khoản </span>
                                 </a>
                                 <ul class="dropdown-menu info-user" aria-labelledby="dLabel">
                                    <li class="info"><a href="login.jsp" class="login"><i class="fa fa-sign-in" aria-hidden="true"></i> Đăng nhập</a></li>
                                    <li class="info"><a href="register.jsp"><i class="fa fa-registered" aria-hidden="true"></i> Đăng ký</a></li>
                                 </ul>
                                 <%}%>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
         </header>
