<%-- 
    Document   : pr
    Created on : Feb 19, 2019, 4:33:18 AM
    Author     : thanh
--%>

<%@page import="java.util.Vector"%>
<%@page import="Models.Brands" %>
<%@page import="Controller.brands" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Tables</h2>
                            
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Brands</a></li>
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
                                <h5 class="mb-0">Brands </h5>
                               
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
                                        }else if(session.getAttribute("status")== "danger"){
                                    %>
                                    <div class="alert alert-danger" role="alert">
                                                ${alert}
                                            </div>
                                    <%
                                        }
                                    %>
                                    
                                    <%
                                                session.removeAttribute("status");
                                                
                                                brands type = new brands();
                                                Vector<Brands> list = type.all();
                                                
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
                                                <th>tên</th>
                                                
                                                <th>
                                                    <a href="index.jsp?status=AddType" class="btn btn-success active">Thêm </a>
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
                                                <td><%=list.get(i).getName()%></td>
                                               
                                                <td>
                                                    <a href="index.jsp?status=EditBrand&id=<%=list.get(i).getId()%>" class="btn btn-brand active">Sửa </a>
                                                    <a href="../brand_delete?id=<%=list.get(i).getId()%>" class="btn btn-danger active">Xóa </a>
                                                    <a href="index.jsp?status=DetailBrand&id=<%=list.get(i).getId()%>" class="btn btn-info active">Chi Tiết </a>
                                                </td>
                                            </tr>
                                            <%
                                                }
                                            %>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>id</th>
                                                <th>tên</th>
                                                
                                                <th></th>
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
                               
 