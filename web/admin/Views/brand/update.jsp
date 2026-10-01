<%-- 
    Document   : update
    Created on : Feb 19, 2019, 11:43:54 AM
    Author     : thanh
--%>


<%@page import="Models.Brands"%>
<%@page import="java.util.Vector"%>
<%@page import="Controller.brands"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
     String sid=request.getParameter("id");  
     int id=Integer.parseInt(sid);  
     
     Brands  u = brands.findbyid(id);
     String name = u.getName();
%>
<!DOCTYPE html>
<div class="row">
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="page-header">
            <h2 class="pageheader-title">Chỉnh sửa </h2>
           
            <div class="page-breadcrumb">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Brands </a></li>
                        <li class="breadcrumb-item active" aria-current="page">Chỉnh sửa </li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <!-- ============================================================== -->
    <!-- valifation brands -->
    <!-- ============================================================== -->
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="card">
            <h5 class="card-header">Brands</h5>
            <div class="card-body">
                                    <%
                                    if(session.getAttribute("status")== "danger"){
                                    %>
                                    <div class="alert alert-danger" role="alert">
                                        ${alert}
                                    </div>
                                    <%
                                        }
                                        session.removeAttribute("status");
                                    %>
                <form method="post" action="../type_edit"
                    id="validationform" 
                    data-parsley-validate=""
                    novalidate="">
                    <input type="hidden" required="" name="id" value="<%=u.getId()%>" placeholder="id " class="form-control">
                    <div class="form-group row">
                        <label class="col-12 col-sm-3 col-form-label text-sm-right">Tên</label>
                        <div class="col-12 col-sm-8 col-lg-6">
                            <input type="text" required="" name="name" value="<%=u.getName()%>" placeholder="Tên " class="form-control">
                        </div>
                    </div>
                    
                    <div class="form-group row text-right">
                        <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                            <button type="submit" class="btn btn-space btn-primary">Submit</button>
                            
                            <a href="index.jsp?status=Brand" class="btn btn-space btn-secondary" >Cancel</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end valifation brands -->
    <!-- ============================================================== -->
</div>
 <script src="assets/validate/products.js"></script>

