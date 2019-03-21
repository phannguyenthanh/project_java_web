<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

 <%
    if(session.getAttribute("account")== "ok" ){
  
%>
                                   


<html lang="en">
 
<head>
    
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <META name="GENERATOR" content="IBM WebSphere Studio">
    <META http-equiv="Content-Style-Type" content="text/css">
    
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <!--jquery-validate-->
    <script src="assets/validate/jquery-validate.js"></script>
    <title>Concept - Bootstrap 4 Admin Dashboard Template</title>
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <!--header-->
        
         <%@ include file="block/header.jsp" %>
        <!--end header-->
    
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        
        <%@ include file="block/nav.jsp" %>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <!--footer-->
       
        <!--end footer-->
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content ">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <%
                        String status = request.getParameter("status");
                        if(status==null || status.equals(""))
                        {
                    %>
                        <%@include file="products.jsp" %>
                    <%
                        }else if( status.equals("AddProduct")){
                        
                    %>
                         <%@include file="Views/product/create.jsp" %>
                    <%
                        }else if( status.equals("EditProduct")){
                    %>
                   
                         <%@include file="Views/product/update.jsp" %>
                    <%
                        }else if( status.equals("DetailProduct")){
                    %>
                        <%@include file="Views/product/details.jsp" %>
                  
                    
                    <!--type-->
                     <%
                       
                        }else if( status.equals("Type"))
                        {
                    %>
                        <%@include file="type.jsp" %>
                    <%
                        }else if( status.equals("AddType")){
                        
                    %>
                         <%@include file="Views/type/create.jsp" %>
                    <%
                        }else if( status.equals("EditType")){
                    %>
                   
                         <%@include file="Views/type/update.jsp" %>
                    <%
                        }else if( status.equals("DetailType")){
                    %>
                        <%@include file="Views/type/details.jsp" %>
                    
                 <!--endtype-->
                 
                 <!--brand-->
                 
                 
                 <%
                       
                        }else if( status.equals("Brand"))
                        {
                    %>
                        <%@include file="brand.jsp" %>
                    <%
                        }else if( status.equals("AddBrand")){
                        
                    %>
                         <%@include file="Views/brand/create.jsp" %>
                    <%
                        }else if( status.equals("EditBrand")){
                    %>
                   
                         <%@include file="Views/brand/update.jsp" %>
                    <%
                        }else if( status.equals("DetailBrand")){
                    %>
                        <%@include file="Views/brand/details.jsp" %>
                   
                    
                    
                <!--end brand--> 
                 
                
                <!--users-->

                     <%
                       
                        }else if( status.equals("User"))
                        {
                    %>
                        <%@include file="users.jsp" %>
                    <%
                        }else if( status.equals("AddUser")){
                        
                    %>
                         <%@include file="Views/user/create.jsp" %>
                    <%
                        }else if( status.equals("EditUser")){
                    %>
                         
                         <%@include file="Views/user/update.jsp" %>
                    <%
                        }else if( status.equals("DetailUser")){
                    %>
                        <%@include file="Views/user/details.jsp" %>
                        
            <!-- end users-->
            
            <!--cart-->
                    <%
                        }else if( status.equals("Cart")){
                    %>  
                    <%@include file="carts.jsp" %>
                    <%
                    }
                    %>
            <!--cart end-->


                </div>
            </div>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
             <%@ include file="block/footer.jsp" %>
            
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <!-- jquery 3.3.1 -->
    
    <!-- bootstap bundle js -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js -->
    <script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="assets/libs/js/main-js.js"></script>
    <!-- chart chartist js -->
    <script src="assets/vendor/charts/chartist-bundle/chartist.min.js"></script>
    <!-- sparkline js -->
    <script src="assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <!-- morris js -->
    <script src="assets/vendor/charts/morris-bundle/raphael.min.js"></script>
    <script src="assets/vendor/charts/morris-bundle/morris.js"></script>
    <!-- chart c3 js -->
    <script src="assets/vendor/charts/c3charts/c3.min.js"></script>
    <script src="assets/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
    <script src="assets/vendor/charts/c3charts/C3chartjs.js"></script>
    <script src="assets/libs/js/dashboard-ecommerce.js"></script>
</body>
 
</html>




     
<%
    }else{
                                       
%>

    



<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    </style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- login page  -->
    <!-- ============================================================== -->
    <div class="splash-container">
        <div class="card ">
            <div class="card-header text-center"><a href="index.jsp"><img class="logo-img" src="assets/images/logo.png" alt="logo"></a><span class="splash-description">Please enter your user information.</span></div>
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
                <form method="post" action="../login">
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="username" type="email" placeholder="email" name="email" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="password" type="password" placeholder="Password" name="password">
                    </div>
                    <div class="form-group">
                        <label class="custom-control custom-checkbox">
                            <input class="custom-control-input" type="checkbox"><span class="custom-control-label">Remember Me</span>
                        </label>
                    </div>
                    <button type="submit" class="btn btn-primary btn-lg btn-block">Sign in</button>
                </form>
            </div>
            <div class="card-footer bg-white p-0  ">
                <div class="card-footer-item card-footer-item-bordered">
                    <a href="#" class="footer-link">Create An Account</a></div>
                <div class="card-footer-item card-footer-item-bordered">
                    <a href="#" class="footer-link">Forgot Password</a>
                </div>
            </div>
        </div>
    </div>
  
    <!-- ============================================================== -->
    <!-- end login page  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
</body>
 
</html>



<%
    }
%>


