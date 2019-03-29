<%-- 
    Document   : detail_bill
    Created on : Mar 29, 2019, 11:38:23 AM
    Author     : sinhs
--%>
<%-- 
    Document   : pr
    Created on : Feb 19, 2019, 4:33:18 AM
    Author     : thanh
--%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="Controller.products"%>
<%@page import="java.util.Vector"%>
<%@page import="Models.Bill_Detail" %>
<%@page import="Controller.bills_detail" %>

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
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Bill_Detail</a></li>
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
                                <h5 class="mb-0">Bill_Detail </h5>
                               
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
                                        String sid = request.getParameter("id");
                                        int id = Integer.parseInt(sid);
                                                session.removeAttribute("status");
                                                bills_detail e = new bills_detail();
                                                Vector<Bill_Detail> list = e.all(id);
                                                
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
                                                <th>product</th>
                                                <th>Giá</th>
                                                <th>Số lượng</th>
                                                <th>Ngày đặt</th>
                                               
                                                
                                                
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
                                                    <a href="index.jsp?status=DetailProduct&id=<%=list.get(i).getId_product()%>">
                                                        <%= products.findbyid(list.get(i).getId_product()).getName()%>
                                                    </a>
                                                    
                                                    
                                                </td>
                                                <td><%=list.get(i).getPrice()%></td>
                                                <td><%=list.get(i).getQuantity()%></td>
                                                <td><%=list.get(i).getCreated_at()%></td>
                                              
                                              
                                                
                                               
                                                
                                                <td>
                                                  
                                                    <!--<a href="index.jsp?status=EditUser&id=<%=list.get(i).getId()%>" class="btn btn-brand active">Sửa </a>-->
                                                    <a href="../bills_detail_delete?id=<%=list.get(i).getId()%>" class="btn btn-danger active">Xóa </a>
<!--                                                    <a href="index.jsp?status=DetailCart&id=<%=list.get(i).getId()%>" class="btn btn-info active">Chi Tiết </a>-->
                                                    <a href="Views/detail_bill?id=<%=list.get(i).getId()%>" class="btn btn-danger active">Chi tiến </a>
                                                    <a class="btn btn-danger active" href="index.jsp?status=Detail_bill&id=<%=list.get(i).getId()%>" >Chi tiến </a>
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
                               
 