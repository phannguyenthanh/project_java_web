<%-- 
    Document   : menu
    Created on : Mar 15, 2019, 11:04:57 AM
    Author     : sinhs
--%>

<%@page import="Models.Brands"%>
<%@page import="Controller.brands"%>
<%@page import="Models.Types"%>
<%@page import="java.util.Vector"%>
<%@page import="Controller.types"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav id="chir_main_menu" class="hidden-sm hidden-xs">
            <div class="main">
               <div class="container">
                  <div class="navar_menu">
                     <ul class="nav-navbar clearfix">
                        <li id="menu_home">
                           <a href="index.jsp" class=" current" title="Trang chủ">
                           Trang chủ
                           <span class="label_icon no_label"></span>
                           </a>
                        </li>
                        <li class="li_child menu_type">
                           <a href="/san-pham-noi-bat" title="Bộ sưu tập" class=" fa_down up">
                           Loại xe <i class="fa fa-angle-down" aria-hidden="true"></i>
                           <span class="label_icon label_hot"></span>
                           </a>
                           <ul class="menu_child levlup_2" role="menu">
                              
                                 <%
                                                
                                                
                                                types types = new types();
                                                Vector<Types> type_menu = types.all();
                                                
                                                if(type_menu==null){
                                                    out.println("<h3>Lỗi kết nối CSDL</h3>");
                                                }
                                                else if(type_menu.size()<=0){
                                                    out.println("<h3>Không có sản phẩm</h3>");
                                                }
                                                else
                                                {
                                                    for(int i=0; i< type_menu.size();i++)
                                                   {
                                                       %>
                                                    
                              
                              <li class="">
                                 <a href="produt?status=type&id=<%=type_menu.get(i).getId()%>" title="Balo hàng hiệu"><%=type_menu.get(i).getName()%></a>
                              </li>
                              
                              <%
                                         }
                                  }
                              %>
                              
                             
                           </ul>
                        </li>
                        <li  id="menu_product">
                           <a href="product.jsp" class="" title="Sản phẩm">
                           Sản phẩm
                           <span class="label_icon no_label"></span>
                           </a>
                        </li>
                        <li class="">
                           <a href="/tin-tuc" class="" title="Tin tức">
                           Tin tức
                           <span class="label_icon label_new"></span>
                           </a>
                        </li>
                        <li class="">
                           <a href="/gioi-thieu" class="" title="Giới thiệu">
                           Giới thiệu
                           <span class="label_icon no_label"></span>
                           </a>
                        </li>
                        <li class="li_child ">
                           <a href="/thoi-trang-ban-chay" title="Thời trang mới" class=" fa_down up">
                           Thương hiệu <i class="fa fa-angle-down" aria-hidden="true"></i>
                           <span class="label_icon no_label"></span>
                           </a>
                           <ul class="menu_child levlup_2" role="menu">
                               
                                 <%
                                                
                                                
                                                brands brands = new brands();
                                                Vector<Brands> brand_menu= brands.all();
                                                
                                                if(brand_menu==null){
                                                    out.println("<h3>Lỗi kết nối CSDL</h3>");
                                                }
                                                else if(brand_menu.size()<=0){
                                                    out.println("<h3>Không có sản phẩm</h3>");
                                                }
                                                else
                                                {
                                                    for(int i=0; i< brand_menu.size();i++)
                                                   {
                                                       %>
                               
                              <li class="">
                                 <a href="product.jsp?status=brand&id=<%=brand_menu.get(i).getId()%>" title="Áo khoát len nam"><%=brand_menu.get(i).getName()%></a>
                              </li>
                              <%
                                  }}
                              %>
                              
                           </ul>
                        </li>
                        <li class="">
                           <a href="/deal-time" class="" title="Best Seller">
                           Best Seller
                           <span class="label_icon label_sale"></span>
                           </a>
                        </li>
                        <li class="">
                           <a href="/lien-he-voi-chung-toi" class="" title="Liên hệ">
                           Liên hệ
                           <span class="label_icon no_label"></span>
                           </a>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </nav>
