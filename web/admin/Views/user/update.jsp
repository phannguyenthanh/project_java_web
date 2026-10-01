<%-- 
    Document   : update
    Created on : Feb 19, 2019, 11:43:54 AM
    Author     : thanh
--%>



<%@page import="Models.Users"%>
<%@page import="java.util.Vector"%>
<%@page import="Controller.users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
     String sid=request.getParameter("id");  
     int id=Integer.parseInt(sid);  
     
     Users  u = users.findbyid(id);
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
                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Users </a></li>
                        <li class="breadcrumb-item active" aria-current="page">Chỉnh sửa </li>
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
                                   
                <form method="post" action="../users_edit"
                    id="validationform" 
                    data-parsley-validate=""
                    enctype = "multipart/form-data"
                    novalidate="">
                    <input type="hidden" required="" name="id" value="<%=u.getId()%>" placeholder="Tên " class="form-control">
                    <div class="form-group row">
                        <label class="col-12 col-sm-3 col-form-label text-sm-right">Tên</label>
                        <div class="col-12 col-sm-8 col-lg-6">
                            <input type="text" required="" name="name" value="<%=u.getName()%>" placeholder="Tên " class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-12 col-sm-3 col-form-label text-sm-right">email </label>
                        <div class="col-12 col-sm-8 col-lg-6">
                            <input type="text" required="" name="email" value="<%=u.getEmail()%>" placeholder="Giá " class="form-control">
                        </div>
                    </div>
                        <input type="hidden" required="" name="avatar_text" value="<%=u.getAvatar()%>"  placeholder="Ảnh " class="form-control">
                    <div class="form-group row">
                        <label class="col-12 col-sm-3 col-form-label text-sm-right"> Ảnh  </label>
                        <div class="col-12 col-sm-8 col-lg-6">
                            <input type="file" required="" name="avatar"  placeholder="Ảnh " class="form-control">
                            
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-12 col-sm-3 col-form-label text-sm-right">password </label>
                        <div class="col-12 col-sm-8 col-lg-6">
                            <input type="password" required="" name="password" value="<%=u.getPassword()%>" placeholder="Nơi sản xuất" class="form-control">
                        </div>
                    </div>
                   
                    <div class="form-group row">
                        <label class="col-12 col-sm-3 col-form-label text-sm-right">Quyền </label>

                        <div class="col-12 col-sm-8 col-lg-6">
                            <select class="form-control form-control-sm" name="permissions">
                                <% 

                                    for (int i = 0; i <= 1; i++) {
                                %>
                                <option value="<%=i%>" 
                                        
                                        <%
                                            if(i== u.getPermissions()){
                                                out.print("selected");
                                            }
                                        %>
                                        
                                        
                                        
                                        
                                        ><%
                                            if(i== 1){
                                                out.print("admin");
                                            }else{
                                                out.print("thường");
                                            }
                                        %></option>
                                <%
                                    }
                                %>
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

