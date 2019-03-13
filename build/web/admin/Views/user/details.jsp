<%-- 
    Document   : details
    Created on : Feb 19, 2019, 11:44:06 AM
    Author     : thanh
--%>

<%@page import="Models.Users"%>
<%@page import="Controller.users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String sid = request.getParameter("id");
    int id = Integer.parseInt(sid);

    Users u = users.findbyid(id);
    String name = u.getName();
%>
<div class="row">
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="page-header">
            <h2 class="pageheader-title">Chi tiết SP</h2>

            <div class="page-breadcrumb">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Produts</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Chi tiết</li>
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
                <h5 class="mb-0">Users </h5>

            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <div>
                        <div>

                            <table id="example3" class="table table-striped table-bordered" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>Tên code</th>
                                        <th>Giá trị </th>

                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>id </td>
                                        <td><%=u.getId()%></td>
                                    </tr>
                                    <tr>
                                        <td>Tên  </td>
                                        <td><%=u.getName()%></td>
                                    </tr>
                                    <tr>
                                        <td>email </td>
                                        <td><%=u.getEmail()%></td>
                                    </tr>
                                    <tr>
                                        <td>ảnh  </td>
                                        <td><img src="<%=u.getAvatar()%>" width="100px" /></td>
                                        
                                    </tr>
                                    <tr>
                                        <td>Quyền  </td>
                                        <td><%=u.getPermissions()%></td>
                                    </tr>
                                    
                                   

                                </tbody>

                            </table>

                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row text-right">
                <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                    
                    <a href="index.jsp?status=User" class="btn btn-space btn-secondary" >Cancel</a>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end data table multiselects  -->
            <!-- ============================================================== -->
        </div>

