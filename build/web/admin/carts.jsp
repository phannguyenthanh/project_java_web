<%-- 
    Document   : pr
    Created on : Feb 19, 2019, 4:33:18 AM
    Author     : thanh
--%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="Controller.products"%>
<%@page import="Controller.users"%>
<%@page import="java.util.Vector"%>
<%@page import="Models.Bills" %>
<%@page import="Controller.bills" %>

<%

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Tables</h2>
                            
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Bills</a></li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                
                <div class="row">
                    <!-- ============================================================== -->
                    <!-- data table multiselects  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">Bills </h5>
                               
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <div>
                                        <div>
                                            
                                            <%
                                                
                                                if(session.getAttribute("status")== "success"){
                                            %>
                                  
                                            <div class="alert alert-success" role="alert">
                                                ${alert}
                                            </div>
                                  
                                    <%
                                        }
                                    %>
                                    
                                    <%
                                                session.removeAttribute("status");
                                                bills e = new bills();
                                                Vector<Bills> list = e.all();
                                                
                                                if(list==null){
                                                    out.println("<h3>Lỗi kết nối CSDL</h3>");
                                                }
                                                else if(list.size()<=0){
                                                    out.println("<h3>Không có sản phẩm</h3>");
                                                }
                                                else
                                                {
                                                    
                                    %>
                                    <table id="example3" class="table table-striped table-bordered" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>id</th>
                                                <th>id_user</th>
                                                <th>Tên</th>
                                                <th>Số điện thoại</th>
                                                <th>Địa chỉ</th>
                                                <th>Tổng tiền</th>
                                                
                                                <th>trạng thái</th>
                                                
                                                
                                                <th>
                                                    Acction
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                             <%        
//                                                    for(int i=0; i<list.size();i++)
//                                                    {
//                                                        int malop = list.get(i).getMalop();
//                                                        String tenlop = dslop.get(i).getTenlop();
                                                
                                                
                                                  for(int i=0; i< list.size();i++)
                                                   {
                                                      
                                                      
                                              %>
                                            <tr>
                                                <td><%=list.get(i).getId()%></td>
                                                <td>
                                                    <a href="index.jsp?status=EditUser&id=<%=list.get(i).getId_user()%>">
                                                        <%= users.findbyid(list.get(i).getId_user()).getName()%>
                                                    </a>
                                                </td>
<!--                                                <td>
                                                    <a href="index.jsp?status=DetailProduct&id=">
                                                        <%--<%= // products.findbyid(list.get(i).getId_product()).getName()%>--%>
                                                    </a>
                                                    
                                                    
                                                </td>-->
                                                <td><%=list.get(i).getName()%></td>
                                                <td><%=list.get(i).getPhone()%></td>
                                                <td><%=list.get(i).getAddress()%></td>
                                                <td><%=list.get(i).getTotal()%></td>
                                                <td><%=list.get(i).getId_bill()%></td>
                                              
                                              
                                                
                                                <td>
                                                
                                                    <%
                                                        if(list.get(i).getStatus()==0){
                                                             out.println("Chưa đặt" );
                                                        }else if(list.get(i).getStatus()==1){
                                                            out.println("Đã đặt hàng ");
                                                        }else if(list.get(i).getStatus()==2){
                                                            out.println("Đang Chuyển hàng hàng");
                                                        }
                                                        else if(list.get(i).getStatus()==3){
                                                            out.println("Chuyển hàng hàng thành công");
                                                        }
                                                      %>
                                                     
                                                </td>
                                                
                                                <td>
                                                    <%
                                                        if(list.get(i).getStatus()==1){
                                                          
                                                            %>
                                                             <a href="../bills_transport?id=<%=list.get(i).getId()%>" class="btn btn-brand active">Vận chuyển </a>
                                                    <%
                                                           
                                                        }else if(list.get(i).getStatus()==2){
                                                    %>
                                                        <a href="../bills_successful_shipping?id=<%=list.get(i).getId()%>" class="btn btn-success active">Hoàn thành</a>
                                                    <%
                                                        }
                                                       
                                                      %>
                                                    <!--<a href="index.jsp?status=EditUser&id=<%=list.get(i).getId()%>" class="btn btn-brand active">Sửa </a>-->
                                                    <a href="../carts_delete?id=<%=list.get(i).getId()%>" class="btn btn-danger active">Xóa </a>
<!--                                                    <a href="index.jsp?status=DetailCart&id=<%=list.get(i).getId()%>" class="btn btn-info active">Chi Tiết </a>-->

                                                    <a class="btn btn-info active" href="index.jsp?status=Detail_bill&id=<%=list.get(i).getId_bill()%>" >Chi tiến </a>
                                                </td>
                                            </tr>
                                            <%
                                                }
                                            %>
                                        </tbody>
                                        <tfoot>
                                           <tr>
                                                <th>id</th>
                                                <th>id_user</th>
                                                <th>Tên</th>
                                                <th>Số điện thoại</th>
                                                <th>Địa chỉ</th>
                                                <th>Tổng tiền</th>
                                                
                                                <th>trạng thái</th>
                                                
                                                
                                                <th>
                                                    Acction
                                                </th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                        <%
                                                }
                                            %>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end data table multiselects  -->
                    <!-- ============================================================== -->
                </div>
                               
 