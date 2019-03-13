<%-- 
    Document   : create
    Created on : Feb 19, 2019, 11:43:38 AM
    Author     : thanh
--%>


<%@page import="java.util.Vector"%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<!--pageEncoding="UTF-8"%>-->
     
<!DOCTYPE html>
<div class="row">
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="page-header">
            <h2 class="pageheader-title">Thêm</h2>
           
            <div class="page-breadcrumb">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Users</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Thêm</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <!-- ============================================================== -->
    <!-- valifation types -->
    <!-- ============================================================== -->
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="card">
            <h5 class="card-header">Users</h5>
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
                <form 
                    method="post" 
                    action="../users_add" 
                    enctype = "multipart/form-data"
                    id="validationform" 
                    
                    >
                    <div class="form-group row">
                        <label class="col-12 col-sm-3 col-form-label text-sm-right">Tên</label>
                        <div class="col-12 col-sm-8 col-lg-6">
                            <input type="text" required="" name="name" placeholder="Tên " class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-12 col-sm-3 col-form-label text-sm-right">Email </label>
                        <div class="col-12 col-sm-8 col-lg-6">
                            <input type="text" required="" name="email" placeholder="email " class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-12 col-sm-3 col-form-label text-sm-right"> Ảnh  </label>
                        <div class="col-12 col-sm-8 col-lg-6">
                            <input type="file" required="" name="avatar"  placeholder="Ảnh " class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-12 col-sm-3 col-form-label text-sm-right">password </label>
                        <div class="col-12 col-sm-8 col-lg-6">
                            <input type="password" required="" name="password" placeholder="password" class="form-control">
                        </div>
                    </div>
                  
                   
                 

                

                    <div class="form-group row">
                        <label class="col-12 col-sm-3 col-form-label text-sm-right">Quyền </label>

                        <div class="col-12 col-sm-8 col-lg-6">
                            <select class="form-control form-control-sm" name="permissions">
                               
                                <option value="0">Thường</option>
                                <option value="1">admin</option>
                                
                              
                            </select>
                        </div>
                    </div>

                    <div class="form-group row text-right">
                        <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                            <button type="submit" class="btn btn-space btn-primary">Submit</button>
                             <a href="index.jsp?status=User" class="btn btn-space btn-secondary" >Cancel</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end valifation types -->
    <!-- ============================================================== -->
</div>
<script src="assets/validate/products.js"></script>