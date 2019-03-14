package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Vector;
import Models.Products;
import Controller.products;
import Models.Brands;
import Controller.brands;
import java.util.Vector;
import Controller.types;
import Models.Types;
import Models.Types;
import Controller.types;
import Models.Brands;
import Controller.brands;
import Models.Products;
import java.util.Vector;
import Controller.products;
import Models.Products;
import Controller.products;
import java.util.Vector;
import Models.Types;
import Controller.types;
import Models.Brands;
import Controller.brands;
import java.util.Vector;
import Controller.types;
import Models.Types;
import Models.Types;
import java.util.Vector;
import Controller.types;
import Models.Types;
import Controller.types;
import java.util.Vector;
import Models.Brands;
import Controller.brands;
import java.util.Vector;
import Controller.brands;
import Models.Brands;
import Models.Brands;
import java.util.Vector;
import Controller.brands;
import Models.Brands;
import Controller.brands;
import java.util.Vector;
import Models.Users;
import Controller.users;
import java.util.Vector;
import Models.Users;
import java.util.Vector;
import Controller.users;
import Models.Users;
import Controller.users;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(19);
    _jspx_dependants.add("/admin/block/header.jsp");
    _jspx_dependants.add("/admin/block/nav.jsp");
    _jspx_dependants.add("/admin/products.jsp");
    _jspx_dependants.add("/admin/Views/product/create.jsp");
    _jspx_dependants.add("/admin/Views/product/update.jsp");
    _jspx_dependants.add("/admin/Views/product/details.jsp");
    _jspx_dependants.add("/admin/type.jsp");
    _jspx_dependants.add("/admin/Views/type/create.jsp");
    _jspx_dependants.add("/admin/Views/type/update.jsp");
    _jspx_dependants.add("/admin/Views/type/details.jsp");
    _jspx_dependants.add("/admin/brand.jsp");
    _jspx_dependants.add("/admin/Views/brand/create.jsp");
    _jspx_dependants.add("/admin/Views/brand/update.jsp");
    _jspx_dependants.add("/admin/Views/brand/details.jsp");
    _jspx_dependants.add("/admin/users.jsp");
    _jspx_dependants.add("/admin/Views/user/create.jsp");
    _jspx_dependants.add("/admin/Views/user/update.jsp");
    _jspx_dependants.add("/admin/Views/user/details.jsp");
    _jspx_dependants.add("/admin/block/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("\r\n");
      out.write(" ");

    if(session.getAttribute("account")== "ok" ){
  

      out.write("\r\n");
      out.write("                                   \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write(" \r\n");
      out.write("<head>\r\n");
      out.write("    \r\n");
      out.write("    <!-- Required meta tags -->\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <META http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("    <META name=\"GENERATOR\" content=\"IBM WebSphere Studio\">\r\n");
      out.write("    <META http-equiv=\"Content-Style-Type\" content=\"text/css\">\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    <!-- Bootstrap CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/vendor/bootstrap/css/bootstrap.min.css\">\r\n");
      out.write("    <link href=\"assets/vendor/fonts/circular-std/style.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/libs/css/style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/vendor/fonts/fontawesome/css/fontawesome-all.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/vendor/charts/chartist-bundle/chartist.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/vendor/charts/morris-bundle/morris.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/vendor/charts/c3charts/c3.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/vendor/fonts/flag-icon-css/flag-icon.min.css\">\r\n");
      out.write("    <script src=\"assets/vendor/jquery/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("    <!--jquery-validate-->\r\n");
      out.write("    <script src=\"assets/validate/jquery-validate.js\"></script>\r\n");
      out.write("    <title>Concept - Bootstrap 4 Admin Dashboard Template</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- main wrapper -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <div class=\"dashboard-main-wrapper\">\r\n");
      out.write("        <!-- ============================================================== -->\r\n");
      out.write("        <!-- navbar -->\r\n");
      out.write("        <!-- ============================================================== -->\r\n");
      out.write("        <!--header-->\r\n");
      out.write("        \r\n");
      out.write("         ");
      out.write("    <div class=\"dashboard-header\">\r\n");
      out.write("            <nav class=\"navbar navbar-expand-lg bg-white fixed-top\">\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.html\">\r\n");
      out.write("                    \r\n");
      out.write("                    \r\n");
      out.write("                    \r\n");
      out.write("                    CONCEPT\r\n");
      out.write("                </a>\r\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <div class=\"collapse navbar-collapse \" id=\"navbarSupportedContent\">\r\n");
      out.write("                    <ul class=\"navbar-nav ml-auto navbar-right-top\">\r\n");
      out.write("                        <li class=\"nav-item\">\r\n");
      out.write("                            <div id=\"custom-search\" class=\"top-search-bar\">\r\n");
      out.write("                                <input class=\"form-control\" type=\"text\" placeholder=\"Search..\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item dropdown notification\">\r\n");
      out.write("                            <a class=\"nav-link nav-icons\" href=\"#\" id=\"navbarDropdownMenuLink1\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"><i class=\"fas fa-fw fa-bell\"></i> <span class=\"indicator\"></span></a>\r\n");
      out.write("                            <ul class=\"dropdown-menu dropdown-menu-right notification-dropdown\">\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <div class=\"notification-title\"> Notification</div>\r\n");
      out.write("                                    <div class=\"notification-list\">\r\n");
      out.write("                                        <div class=\"list-group\">\r\n");
      out.write("                                            <a href=\"#\" class=\"list-group-item list-group-item-action active\">\r\n");
      out.write("                                                <div class=\"notification-info\">\r\n");
      out.write("                                                    <div class=\"notification-list-user-img\"><img src=\"assets/images/avatar-2.jpg\" alt=\"\" class=\"user-avatar-md rounded-circle\"></div>\r\n");
      out.write("                                                    <div class=\"notification-list-user-block\"><span class=\"notification-list-user-name\">Jeremy Rakestraw</span>accepted your invitation to join the team.\r\n");
      out.write("                                                        <div class=\"notification-date\">2 min ago</div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </a>\r\n");
      out.write("                                            <a href=\"#\" class=\"list-group-item list-group-item-action\">\r\n");
      out.write("                                                <div class=\"notification-info\">\r\n");
      out.write("                                                    <div class=\"notification-list-user-img\"><img src=\"assets/images/avatar-3.jpg\" alt=\"\" class=\"user-avatar-md rounded-circle\"></div>\r\n");
      out.write("                                                    <div class=\"notification-list-user-block\"><span class=\"notification-list-user-name\">John Abraham </span>is now following you\r\n");
      out.write("                                                        <div class=\"notification-date\">2 days ago</div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </a>\r\n");
      out.write("                                            <a href=\"#\" class=\"list-group-item list-group-item-action\">\r\n");
      out.write("                                                <div class=\"notification-info\">\r\n");
      out.write("                                                    <div class=\"notification-list-user-img\"><img src=\"assets/images/avatar-4.jpg\" alt=\"\" class=\"user-avatar-md rounded-circle\"></div>\r\n");
      out.write("                                                    <div class=\"notification-list-user-block\"><span class=\"notification-list-user-name\">Monaan Pechi</span> is watching your main repository\r\n");
      out.write("                                                        <div class=\"notification-date\">2 min ago</div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </a>\r\n");
      out.write("                                            <a href=\"#\" class=\"list-group-item list-group-item-action\">\r\n");
      out.write("                                                <div class=\"notification-info\">\r\n");
      out.write("                                                    <div class=\"notification-list-user-img\"><img src=\"assets/images/avatar-5.jpg\" alt=\"\" class=\"user-avatar-md rounded-circle\"></div>\r\n");
      out.write("                                                    <div class=\"notification-list-user-block\"><span class=\"notification-list-user-name\">Jessica Caruso</span>accepted your invitation to join the team.\r\n");
      out.write("                                                        <div class=\"notification-date\">2 min ago</div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <div class=\"list-footer\"> <a href=\"#\">View all notifications</a></div>\r\n");
      out.write("                                </li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item dropdown connection\">\r\n");
      out.write("                            <a class=\"nav-link\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> <i class=\"fas fa-fw fa-th\"></i> </a>\r\n");
      out.write("                            <ul class=\"dropdown-menu dropdown-menu-right connection-dropdown\">\r\n");
      out.write("                                <li class=\"connection-list\">\r\n");
      out.write("                                    <div class=\"row\">\r\n");
      out.write("                                        <div class=\"col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 \">\r\n");
      out.write("                                            <a href=\"#\" class=\"connection-item\"><img src=\"assets/images/github.png\" alt=\"\" > <span>Github</span></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 \">\r\n");
      out.write("                                            <a href=\"#\" class=\"connection-item\"><img src=\"assets/images/dribbble.png\" alt=\"\" > <span>Dribbble</span></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 \">\r\n");
      out.write("                                            <a href=\"#\" class=\"connection-item\"><img src=\"assets/images/dropbox.png\" alt=\"\" > <span>Dropbox</span></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"row\">\r\n");
      out.write("                                        <div class=\"col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 \">\r\n");
      out.write("                                            <a href=\"#\" class=\"connection-item\"><img src=\"assets/images/bitbucket.png\" alt=\"\"> <span>Bitbucket</span></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 \">\r\n");
      out.write("                                            <a href=\"#\" class=\"connection-item\"><img src=\"assets/images/mail_chimp.png\" alt=\"\" ><span>Mail chimp</span></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 \">\r\n");
      out.write("                                            <a href=\"#\" class=\"connection-item\"><img src=\"assets/images/slack.png\" alt=\"\" > <span>Slack</span></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <div class=\"conntection-footer\"><a href=\"#\">More</a></div>\r\n");
      out.write("                                </li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item dropdown nav-user\">\r\n");
      out.write("                            <a class=\"nav-link nav-user-img\" href=\"#\" id=\"navbarDropdownMenuLink2\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${avatar}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"\" class=\"user-avatar-md rounded-circle\"></a>\r\n");
      out.write("                            <div class=\"dropdown-menu dropdown-menu-right nav-user-dropdown\" aria-labelledby=\"navbarDropdownMenuLink2\">\r\n");
      out.write("                                <div class=\"nav-user-info\">\r\n");
      out.write("                                    <h5 class=\"mb-0 text-white nav-user-name\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </h5>\r\n");
      out.write("                                    <span class=\"status\"></span><span class=\"ml-2\">dev</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"index.jsp?status=DetailUser&id=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><i class=\"fas fa-user mr-2\"></i>Account</a>\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\"><i class=\"fas fa-cog mr-2\"></i>Setting</a>\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"../logout\"><i class=\"fas fa-power-off mr-2\"></i>Logout</a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </nav>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!--end header-->\r\n");
      out.write("    \r\n");
      out.write("        <!-- ============================================================== -->\r\n");
      out.write("        <!-- end navbar -->\r\n");
      out.write("        <!-- ============================================================== -->\r\n");
      out.write("        <!-- ============================================================== -->\r\n");
      out.write("        <!-- left sidebar -->\r\n");
      out.write("        <!-- ============================================================== -->\r\n");
      out.write("        \r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<div class=\"nav-left-sidebar sidebar-dark\">\r\n");
      out.write("            <div class=\"menu-list\">\r\n");
      out.write("                <nav class=\"navbar navbar-expand-lg navbar-light\">\r\n");
      out.write("                    <a class=\"d-xl-none d-lg-none\" href=\"#\">Dashboard</a>\r\n");
      out.write("                    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                        <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("                    </button>\r\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\r\n");
      out.write("                        <ul class=\"navbar-nav flex-column\">\r\n");
      out.write("                            \r\n");
      out.write("                            <li class=\"nav-divider\">\r\n");
      out.write("                                Menu\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"nav-item\">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"index.jsp\" aria-expanded=\"false\" data-target=\"#submenu-5\" aria-controls=\"submenu-5\"><i class=\"fas fa-fw fa-table\"></i>Sản phẩm</a>\r\n");
      out.write("                                <a class=\"nav-link\" href=\"index.jsp?status=Type\" aria-expanded=\"false\" data-target=\"#submenu-5\" aria-controls=\"submenu-5\"><i class=\"fas fa-fw fa-table\"></i>Loại xe</a>\r\n");
      out.write("                                <a class=\"nav-link\" href=\"index.jsp?status=Brand\" aria-expanded=\"false\" data-target=\"#submenu-5\" aria-controls=\"submenu-5\"><i class=\"fas fa-fw fa-table\"></i>Thương hiệu</a>\r\n");
      out.write("                                <a class=\"nav-link\" href=\"index.jsp?status=User\" aria-expanded=\"false\" data-target=\"#submenu-5\" aria-controls=\"submenu-5\"><i class=\"fas fa-fw fa-table\"></i>Tài khoản</a>\r\n");
      out.write("<!--                                <div id=\"submenu-5\" class=\"collapse submenu\" style=\"\">\r\n");
      out.write("                                    <ul class=\"nav flex-column\">\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/general-table.html\">G</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/data-tables.html\">Data Tables</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>-->\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <!--\r\n");
      out.write("                            <li class=\"nav-item \">\r\n");
      out.write("                                <a class=\"nav-link active\" href=\"#\" data-toggle=\"collapse\" aria-expanded=\"false\" data-target=\"#submenu-1\" aria-controls=\"submenu-1\"><i class=\"fa fa-fw fa-user-circle\"></i>Dashboard <span class=\"badge badge-success\">6</span></a>\r\n");
      out.write("                                <div id=\"submenu-1\" class=\"collapse submenu\" style=\"\">\r\n");
      out.write("                                    <ul class=\"nav flex-column\">\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"#\" data-toggle=\"collapse\" aria-expanded=\"false\" data-target=\"#submenu-1-2\" aria-controls=\"submenu-1-2\">E-Commerce</a>\r\n");
      out.write("                                            <div id=\"submenu-1-2\" class=\"collapse submenu\" style=\"\">\r\n");
      out.write("                                                <ul class=\"nav flex-column\">\r\n");
      out.write("                                                    <li class=\"nav-item\">\r\n");
      out.write("                                                        <a class=\"nav-link\" href=\"index.html\">E Commerce Dashboard</a>\r\n");
      out.write("                                                    </li>\r\n");
      out.write("                                                    <li class=\"nav-item\">\r\n");
      out.write("                                                        <a class=\"nav-link\" href=\"ecommerce-product.html\">Product List</a>\r\n");
      out.write("                                                    </li>\r\n");
      out.write("                                                    <li class=\"nav-item\">\r\n");
      out.write("                                                        <a class=\"nav-link\" href=\"ecommerce-product-single.html\">Product Single</a>\r\n");
      out.write("                                                    </li>\r\n");
      out.write("                                                    <li class=\"nav-item\">\r\n");
      out.write("                                                        <a class=\"nav-link\" href=\"ecommerce-product-checkout.html\">Product Checkout</a>\r\n");
      out.write("                                                    </li>\r\n");
      out.write("                                                </ul>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"dashboard-finance.html\">Finance</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"dashboard-sales.html\">Sales</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"#\" data-toggle=\"collapse\" aria-expanded=\"false\" data-target=\"#submenu-1-1\" aria-controls=\"submenu-1-1\">Infulencer</a>\r\n");
      out.write("                                            <div id=\"submenu-1-1\" class=\"collapse submenu\" style=\"\">\r\n");
      out.write("                                                <ul class=\"nav flex-column\">\r\n");
      out.write("                                                    <li class=\"nav-item\">\r\n");
      out.write("                                                        <a class=\"nav-link\" href=\"dashboard-influencer.html\">Influencer</a>\r\n");
      out.write("                                                    </li>\r\n");
      out.write("                                                    <li class=\"nav-item\">\r\n");
      out.write("                                                        <a class=\"nav-link\" href=\"influencer-finder.html\">Influencer Finder</a>\r\n");
      out.write("                                                    </li>\r\n");
      out.write("                                                    <li class=\"nav-item\">\r\n");
      out.write("                                                        <a class=\"nav-link\" href=\"influencer-profile.html\">Influencer Profile</a>\r\n");
      out.write("                                                    </li>\r\n");
      out.write("                                                </ul>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </li>-->\r\n");
      out.write("<!--                            <li class=\"nav-item\">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"#\" data-toggle=\"collapse\" aria-expanded=\"false\" data-target=\"#submenu-2\" aria-controls=\"submenu-2\"><i class=\"fa fa-fw fa-rocket\"></i>UI Elements</a>\r\n");
      out.write("                                <div id=\"submenu-2\" class=\"collapse submenu\" style=\"\">\r\n");
      out.write("                                    <ul class=\"nav flex-column\">\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/cards.html\">Cards <span class=\"badge badge-secondary\">New</span></a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/general.html\">General</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/carousel.html\">Carousel</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/listgroup.html\">List Group</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/typography.html\">Typography</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/accordions.html\">Accordions</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/tabs.html\">Tabs</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"nav-item\">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"#\" data-toggle=\"collapse\" aria-expanded=\"false\" data-target=\"#submenu-3\" aria-controls=\"submenu-3\"><i class=\"fas fa-fw fa-chart-pie\"></i>Chart</a>\r\n");
      out.write("                                <div id=\"submenu-3\" class=\"collapse submenu\" style=\"\">\r\n");
      out.write("                                    <ul class=\"nav flex-column\">\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/chart-c3.html\">C3 Charts</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/chart-chartist.html\">Chartist Charts</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/chart-charts.html\">Chart</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/chart-morris.html\">Morris</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/chart-sparkline.html\">Sparkline</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/chart-gauge.html\">Guage</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"nav-item \">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"#\" data-toggle=\"collapse\" aria-expanded=\"false\" data-target=\"#submenu-4\" aria-controls=\"submenu-4\"><i class=\"fab fa-fw fa-wpforms\"></i>Forms</a>\r\n");
      out.write("                                <div id=\"submenu-4\" class=\"collapse submenu\" style=\"\">\r\n");
      out.write("                                    <ul class=\"nav flex-column\">\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/form-elements.html\">Form Elements</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/form-validation.html\">Parsely Validations</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/multiselect.html\">Multiselect</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/datepicker.html\">Date Picker</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/bootstrap-select.html\">Bootstrap Select</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"nav-item\">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"#\" data-toggle=\"collapse\" aria-expanded=\"false\" data-target=\"#submenu-5\" aria-controls=\"submenu-5\"><i class=\"fas fa-fw fa-table\"></i>Tables</a>\r\n");
      out.write("                                <div id=\"submenu-5\" class=\"collapse submenu\" style=\"\">\r\n");
      out.write("                                    <ul class=\"nav flex-column\">\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/general-table.html\">General Tables</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/data-tables.html\">Data Tables</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"nav-divider\">\r\n");
      out.write("                                Features\r\n");
      out.write("                            </li>-->\r\n");
      out.write("<!--                            <li class=\"nav-item\">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"#\" data-toggle=\"collapse\" aria-expanded=\"false\" data-target=\"#submenu-6\" aria-controls=\"submenu-6\"><i class=\"fas fa-fw fa-file\"></i> Pages </a>\r\n");
      out.write("                                <div id=\"submenu-6\" class=\"collapse submenu\" style=\"\">\r\n");
      out.write("                                    <ul class=\"nav flex-column\">\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/blank-page.html\">Blank Page</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/blank-page-header.html\">Blank Page Header</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/login.html\">Login</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/404-page.html\">404 page</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/sign-up.html\">Sign up Page</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/forgot-password.html\">Forgot Password</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/pricing.html\">Pricing Tables</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/timeline.html\">Timeline</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/calendar.html\">Calendar</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/sortable-nestable-lists.html\">Sortable/Nestable List</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/widgets.html\">Widgets</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/media-object.html\">Media Objects</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/cropper-image.html\">Cropper</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/color-picker.html\">Color Picker</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </li>-->\r\n");
      out.write("<!--                            <li class=\"nav-item\">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"#\" data-toggle=\"collapse\" aria-expanded=\"false\" data-target=\"#submenu-7\" aria-controls=\"submenu-7\"><i class=\"fas fa-fw fa-inbox\"></i>Apps <span class=\"badge badge-secondary\">New</span></a>\r\n");
      out.write("                                <div id=\"submenu-7\" class=\"collapse submenu\" style=\"\">\r\n");
      out.write("                                    <ul class=\"nav flex-column\">\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/inbox.html\">Inbox</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/email-details.html\">Email Detail</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/email-compose.html\">Email Compose</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/message-chat.html\">Message Chat</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </li>-->\r\n");
      out.write("<!--                            <li class=\"nav-item\">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"#\" data-toggle=\"collapse\" aria-expanded=\"false\" data-target=\"#submenu-8\" aria-controls=\"submenu-8\"><i class=\"fas fa-fw fa-columns\"></i>Icons</a>\r\n");
      out.write("                                <div id=\"submenu-8\" class=\"collapse submenu\" style=\"\">\r\n");
      out.write("                                    <ul class=\"nav flex-column\">\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/icon-fontawesome.html\">FontAwesome Icons</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/icon-material.html\">Material Icons</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/icon-simple-lineicon.html\">Simpleline Icon</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/icon-themify.html\">Themify Icon</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/icon-flag.html\">Flag Icons</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/icon-weather.html\">Weather Icon</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </li>-->\r\n");
      out.write("<!--                            <li class=\"nav-item\">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"#\" data-toggle=\"collapse\" aria-expanded=\"false\" data-target=\"#submenu-9\" aria-controls=\"submenu-9\"><i class=\"fas fa-fw fa-map-marker-alt\"></i>Maps</a>\r\n");
      out.write("                                <div id=\"submenu-9\" class=\"collapse submenu\" style=\"\">\r\n");
      out.write("                                    <ul class=\"nav flex-column\">\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/map-google.html\">Google Maps</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"pages/map-vector.html\">Vector Maps</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </li>-->\r\n");
      out.write("<!--                            <li class=\"nav-item\">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"#\" data-toggle=\"collapse\" aria-expanded=\"false\" data-target=\"#submenu-10\" aria-controls=\"submenu-10\"><i class=\"fas fa-f fa-folder\"></i>Menu Level</a>\r\n");
      out.write("                                <div id=\"submenu-10\" class=\"collapse submenu\" style=\"\">\r\n");
      out.write("                                    <ul class=\"nav flex-column\">\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"#\">Level 1</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"#\" data-toggle=\"collapse\" aria-expanded=\"false\" data-target=\"#submenu-11\" aria-controls=\"submenu-11\">Level 2</a>\r\n");
      out.write("                                            <div id=\"submenu-11\" class=\"collapse submenu\" style=\"\">\r\n");
      out.write("                                                <ul class=\"nav flex-column\">\r\n");
      out.write("                                                    <li class=\"nav-item\">\r\n");
      out.write("                                                        <a class=\"nav-link\" href=\"#\">Level 1</a>\r\n");
      out.write("                                                    </li>\r\n");
      out.write("                                                    <li class=\"nav-item\">\r\n");
      out.write("                                                        <a class=\"nav-link\" href=\"#\">Level 2</a>\r\n");
      out.write("                                                    </li>\r\n");
      out.write("                                                </ul>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"nav-item\">\r\n");
      out.write("                                            <a class=\"nav-link\" href=\"#\">Level 3</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </li>-->\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- ============================================================== -->\r\n");
      out.write("        <!-- end left sidebar -->\r\n");
      out.write("        <!-- ============================================================== -->\r\n");
      out.write("        <!-- ============================================================== -->\r\n");
      out.write("        <!-- wrapper  -->\r\n");
      out.write("        <!-- ============================================================== -->\r\n");
      out.write("        <!--footer-->\r\n");
      out.write("       \r\n");
      out.write("        <!--end footer-->\r\n");
      out.write("        <div class=\"dashboard-wrapper\">\r\n");
      out.write("            <div class=\"dashboard-ecommerce\">\r\n");
      out.write("                <div class=\"container-fluid dashboard-content \">\r\n");
      out.write("                    <!-- ============================================================== -->\r\n");
      out.write("                    <!-- pageheader  -->\r\n");
      out.write("                    <!-- ============================================================== -->\r\n");
      out.write("                    ");

                        String status = request.getParameter("status");
                        if(status==null || status.equals(""))
                        {
                    
      out.write("\r\n");
      out.write("                        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("                        <div class=\"page-header\">\r\n");
      out.write("                            <h2 class=\"pageheader-title\">Tables</h2>\r\n");
      out.write("                            \r\n");
      out.write("                            <div class=\"page-breadcrumb\">\r\n");
      out.write("                                <nav aria-label=\"breadcrumb\">\r\n");
      out.write("                                    <ol class=\"breadcrumb\">\r\n");
      out.write("                                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\r\n");
      out.write("                                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Products</a></li>\r\n");
      out.write("                                    </ol>\r\n");
      out.write("                                </nav>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- ============================================================== -->\r\n");
      out.write("                <!-- end pageheader -->\r\n");
      out.write("                <!-- ============================================================== -->\r\n");
      out.write("                \r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <!-- ============================================================== -->\r\n");
      out.write("                    <!-- data table multiselects  -->\r\n");
      out.write("                    <!-- ============================================================== -->\r\n");
      out.write("                    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("                        <div class=\"card\">\r\n");
      out.write("                            <div class=\"card-header\">\r\n");
      out.write("                                <h5 class=\"mb-0\">Products </h5>\r\n");
      out.write("                               \r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"card-body\">\r\n");
      out.write("                                <div class=\"table-responsive\">\r\n");
      out.write("                                    <div>\r\n");
      out.write("                                        <div>\r\n");
      out.write("                                            \r\n");
      out.write("                                            ");

                                                
                                                if(session.getAttribute("status")== "success"){
                                            
      out.write("\r\n");
      out.write("                                  \r\n");
      out.write("                                            <div class=\"alert alert-success\" role=\"alert\">\r\n");
      out.write("                                                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                  \r\n");
      out.write("                                    ");

                                        }
                                    
      out.write("\r\n");
      out.write("                                    \r\n");
      out.write("                                    ");

                                                session.removeAttribute("status");
                                                products product = new products();
                                                Vector<Products> list = product.all();
                                                
                                                if(list==null){
                                                    out.println("<h3>Lỗi kết nối CSDL</h3>");
                                                }
                                                else if(list.size()<=0){
                                                    out.println("<h3>Không có sản phẩm</h3>");
                                                }
                                                else
                                                {
                                                    
                                    
      out.write("\r\n");
      out.write("                                    <table id=\"example3\" class=\"table table-striped table-bordered\" style=\"width:100%\">\r\n");
      out.write("                                        <thead>\r\n");
      out.write("                                            <tr>\r\n");
      out.write("                                                <th>id</th>\r\n");
      out.write("                                                <th>tên</th>\r\n");
      out.write("                                                <th>ảnh</th>\r\n");
      out.write("                                                <th>giá</th>\r\n");
      out.write("                                                <th>Nơi sx</th>\r\n");
      out.write("                                                <th>Đời xe </th>\r\n");
      out.write("                                                <th>Loại xe </th>\r\n");
      out.write("                                                <th>Địa điểm </th>\r\n");
      out.write("                                                <th>Ngày đăng </th>\r\n");
      out.write("                                                <th>\r\n");
      out.write("                                                    <a href=\"index.jsp?status=AddProduct\" class=\"btn btn-success active\">Thêm </a>\r\n");
      out.write("                                                </th>\r\n");
      out.write("                                            </tr>\r\n");
      out.write("                                        </thead>\r\n");
      out.write("                                        <tbody>\r\n");
      out.write("                                             ");
        
//                                                    for(int i=0; i<list.size();i++)
//                                                    {
//                                                        int malop = list.get(i).getMalop();
//                                                        String tenlop = dslop.get(i).getTenlop();
                                                
                                                
                                                  for(int i=0; i< list.size();i++)
                                                   {
                                                      
                                                      
                                              
      out.write("\r\n");
      out.write("                                            <tr>\r\n");
      out.write("                                                <td>");
      out.print(list.get(i).getId());
      out.write("</td>\r\n");
      out.write("                                                <td>");
      out.print(list.get(i).getName());
      out.write("</td>\r\n");
      out.write("                                                <td>");
      out.print(list.get(i).getPrice());
      out.write("</td>\r\n");
      out.write("                                                <td>\r\n");
      out.write("                                                    <img src=\"");
      out.print(list.get(i).getAvatar());
      out.write("\" width=\"100px\" />\r\n");
      out.write("                                                    \r\n");
      out.write("                                                </td>\r\n");
      out.write("                                                \r\n");
      out.write("                                                <td>");
      out.print(list.get(i).getMade_in());
      out.write("</td>\r\n");
      out.write("                                                <td>");
      out.print(list.get(i).getModel_year());
      out.write("</td>\r\n");
      out.write("                                                <td>");
      out.print(list.get(i).getType());
      out.write("</td>\r\n");
      out.write("                                                <td>");
      out.print(list.get(i).getLocation());
      out.write("</td>\r\n");
      out.write("                                                <td>");
      out.print(list.get(i).getCreated_at());
      out.write("</td>\r\n");
      out.write("                                                <td>\r\n");
      out.write("                                                    <a href=\"index.jsp?status=EditProduct&id=");
      out.print(list.get(i).getId());
      out.write("\" class=\"btn btn-brand active\">Sửa </a>\r\n");
      out.write("                                                    <a href=\"../products_delete?id=");
      out.print(list.get(i).getId());
      out.write("\" class=\"btn btn-danger active\">Xóa </a>\r\n");
      out.write("                                                    <a href=\"index.jsp?status=DetailProduct&id=");
      out.print(list.get(i).getId());
      out.write("\" class=\"btn btn-info active\">Chi Tiết </a>\r\n");
      out.write("                                                </td>\r\n");
      out.write("                                            </tr>\r\n");
      out.write("                                            ");

                                                }
                                            
      out.write("\r\n");
      out.write("                                        </tbody>\r\n");
      out.write("                                        <tfoot>\r\n");
      out.write("                                            <tr>\r\n");
      out.write("                                                <th>id</th>\r\n");
      out.write("                                                <th>tên</th>\r\n");
      out.write("                                                <th>ảnh</th>\r\n");
      out.write("                                                <th>giá</th>\r\n");
      out.write("                                                <th>Nơi sx</th>\r\n");
      out.write("                                               \r\n");
      out.write("                                                <th>Đời xe </th>\r\n");
      out.write("                                                <th>Loại xe </th>\r\n");
      out.write("                                                <th>Địa điểm </th>\r\n");
      out.write("                                                <th>Ngày đăng </th>\r\n");
      out.write("                                                <th></th>\r\n");
      out.write("                                        </tfoot>\r\n");
      out.write("                                    </table>\r\n");
      out.write("                                        ");

                                                }
                                            
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- ============================================================== -->\r\n");
      out.write("                    <!-- end data table multiselects  -->\r\n");
      out.write("                    <!-- ============================================================== -->\r\n");
      out.write("                </div>\r\n");
      out.write("                               \r\n");
      out.write(" ");
      out.write("\r\n");
      out.write("                    ");

                        }else if( status.equals("AddProduct")){
                        
                    
      out.write("\r\n");
      out.write("                         ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--pageEncoding=\"UTF-8\"%>-->\r\n");
      out.write("     \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"page-header\">\r\n");
      out.write("            <h2 class=\"pageheader-title\">Thêm</h2>\r\n");
      out.write("           \r\n");
      out.write("            <div class=\"page-breadcrumb\">\r\n");
      out.write("                <nav aria-label=\"breadcrumb\">\r\n");
      out.write("                    <ol class=\"breadcrumb\">\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Products</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item active\" aria-current=\"page\">Thêm</li>\r\n");
      out.write("                    </ol>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- valifation types -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"card\">\r\n");
      out.write("            <h5 class=\"card-header\">Products</h5>\r\n");
      out.write("            <div class=\"card-body\">\r\n");
      out.write("                \r\n");
      out.write("                                    ");

                                    if(session.getAttribute("status")== "danger"){
                                    
      out.write("\r\n");
      out.write("                                    <div class=\"alert alert-danger\" role=\"alert\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    ");

                                        }
                                        session.removeAttribute("status");
                                    
      out.write("\r\n");
      out.write("                <form \r\n");
      out.write("                    method=\"post\" \r\n");
      out.write("                    action=\"../products_add\" \r\n");
      out.write("                    enctype = \"multipart/form-data\"\r\n");
      out.write("                    id=\"validationform\" \r\n");
      out.write("                    \r\n");
      out.write("                    >\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Tên</label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"name\" placeholder=\"Tên \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Giá </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"number\" required=\"\" name=\"price\" placeholder=\"Giá \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\"> Ảnh  </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"file\" required=\"\" name=\"avatar\"  placeholder=\"Ảnh \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Nơi sản xuất </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"made_in\" placeholder=\"Nơi sản xuất\" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\"> Phân khối </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"capacity\"  placeholder=\"Phân khối \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Màu </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"color\"  placeholder=\"Màu \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\"> Model Year </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"model_year\"  placeholder=\"Model của năm \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\"> Nội dung</label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"content\"  placeholder=\"Nội dung \" class=\"form-control\">\r\n");
      out.write("                            \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Địa chỉ </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"location\"  placeholder=\"Đại chỉ \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Loại </label>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <select class=\"form-control form-control-sm\" name=\"type\">\r\n");
      out.write("                                ");
 types types = new types();
                                    Vector<Types> list = types.all();

                                    for (int i = 0; i < list.size(); i++) {
                                
      out.write("\r\n");
      out.write("                                <option value=\"");
      out.print(list.get(i).getId());
      out.write('"');
      out.write('>');
      out.print(list.get(i).getName());
      out.write("</option>\r\n");
      out.write("                                ");

                                    }
                                
      out.write("\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Thương hiệu  </label>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <select class=\"form-control form-control-sm\" name=\"brand\">\r\n");
      out.write("                                ");
 brands brands = new brands();
                                    Vector<Brands> listbrands = brands.all();

                                    for (int i = 0; i < listbrands.size(); i++) {
                                
      out.write("\r\n");
      out.write("                                <option value=\"");
      out.print(listbrands.get(i).getId());
      out.write('"');
      out.write('>');
      out.print(listbrands.get(i).getName());
      out.write("</option>\r\n");
      out.write("                                ");

                                    }
                                
      out.write("\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!--                    <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Regular Exp</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input type=\"text\" required=\"\" data-parsley-pattern=\"#[A-Fa-f0-9]{6}\" placeholder=\"Hex. Color\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Equal To</label>\r\n");
      out.write("                                            <div class=\"col-sm-4 col-lg-3 mb-3 mb-sm-0\">\r\n");
      out.write("                                                <input id=\"pass2\" type=\"password\" required=\"\" placeholder=\"Password\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"col-sm-4 col-lg-3\">\r\n");
      out.write("                                                <input type=\"password\" required=\"\" data-parsley-equalto=\"#pass2\" placeholder=\"Re-Type Password\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-sm-3 col-form-label text-sm-right\">Min check</label>\r\n");
      out.write("                                            <div class=\"col-sm-6\">\r\n");
      out.write("                                                <div class=\"custom-controls-stacked\">\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input id=\"ck1\" name=\"ck1\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar\" data-parsley-mincheck=\"2\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 1</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input id=\"ck2\" name=\"ck2\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar2\" data-parsley-mincheck=\"2\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 2</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input id=\"ck3\" name=\"ck3\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar3\" data-parsley-mincheck=\"2\" required=\"\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 3</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <div id=\"error-container1\"></div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>-->\r\n");
      out.write("                    <!--                    <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-sm-3 col-form-label text-sm-right\">Max check</label>\r\n");
      out.write("                                            <div class=\"col-sm-6\">\r\n");
      out.write("                                                <div class=\"custom-controls-stacked\">\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e1\" data-parsley-multiple=\"group1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 1</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e2\" data-parsley-multiple=\"group1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 2</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e3\" data-parsley-multiple=\"group1\" data-parsley-maxcheck=\"1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 3</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <div id=\"error-container2\"></div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">E-Mail</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input type=\"email\" required=\"\" data-parsley-type=\"email\" placeholder=\"Enter a valid e-mail\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">URL</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"url\" type=\"url\" required=\"\" placeholder=\"URL\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Digits</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"digits\" type=\"text\" required=\"\" placeholder=\"Enter only digits\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Number</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"number\" type=\"text\" required=\"\" placeholder=\"Enter only numbers\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Alphanumeric</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"alphanum\" type=\"text\" required=\"\" placeholder=\"Enter alphanumeric value\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Textarea</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <textarea required=\"\" class=\"form-control\"></textarea>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>-->\r\n");
      out.write("                    <div class=\"form-group row text-right\">\r\n");
      out.write("                        <div class=\"col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0\">\r\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-space btn-primary\">Submit</button>\r\n");
      out.write("                             <a href=\"index.jsp\" class=\"btn btn-space btn-secondary\" >Cancel</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- end valifation types -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("</div>\r\n");
      out.write("<script src=\"assets/validate/products.js\"></script>");
      out.write("\r\n");
      out.write("                    ");

                        }else if( status.equals("EditProduct")){
                    
      out.write("\r\n");
      out.write("                   \r\n");
      out.write("                         ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

     String sid=request.getParameter("id");  
     int id=Integer.parseInt(sid);  
     
     Products  u = products.findbyid(id);
     String name = u.getName();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"page-header\">\r\n");
      out.write("            <h2 class=\"pageheader-title\">Chỉnh sửa </h2>\r\n");
      out.write("           \r\n");
      out.write("            <div class=\"page-breadcrumb\">\r\n");
      out.write("                <nav aria-label=\"breadcrumb\">\r\n");
      out.write("                    <ol class=\"breadcrumb\">\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Products </a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item active\" aria-current=\"page\">Chỉnh sửa </li>\r\n");
      out.write("                    </ol>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- valifation types -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"card\">\r\n");
      out.write("            <h5 class=\"card-header\">Products</h5>\r\n");
      out.write("            <div class=\"card-body\">\r\n");
      out.write("                                    ");

                                    if(session.getAttribute("status")== "danger"){
                                    
      out.write("\r\n");
      out.write("                                    <div class=\"alert alert-danger\" role=\"alert\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    ");

                                        }
                                        session.removeAttribute("status");
                                    
      out.write("\r\n");
      out.write("                <form method=\"post\" action=\"../products_edit\"\r\n");
      out.write("                    id=\"validationform\" \r\n");
      out.write("                    data-parsley-validate=\"\"\r\n");
      out.write("                    enctype = \"multipart/form-data\"\r\n");
      out.write("                    novalidate=\"\">\r\n");
      out.write("                    <input type=\"hidden\" required=\"\" name=\"id\" value=\"");
      out.print(u.getId());
      out.write("\" placeholder=\"Tên \" class=\"form-control\">\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Tên</label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"name\" value=\"");
      out.print(u.getName());
      out.write("\" placeholder=\"Tên \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Giá </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"number\" required=\"\" name=\"price\" value=\"");
      out.print(u.getPrice());
      out.write("\" placeholder=\"Giá \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                        <input type=\"hidden\" required=\"\" name=\"avatar_text\" value=\"");
      out.print(u.getAvatar());
      out.write("\"  placeholder=\"Ảnh \" class=\"form-control\">\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\"> Ảnh  </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"file\" required=\"\" name=\"avatar\"  placeholder=\"Ảnh \" class=\"form-control\">\r\n");
      out.write("                            \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Nơi sản xuất </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"made_in\" value=\"");
      out.print(u.getMade_in());
      out.write("\" placeholder=\"Nơi sản xuất\" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\"> Phân khối </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"capacity\" value=\"");
      out.print(u.getCapacity());
      out.write("\" placeholder=\"Phân khối \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Màu </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"color\" value=\"");
      out.print(u.getColor());
      out.write("\" placeholder=\"Màu \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\"> Model Year </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"model_year\" value=\"");
      out.print(u.getModel_year());
      out.write("\" placeholder=\"Model của năm \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Địa chỉ </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"location\" value=\"");
      out.print(u.getLocation());
      out.write("\" placeholder=\"Đại chỉ \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                        \r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\"> Nội dung</label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"content\" value=\"");
      out.print(u.getContent());
      out.write("\"  placeholder=\"Nội dung \" class=\"form-control\">\r\n");
      out.write("                            \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Loại </label>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <select class=\"form-control form-control-sm\" name=\"type\">\r\n");
      out.write("                                ");
 types types = new types();
                                    Vector<Types> list = types.all();

                                    for (int i = 0; i < list.size(); i++) {
                                
      out.write("\r\n");
      out.write("                                <option value=\"");
      out.print(list.get(i).getId());
      out.write("\" \r\n");
      out.write("                                        \r\n");
      out.write("                                        ");

                                            if(list.get(i).getId()== u.getType()){
                                                out.print("selected");
                                            }
                                        
      out.write("\r\n");
      out.write("                                        \r\n");
      out.write("                                        \r\n");
      out.write("                                        \r\n");
      out.write("                                        \r\n");
      out.write("                                        >");
      out.print(list.get(i).getName());
      out.write("</option>\r\n");
      out.write("                                ");

                                    }
                                
      out.write("\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Thương hiệu  </label>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <select class=\"form-control form-control-sm\" name=\"brand\">\r\n");
      out.write("                                ");
 brands brands = new brands();
                                    Vector<Brands> listbrands = brands.all();

                                    for (int i = 0; i < listbrands.size(); i++) {
                                
      out.write("\r\n");
      out.write("                                <option value=\"");
      out.print(listbrands.get(i).getId());
      out.write("\" \r\n");
      out.write("                                        ");

                                            if(listbrands.get(i).getId()== u.getBrand()){
                                                out.print("selected");
                                            }
                                        
      out.write("\r\n");
      out.write("                                        \r\n");
      out.write("                                        \r\n");
      out.write("                                        >");
      out.print(listbrands.get(i).getName());
      out.write("</option>\r\n");
      out.write("                                ");

                                    }
                                
      out.write("\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!--                    <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Regular Exp</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input type=\"text\" required=\"\" data-parsley-pattern=\"#[A-Fa-f0-9]{6}\" placeholder=\"Hex. Color\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Equal To</label>\r\n");
      out.write("                                            <div class=\"col-sm-4 col-lg-3 mb-3 mb-sm-0\">\r\n");
      out.write("                                                <input id=\"pass2\" type=\"password\" required=\"\" placeholder=\"Password\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"col-sm-4 col-lg-3\">\r\n");
      out.write("                                                <input type=\"password\" required=\"\" data-parsley-equalto=\"#pass2\" placeholder=\"Re-Type Password\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-sm-3 col-form-label text-sm-right\">Min check</label>\r\n");
      out.write("                                            <div class=\"col-sm-6\">\r\n");
      out.write("                                                <div class=\"custom-controls-stacked\">\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input id=\"ck1\" name=\"ck1\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar\" data-parsley-mincheck=\"2\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 1</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input id=\"ck2\" name=\"ck2\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar2\" data-parsley-mincheck=\"2\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 2</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input id=\"ck3\" name=\"ck3\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar3\" data-parsley-mincheck=\"2\" required=\"\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 3</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <div id=\"error-container1\"></div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>-->\r\n");
      out.write("                    <!--                    <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-sm-3 col-form-label text-sm-right\">Max check</label>\r\n");
      out.write("                                            <div class=\"col-sm-6\">\r\n");
      out.write("                                                <div class=\"custom-controls-stacked\">\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e1\" data-parsley-multiple=\"group1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 1</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e2\" data-parsley-multiple=\"group1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 2</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e3\" data-parsley-multiple=\"group1\" data-parsley-maxcheck=\"1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 3</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <div id=\"error-container2\"></div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">E-Mail</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input type=\"email\" required=\"\" data-parsley-type=\"email\" placeholder=\"Enter a valid e-mail\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">URL</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"url\" type=\"url\" required=\"\" placeholder=\"URL\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Digits</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"digits\" type=\"text\" required=\"\" placeholder=\"Enter only digits\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Number</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"number\" type=\"text\" required=\"\" placeholder=\"Enter only numbers\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Alphanumeric</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"alphanum\" type=\"text\" required=\"\" placeholder=\"Enter alphanumeric value\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Textarea</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <textarea required=\"\" class=\"form-control\"></textarea>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>-->\r\n");
      out.write("                    <div class=\"form-group row text-right\">\r\n");
      out.write("                        <div class=\"col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0\">\r\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-space btn-primary\">Submit</button>\r\n");
      out.write("                            \r\n");
      out.write("                            <a href=\"index.jsp\" class=\"btn btn-space btn-secondary\" >Cancel</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- end valifation types -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("</div>\r\n");
      out.write("                            <script src=\"assets/validate/products.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    ");

                        }else if( status.equals("DetailProduct")){
                    
      out.write("\r\n");
      out.write("                        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

    String sid = request.getParameter("id");
    int id = Integer.parseInt(sid);

    Products u = products.findbyid(id);
    String name = u.getName();

      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"page-header\">\r\n");
      out.write("            <h2 class=\"pageheader-title\">Chi tiết SP</h2>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"page-breadcrumb\">\r\n");
      out.write("                <nav aria-label=\"breadcrumb\">\r\n");
      out.write("                    <ol class=\"breadcrumb\">\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Produts</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item active\" aria-current=\"page\">Chi tiết</li>\r\n");
      out.write("                    </ol>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- ============================================================== -->\r\n");
      out.write("<!-- end pageheader -->\r\n");
      out.write("<!-- ============================================================== -->\r\n");
      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- data table multiselects  -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"card\">\r\n");
      out.write("            <div class=\"card-header\">\r\n");
      out.write("                <h5 class=\"mb-0\">Products </h5>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"card-body\">\r\n");
      out.write("                <div class=\"table-responsive\">\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <div>\r\n");
      out.write("\r\n");
      out.write("                            <table id=\"example3\" class=\"table table-striped table-bordered\" style=\"width:100%\">\r\n");
      out.write("                                <thead>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <th>Tên code</th>\r\n");
      out.write("                                        <th>Giá trị </th>\r\n");
      out.write("\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                </thead>\r\n");
      out.write("                                <tbody>\r\n");
      out.write("\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>id </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getId());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Tên  </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getName());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Giá </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getPrice());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Nơi sx  </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getMade_in());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Phân khối  </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getCapacity());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Màu </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getColor());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Đời xe </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getModel_year());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Địa điểm </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getLocation());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Ngày đăng </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getCreated_at());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Hãng xe </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getBrand());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Nội dung </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getContent());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("\r\n");
      out.write("                                </tbody>\r\n");
      out.write("\r\n");
      out.write("                            </table>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group row text-right\">\r\n");
      out.write("                <div class=\"col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0\">\r\n");
      out.write("                    \r\n");
      out.write("                    <a href=\"index.jsp\" class=\"btn btn-space btn-secondary\" >Cancel</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- ============================================================== -->\r\n");
      out.write("            <!-- end data table multiselects  -->\r\n");
      out.write("            <!-- ============================================================== -->\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                  \r\n");
      out.write("                    \r\n");
      out.write("                    <!--type-->\r\n");
      out.write("                     ");

                       
                        }else if( status.equals("Type"))
                        {
                    
      out.write("\r\n");
      out.write("                        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\n");
      out.write("                        <div class=\"page-header\">\n");
      out.write("                            <h2 class=\"pageheader-title\">Tables</h2>\n");
      out.write("                            \n");
      out.write("                            <div class=\"page-breadcrumb\">\n");
      out.write("                                <nav aria-label=\"breadcrumb\">\n");
      out.write("                                    <ol class=\"breadcrumb\">\n");
      out.write("                                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\n");
      out.write("                                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Types</a></li>\n");
      out.write("                                    </ol>\n");
      out.write("                                </nav>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- end pageheader -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                \n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- data table multiselects  -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"card-header\">\n");
      out.write("                                <h5 class=\"mb-0\">Types </h5>\n");
      out.write("                               \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <div class=\"table-responsive\">\n");
      out.write("                                    <div>\n");
      out.write("                                        <div>\n");
      out.write("                                            \n");
      out.write("                                            ");

                                                
                                                if(session.getAttribute("status")== "success"){
                                            
      out.write("\n");
      out.write("                                  \n");
      out.write("                                            <div class=\"alert alert-success\" role=\"alert\">\n");
      out.write("                                                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                  \n");
      out.write("                                    ");

                                        }else if(session.getAttribute("status")== "danger"){
                                    
      out.write("\n");
      out.write("                                    <div class=\"alert alert-danger\" role=\"alert\">\n");
      out.write("                                                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                    ");

                                        }
                                    
      out.write("\n");
      out.write("                                    \n");
      out.write("                                    ");

                                                session.removeAttribute("status");
                                                
                                                types type = new types();
                                                Vector<Types> list = type.all();
                                                
                                                if(list==null){
                                                    out.println("<h3>Lỗi kết nối CSDL</h3>");
                                                }
                                                else if(list.size()<=0){
                                                    out.println("<h3>Không có sản phẩm</h3>");
                                                }
                                                else
                                                {
                                                    
                                    
      out.write("\n");
      out.write("                                    <table id=\"example3\" class=\"table table-striped table-bordered\" style=\"width:100%\">\n");
      out.write("                                        <thead>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>id</th>\n");
      out.write("                                                <th>tên</th>\n");
      out.write("                                                \n");
      out.write("                                                <th>\n");
      out.write("                                                    <a href=\"index.jsp?status=AddType\" class=\"btn btn-success active\">Thêm </a>\n");
      out.write("                                                </th>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                             ");
        
//                                                    for(int i=0; i<list.size();i++)
//                                                    {
//                                                        int malop = list.get(i).getMalop();
//                                                        String tenlop = dslop.get(i).getTenlop();
                                                
                                                
                                                  for(int i=0; i< list.size();i++)
                                                   {
                                                      
                                                      
                                              
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(list.get(i).getId());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(list.get(i).getName());
      out.write("</td>\n");
      out.write("                                               \n");
      out.write("                                                <td>\n");
      out.write("                                                    <a href=\"index.jsp?status=EditType&id=");
      out.print(list.get(i).getId());
      out.write("\" class=\"btn btn-brand active\">Sửa </a>\n");
      out.write("                                                    <a href=\"../type_delete?id=");
      out.print(list.get(i).getId());
      out.write("\" class=\"btn btn-danger active\">Xóa </a>\n");
      out.write("                                                    <a href=\"index.jsp?status=DetailType&id=");
      out.print(list.get(i).getId());
      out.write("\" class=\"btn btn-info active\">Chi Tiết </a>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");

                                                }
                                            
      out.write("\n");
      out.write("                                        </tbody>\n");
      out.write("                                        <tfoot>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>id</th>\n");
      out.write("                                                <th>tên</th>\n");
      out.write("                                                \n");
      out.write("                                                <th></th>\n");
      out.write("                                        </tfoot>\n");
      out.write("                                    </table>\n");
      out.write("                                        ");

                                                }
                                            
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- end data table multiselects  -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                </div>\n");
      out.write("                               \n");
      out.write(" ");
      out.write("\r\n");
      out.write("                    ");

                        }else if( status.equals("AddType")){
                        
                    
      out.write("\r\n");
      out.write("                         ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--pageEncoding=\"UTF-8\"%>-->\r\n");
      out.write("     \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"page-header\">\r\n");
      out.write("            <h2 class=\"pageheader-title\">Thêm</h2>\r\n");
      out.write("           \r\n");
      out.write("            <div class=\"page-breadcrumb\">\r\n");
      out.write("                <nav aria-label=\"breadcrumb\">\r\n");
      out.write("                    <ol class=\"breadcrumb\">\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Types</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item active\" aria-current=\"page\">Thêm</li>\r\n");
      out.write("                    </ol>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- valifation types -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"card\">\r\n");
      out.write("            <h5 class=\"card-header\">Types</h5>\r\n");
      out.write("            <div class=\"card-body\">\r\n");
      out.write("                \r\n");
      out.write("                                    ");

                                    if(session.getAttribute("status")== "danger"){
                                    
      out.write("\r\n");
      out.write("                                    <div class=\"alert alert-danger\" role=\"alert\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    ");

                                        }
                                        session.removeAttribute("status");
                                    
      out.write("\r\n");
      out.write("                <form \r\n");
      out.write("                    method=\"post\" \r\n");
      out.write("                    action=\"../type_add\" \r\n");
      out.write("                    id=\"validationform\" \r\n");
      out.write("                    \r\n");
      out.write("                    >\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Tên</label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"name\" placeholder=\"Tên \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("              \r\n");
      out.write("                    <!--                    <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Regular Exp</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input type=\"text\" required=\"\" data-parsley-pattern=\"#[A-Fa-f0-9]{6}\" placeholder=\"Hex. Color\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Equal To</label>\r\n");
      out.write("                                            <div class=\"col-sm-4 col-lg-3 mb-3 mb-sm-0\">\r\n");
      out.write("                                                <input id=\"pass2\" type=\"password\" required=\"\" placeholder=\"Password\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"col-sm-4 col-lg-3\">\r\n");
      out.write("                                                <input type=\"password\" required=\"\" data-parsley-equalto=\"#pass2\" placeholder=\"Re-Type Password\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-sm-3 col-form-label text-sm-right\">Min check</label>\r\n");
      out.write("                                            <div class=\"col-sm-6\">\r\n");
      out.write("                                                <div class=\"custom-controls-stacked\">\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input id=\"ck1\" name=\"ck1\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar\" data-parsley-mincheck=\"2\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 1</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input id=\"ck2\" name=\"ck2\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar2\" data-parsley-mincheck=\"2\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 2</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input id=\"ck3\" name=\"ck3\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar3\" data-parsley-mincheck=\"2\" required=\"\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 3</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <div id=\"error-container1\"></div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>-->\r\n");
      out.write("                    <!--                    <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-sm-3 col-form-label text-sm-right\">Max check</label>\r\n");
      out.write("                                            <div class=\"col-sm-6\">\r\n");
      out.write("                                                <div class=\"custom-controls-stacked\">\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e1\" data-parsley-multiple=\"group1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 1</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e2\" data-parsley-multiple=\"group1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 2</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e3\" data-parsley-multiple=\"group1\" data-parsley-maxcheck=\"1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 3</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <div id=\"error-container2\"></div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">E-Mail</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input type=\"email\" required=\"\" data-parsley-type=\"email\" placeholder=\"Enter a valid e-mail\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">URL</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"url\" type=\"url\" required=\"\" placeholder=\"URL\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Digits</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"digits\" type=\"text\" required=\"\" placeholder=\"Enter only digits\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Number</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"number\" type=\"text\" required=\"\" placeholder=\"Enter only numbers\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Alphanumeric</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"alphanum\" type=\"text\" required=\"\" placeholder=\"Enter alphanumeric value\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Textarea</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <textarea required=\"\" class=\"form-control\"></textarea>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>-->\r\n");
      out.write("                    <div class=\"form-group row text-right\">\r\n");
      out.write("                        <div class=\"col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0\">\r\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-space btn-primary\">Submit</button>\r\n");
      out.write("                             <a href=\"index.jsp?status=Type\" class=\"btn btn-space btn-secondary\" >Cancel</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- end valifation types -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("</div>\r\n");
      out.write("<script src=\"assets/validate/products.js\"></script>");
      out.write("\r\n");
      out.write("                    ");

                        }else if( status.equals("EditType")){
                    
      out.write("\r\n");
      out.write("                   \r\n");
      out.write("                         ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

     String sid=request.getParameter("id");  
     int id=Integer.parseInt(sid);  
     
     Types  u = types.findbyid(id);
     String name = u.getName();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"page-header\">\r\n");
      out.write("            <h2 class=\"pageheader-title\">Chỉnh sửa </h2>\r\n");
      out.write("           \r\n");
      out.write("            <div class=\"page-breadcrumb\">\r\n");
      out.write("                <nav aria-label=\"breadcrumb\">\r\n");
      out.write("                    <ol class=\"breadcrumb\">\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Types </a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item active\" aria-current=\"page\">Chỉnh sửa </li>\r\n");
      out.write("                    </ol>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- valifation types -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"card\">\r\n");
      out.write("            <h5 class=\"card-header\">Types</h5>\r\n");
      out.write("            <div class=\"card-body\">\r\n");
      out.write("                                    ");

                                    if(session.getAttribute("status")== "danger"){
                                    
      out.write("\r\n");
      out.write("                                    <div class=\"alert alert-danger\" role=\"alert\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    ");

                                        }
                                        session.removeAttribute("status");
                                    
      out.write("\r\n");
      out.write("                <form method=\"post\" action=\"../type_edit\"\r\n");
      out.write("                    id=\"validationform\" \r\n");
      out.write("                    data-parsley-validate=\"\"\r\n");
      out.write("                    novalidate=\"\">\r\n");
      out.write("                    <input type=\"hidden\" required=\"\" name=\"id\" value=\"");
      out.print(u.getId());
      out.write("\" placeholder=\"id \" class=\"form-control\">\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Tên</label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"name\" value=\"");
      out.print(u.getName());
      out.write("\" placeholder=\"Tên \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    \r\n");
      out.write("                    <div class=\"form-group row text-right\">\r\n");
      out.write("                        <div class=\"col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0\">\r\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-space btn-primary\">Submit</button>\r\n");
      out.write("                            \r\n");
      out.write("                            <a href=\"index.jsp?status=Type\" class=\"btn btn-space btn-secondary\" >Cancel</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- end valifation types -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("</div>\r\n");
      out.write(" <script src=\"assets/validate/products.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    ");

                        }else if( status.equals("DetailType")){
                    
      out.write("\r\n");
      out.write("                        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

    String sid = request.getParameter("id");
    int id = Integer.parseInt(sid);

    Types u = types.findbyid(id);
    String name = u.getName();

      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"page-header\">\r\n");
      out.write("            <h2 class=\"pageheader-title\">Chi tiết loại sp</h2>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"page-breadcrumb\">\r\n");
      out.write("                <nav aria-label=\"breadcrumb\">\r\n");
      out.write("                    <ol class=\"breadcrumb\">\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Types</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item active\" aria-current=\"page\">Chi tiết</li>\r\n");
      out.write("                    </ol>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- ============================================================== -->\r\n");
      out.write("<!-- end pageheader -->\r\n");
      out.write("<!-- ============================================================== -->\r\n");
      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- data table multiselects  -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"card\">\r\n");
      out.write("            <div class=\"card-header\">\r\n");
      out.write("                <h5 class=\"mb-0\">Types </h5>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"card-body\">\r\n");
      out.write("                <div class=\"table-responsive\">\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <div>\r\n");
      out.write("\r\n");
      out.write("                            <table id=\"example3\" class=\"table table-striped table-bordered\" style=\"width:100%\">\r\n");
      out.write("                                <thead>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <th>Tên code</th>\r\n");
      out.write("                                        <th>Giá trị </th>\r\n");
      out.write("\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                </thead>\r\n");
      out.write("                                <tbody>\r\n");
      out.write("\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>id </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getId());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Tên  </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getName());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                   \r\n");
      out.write("\r\n");
      out.write("                                </tbody>\r\n");
      out.write("\r\n");
      out.write("                            </table>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group row text-right\">\r\n");
      out.write("                <div class=\"col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0\">\r\n");
      out.write("                    \r\n");
      out.write("                    <a href=\"index.jsp?status=Type\" class=\"btn btn-space btn-secondary\" >Cancel</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- ============================================================== -->\r\n");
      out.write("            <!-- end data table multiselects  -->\r\n");
      out.write("            <!-- ============================================================== -->\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                 <!--endtype-->\r\n");
      out.write("                 \r\n");
      out.write("                 <!--brand-->\r\n");
      out.write("                 \r\n");
      out.write("                 \r\n");
      out.write("                 ");

                       
                        }else if( status.equals("Brand"))
                        {
                    
      out.write("\r\n");
      out.write("                        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\n");
      out.write("                        <div class=\"page-header\">\n");
      out.write("                            <h2 class=\"pageheader-title\">Tables</h2>\n");
      out.write("                            \n");
      out.write("                            <div class=\"page-breadcrumb\">\n");
      out.write("                                <nav aria-label=\"breadcrumb\">\n");
      out.write("                                    <ol class=\"breadcrumb\">\n");
      out.write("                                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\n");
      out.write("                                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Brands</a></li>\n");
      out.write("                                    </ol>\n");
      out.write("                                </nav>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- end pageheader -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                \n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- data table multiselects  -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"card-header\">\n");
      out.write("                                <h5 class=\"mb-0\">Brands </h5>\n");
      out.write("                               \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <div class=\"table-responsive\">\n");
      out.write("                                    <div>\n");
      out.write("                                        <div>\n");
      out.write("                                            \n");
      out.write("                                            ");

                                                
                                                if(session.getAttribute("status")== "success"){
                                            
      out.write("\n");
      out.write("                                  \n");
      out.write("                                            <div class=\"alert alert-success\" role=\"alert\">\n");
      out.write("                                                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                  \n");
      out.write("                                    ");

                                        }else if(session.getAttribute("status")== "danger"){
                                    
      out.write("\n");
      out.write("                                    <div class=\"alert alert-danger\" role=\"alert\">\n");
      out.write("                                                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                    ");

                                        }
                                    
      out.write("\n");
      out.write("                                    \n");
      out.write("                                    ");

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
                                                    
                                    
      out.write("\n");
      out.write("                                    <table id=\"example3\" class=\"table table-striped table-bordered\" style=\"width:100%\">\n");
      out.write("                                        <thead>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>id</th>\n");
      out.write("                                                <th>tên</th>\n");
      out.write("                                                \n");
      out.write("                                                <th>\n");
      out.write("                                                    <a href=\"index.jsp?status=AddType\" class=\"btn btn-success active\">Thêm </a>\n");
      out.write("                                                </th>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                             ");
        
//                                                    for(int i=0; i<list.size();i++)
//                                                    {
//                                                        int malop = list.get(i).getMalop();
//                                                        String tenlop = dslop.get(i).getTenlop();
                                                
                                                
                                                  for(int i=0; i< list.size();i++)
                                                   {
                                                      
                                                      
                                              
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(list.get(i).getId());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(list.get(i).getName());
      out.write("</td>\n");
      out.write("                                               \n");
      out.write("                                                <td>\n");
      out.write("                                                    <a href=\"index.jsp?status=EditBrand&id=");
      out.print(list.get(i).getId());
      out.write("\" class=\"btn btn-brand active\">Sửa </a>\n");
      out.write("                                                    <a href=\"../brand_delete?id=");
      out.print(list.get(i).getId());
      out.write("\" class=\"btn btn-danger active\">Xóa </a>\n");
      out.write("                                                    <a href=\"index.jsp?status=DetailBrand&id=");
      out.print(list.get(i).getId());
      out.write("\" class=\"btn btn-info active\">Chi Tiết </a>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");

                                                }
                                            
      out.write("\n");
      out.write("                                        </tbody>\n");
      out.write("                                        <tfoot>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>id</th>\n");
      out.write("                                                <th>tên</th>\n");
      out.write("                                                \n");
      out.write("                                                <th></th>\n");
      out.write("                                        </tfoot>\n");
      out.write("                                    </table>\n");
      out.write("                                        ");

                                                }
                                            
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- end data table multiselects  -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                </div>\n");
      out.write("                               \n");
      out.write(" ");
      out.write("\r\n");
      out.write("                    ");

                        }else if( status.equals("AddBrand")){
                        
                    
      out.write("\r\n");
      out.write("                         ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--pageEncoding=\"UTF-8\"%>-->\r\n");
      out.write("     \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"page-header\">\r\n");
      out.write("            <h2 class=\"pageheader-title\">Thêm</h2>\r\n");
      out.write("           \r\n");
      out.write("            <div class=\"page-breadcrumb\">\r\n");
      out.write("                <nav aria-label=\"breadcrumb\">\r\n");
      out.write("                    <ol class=\"breadcrumb\">\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Brands</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item active\" aria-current=\"page\">Thêm</li>\r\n");
      out.write("                    </ol>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- valifation brands -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"card\">\r\n");
      out.write("            <h5 class=\"card-header\">Brands</h5>\r\n");
      out.write("            <div class=\"card-body\">\r\n");
      out.write("                \r\n");
      out.write("                                    ");

                                    if(session.getAttribute("status")== "danger"){
                                    
      out.write("\r\n");
      out.write("                                    <div class=\"alert alert-danger\" role=\"alert\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    ");

                                        }
                                        session.removeAttribute("status");
                                    
      out.write("\r\n");
      out.write("                <form \r\n");
      out.write("                    method=\"post\" \r\n");
      out.write("                    action=\"../type_add\" \r\n");
      out.write("                    id=\"validationform\" \r\n");
      out.write("                    \r\n");
      out.write("                    >\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Tên</label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"name\" placeholder=\"Tên \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("              \r\n");
      out.write("                    <!--                    <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Regular Exp</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input type=\"text\" required=\"\" data-parsley-pattern=\"#[A-Fa-f0-9]{6}\" placeholder=\"Hex. Color\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Equal To</label>\r\n");
      out.write("                                            <div class=\"col-sm-4 col-lg-3 mb-3 mb-sm-0\">\r\n");
      out.write("                                                <input id=\"pass2\" type=\"password\" required=\"\" placeholder=\"Password\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"col-sm-4 col-lg-3\">\r\n");
      out.write("                                                <input type=\"password\" required=\"\" data-parsley-equalto=\"#pass2\" placeholder=\"Re-Type Password\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-sm-3 col-form-label text-sm-right\">Min check</label>\r\n");
      out.write("                                            <div class=\"col-sm-6\">\r\n");
      out.write("                                                <div class=\"custom-controls-stacked\">\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input id=\"ck1\" name=\"ck1\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar\" data-parsley-mincheck=\"2\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 1</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input id=\"ck2\" name=\"ck2\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar2\" data-parsley-mincheck=\"2\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 2</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input id=\"ck3\" name=\"ck3\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar3\" data-parsley-mincheck=\"2\" required=\"\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 3</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <div id=\"error-container1\"></div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>-->\r\n");
      out.write("                    <!--                    <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-sm-3 col-form-label text-sm-right\">Max check</label>\r\n");
      out.write("                                            <div class=\"col-sm-6\">\r\n");
      out.write("                                                <div class=\"custom-controls-stacked\">\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e1\" data-parsley-multiple=\"group1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 1</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e2\" data-parsley-multiple=\"group1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 2</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e3\" data-parsley-multiple=\"group1\" data-parsley-maxcheck=\"1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 3</span>\r\n");
      out.write("                                                    </label>\r\n");
      out.write("                                                    <div id=\"error-container2\"></div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">E-Mail</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input type=\"email\" required=\"\" data-parsley-type=\"email\" placeholder=\"Enter a valid e-mail\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">URL</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"url\" type=\"url\" required=\"\" placeholder=\"URL\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Digits</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"digits\" type=\"text\" required=\"\" placeholder=\"Enter only digits\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Number</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"number\" type=\"text\" required=\"\" placeholder=\"Enter only numbers\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Alphanumeric</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <input data-parsley-type=\"alphanum\" type=\"text\" required=\"\" placeholder=\"Enter alphanumeric value\" class=\"form-control\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group row\">\r\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Textarea</label>\r\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                                                <textarea required=\"\" class=\"form-control\"></textarea>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>-->\r\n");
      out.write("                    <div class=\"form-group row text-right\">\r\n");
      out.write("                        <div class=\"col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0\">\r\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-space btn-primary\">Submit</button>\r\n");
      out.write("                             <a href=\"index.jsp?status=Brand\" class=\"btn btn-space btn-secondary\" >Cancel</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- end valifation brands -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("</div>\r\n");
      out.write("<script src=\"assets/validate/products.js\"></script>");
      out.write("\r\n");
      out.write("                    ");

                        }else if( status.equals("EditBrand")){
                    
      out.write("\r\n");
      out.write("                   \r\n");
      out.write("                         ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

     String sid=request.getParameter("id");  
     int id=Integer.parseInt(sid);  
     
     Brands  u = brands.findbyid(id);
     String name = u.getName();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"page-header\">\r\n");
      out.write("            <h2 class=\"pageheader-title\">Chỉnh sửa </h2>\r\n");
      out.write("           \r\n");
      out.write("            <div class=\"page-breadcrumb\">\r\n");
      out.write("                <nav aria-label=\"breadcrumb\">\r\n");
      out.write("                    <ol class=\"breadcrumb\">\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Brands </a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item active\" aria-current=\"page\">Chỉnh sửa </li>\r\n");
      out.write("                    </ol>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- valifation brands -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"card\">\r\n");
      out.write("            <h5 class=\"card-header\">Brands</h5>\r\n");
      out.write("            <div class=\"card-body\">\r\n");
      out.write("                                    ");

                                    if(session.getAttribute("status")== "danger"){
                                    
      out.write("\r\n");
      out.write("                                    <div class=\"alert alert-danger\" role=\"alert\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    ");

                                        }
                                        session.removeAttribute("status");
                                    
      out.write("\r\n");
      out.write("                <form method=\"post\" action=\"../type_edit\"\r\n");
      out.write("                    id=\"validationform\" \r\n");
      out.write("                    data-parsley-validate=\"\"\r\n");
      out.write("                    novalidate=\"\">\r\n");
      out.write("                    <input type=\"hidden\" required=\"\" name=\"id\" value=\"");
      out.print(u.getId());
      out.write("\" placeholder=\"id \" class=\"form-control\">\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Tên</label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"name\" value=\"");
      out.print(u.getName());
      out.write("\" placeholder=\"Tên \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    \r\n");
      out.write("                    <div class=\"form-group row text-right\">\r\n");
      out.write("                        <div class=\"col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0\">\r\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-space btn-primary\">Submit</button>\r\n");
      out.write("                            \r\n");
      out.write("                            <a href=\"index.jsp?status=Brand\" class=\"btn btn-space btn-secondary\" >Cancel</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- end valifation brands -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("</div>\r\n");
      out.write(" <script src=\"assets/validate/products.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    ");

                        }else if( status.equals("DetailBrand")){
                    
      out.write("\r\n");
      out.write("                        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

    String sid = request.getParameter("id");
    int id = Integer.parseInt(sid);

    Brands u = brands.findbyid(id);
    String name = u.getName();

      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"page-header\">\r\n");
      out.write("            <h2 class=\"pageheader-title\">Chi tiết loại sp</h2>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"page-breadcrumb\">\r\n");
      out.write("                <nav aria-label=\"breadcrumb\">\r\n");
      out.write("                    <ol class=\"breadcrumb\">\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Brands</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item active\" aria-current=\"page\">Chi tiết</li>\r\n");
      out.write("                    </ol>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- ============================================================== -->\r\n");
      out.write("<!-- end pageheader -->\r\n");
      out.write("<!-- ============================================================== -->\r\n");
      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- data table multiselects  -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"card\">\r\n");
      out.write("            <div class=\"card-header\">\r\n");
      out.write("                <h5 class=\"mb-0\">Brands </h5>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"card-body\">\r\n");
      out.write("                <div class=\"table-responsive\">\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <div>\r\n");
      out.write("\r\n");
      out.write("                            <table id=\"example3\" class=\"table table-striped table-bordered\" style=\"width:100%\">\r\n");
      out.write("                                <thead>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <th>Tên code</th>\r\n");
      out.write("                                        <th>Giá trị </th>\r\n");
      out.write("\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                </thead>\r\n");
      out.write("                                <tbody>\r\n");
      out.write("\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>id </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getId());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Tên  </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getName());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                   \r\n");
      out.write("\r\n");
      out.write("                                </tbody>\r\n");
      out.write("\r\n");
      out.write("                            </table>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group row text-right\">\r\n");
      out.write("                <div class=\"col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0\">\r\n");
      out.write("                    \r\n");
      out.write("                    <a href=\"index.jsp?status=Brand\" class=\"btn btn-space btn-secondary\" >Cancel</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- ============================================================== -->\r\n");
      out.write("            <!-- end data table multiselects  -->\r\n");
      out.write("            <!-- ============================================================== -->\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                   \r\n");
      out.write("                    \r\n");
      out.write("                    \r\n");
      out.write("                <!--end brand--> \r\n");
      out.write("                 \r\n");
      out.write("                \r\n");
      out.write("                <!--users-->\r\n");
      out.write("\r\n");
      out.write("                     ");

                       
                        }else if( status.equals("User"))
                        {
                    
      out.write("\r\n");
      out.write("                        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\n");
      out.write("                        <div class=\"page-header\">\n");
      out.write("                            <h2 class=\"pageheader-title\">Tables</h2>\n");
      out.write("                            \n");
      out.write("                            <div class=\"page-breadcrumb\">\n");
      out.write("                                <nav aria-label=\"breadcrumb\">\n");
      out.write("                                    <ol class=\"breadcrumb\">\n");
      out.write("                                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\n");
      out.write("                                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Users</a></li>\n");
      out.write("                                    </ol>\n");
      out.write("                                </nav>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- end pageheader -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                \n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- data table multiselects  -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"card-header\">\n");
      out.write("                                <h5 class=\"mb-0\">Users </h5>\n");
      out.write("                               \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <div class=\"table-responsive\">\n");
      out.write("                                    <div>\n");
      out.write("                                        <div>\n");
      out.write("                                            \n");
      out.write("                                            ");

                                                
                                                if(session.getAttribute("status")== "success"){
                                            
      out.write("\n");
      out.write("                                  \n");
      out.write("                                            <div class=\"alert alert-success\" role=\"alert\">\n");
      out.write("                                                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                  \n");
      out.write("                                    ");

                                        }
                                    
      out.write("\n");
      out.write("                                    \n");
      out.write("                                    ");

                                                session.removeAttribute("status");
                                                users e = new users();
                                                Vector<Users> list = e.all();
                                                
                                                if(list==null){
                                                    out.println("<h3>Lỗi kết nối CSDL</h3>");
                                                }
                                                else if(list.size()<=0){
                                                    out.println("<h3>Không có sản phẩm</h3>");
                                                }
                                                else
                                                {
                                                    
                                    
      out.write("\n");
      out.write("                                    <table id=\"example3\" class=\"table table-striped table-bordered\" style=\"width:100%\">\n");
      out.write("                                        <thead>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>id</th>\n");
      out.write("                                                <th>tên</th>\n");
      out.write("                                                <th>email</th>\n");
      out.write("                                                <th>ảnh</th>\n");
      out.write("                                                <th>permission</th>\n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                                <th>\n");
      out.write("                                                    <a href=\"index.jsp?status=AddUser\" class=\"btn btn-success active\">Thêm </a>\n");
      out.write("                                                </th>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                             ");
        
//                                                    for(int i=0; i<list.size();i++)
//                                                    {
//                                                        int malop = list.get(i).getMalop();
//                                                        String tenlop = dslop.get(i).getTenlop();
                                                
                                                
                                                  for(int i=0; i< list.size();i++)
                                                   {
                                                      
                                                      
                                              
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(list.get(i).getId());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(list.get(i).getName());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(list.get(i).getEmail());
      out.write("</td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <img src=\"");
      out.print(list.get(i).getAvatar());
      out.write("\" width=\"100px\" />\n");
      out.write("                                                    \n");
      out.write("                                                </td>\n");
      out.write("                                                \n");
      out.write("                                                <td>\n");
      out.write("                                                \n");
      out.write("                                                    ");

                                                        if(list.get(i).getPermissions()==1){
                                                             out.println("admin" );
                                                        }else{
                                                            out.println("Thường");
                                                        }
                                                      
      out.write("\n");
      out.write("                                                     \n");
      out.write("                                                </td>\n");
      out.write("                                                \n");
      out.write("                                                <td>\n");
      out.write("                                                    <a href=\"index.jsp?status=EditUser&id=");
      out.print(list.get(i).getId());
      out.write("\" class=\"btn btn-brand active\">Sửa </a>\n");
      out.write("                                                    <a href=\"../users_delete?id=");
      out.print(list.get(i).getId());
      out.write("\" class=\"btn btn-danger active\">Xóa </a>\n");
      out.write("                                                    <a href=\"index.jsp?status=DetailUser&id=");
      out.print(list.get(i).getId());
      out.write("\" class=\"btn btn-info active\">Chi Tiết </a>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");

                                                }
                                            
      out.write("\n");
      out.write("                                        </tbody>\n");
      out.write("                                        <tfoot>\n");
      out.write("                                            <tr>\n");
      out.write("                                               <th>id</th>\n");
      out.write("                                                <th>tên</th>\n");
      out.write("                                                <th>email</th>\n");
      out.write("                                                <th>ảnh</th>\n");
      out.write("                                                <th>permission</th>\n");
      out.write("                                                <th></th>\n");
      out.write("                                        </tfoot>\n");
      out.write("                                    </table>\n");
      out.write("                                        ");

                                                }
                                            
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- end data table multiselects  -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                </div>\n");
      out.write("                               \n");
      out.write(" ");
      out.write("\r\n");
      out.write("                    ");

                        }else if( status.equals("AddUser")){
                        
                    
      out.write("\r\n");
      out.write("                         ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--pageEncoding=\"UTF-8\"%>-->\r\n");
      out.write("     \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"page-header\">\r\n");
      out.write("            <h2 class=\"pageheader-title\">Thêm</h2>\r\n");
      out.write("           \r\n");
      out.write("            <div class=\"page-breadcrumb\">\r\n");
      out.write("                <nav aria-label=\"breadcrumb\">\r\n");
      out.write("                    <ol class=\"breadcrumb\">\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Users</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item active\" aria-current=\"page\">Thêm</li>\r\n");
      out.write("                    </ol>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- valifation types -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"card\">\r\n");
      out.write("            <h5 class=\"card-header\">Users</h5>\r\n");
      out.write("            <div class=\"card-body\">\r\n");
      out.write("                \r\n");
      out.write("                                    ");

                                    if(session.getAttribute("status")== "danger"){
                                    
      out.write("\r\n");
      out.write("                                    <div class=\"alert alert-danger\" role=\"alert\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    ");

                                        }
                                        session.removeAttribute("status");
                                    
      out.write("\r\n");
      out.write("                <form \r\n");
      out.write("                    method=\"post\" \r\n");
      out.write("                    action=\"../users_add\" \r\n");
      out.write("                    enctype = \"multipart/form-data\"\r\n");
      out.write("                    id=\"validationform\" \r\n");
      out.write("                    \r\n");
      out.write("                    >\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Tên</label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"name\" placeholder=\"Tên \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Email </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"email\" placeholder=\"email \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\"> Ảnh  </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"file\" required=\"\" name=\"avatar\"  placeholder=\"Ảnh \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">password </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"password\" required=\"\" name=\"password\" placeholder=\"password\" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  \r\n");
      out.write("                   \r\n");
      out.write("                 \r\n");
      out.write("\r\n");
      out.write("                \r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Quyền </label>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <select class=\"form-control form-control-sm\" name=\"permissions\">\r\n");
      out.write("                               \r\n");
      out.write("                                <option value=\"0\">Thường</option>\r\n");
      out.write("                                <option value=\"1\">admin</option>\r\n");
      out.write("                                \r\n");
      out.write("                              \r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-group row text-right\">\r\n");
      out.write("                        <div class=\"col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0\">\r\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-space btn-primary\">Submit</button>\r\n");
      out.write("                             <a href=\"index.jsp?status=User\" class=\"btn btn-space btn-secondary\" >Cancel</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- end valifation types -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("</div>\r\n");
      out.write("<script src=\"assets/validate/products.js\"></script>");
      out.write("\r\n");
      out.write("                    ");

                        }else if( status.equals("EditUser")){
                    
      out.write("\r\n");
      out.write("                         \r\n");
      out.write("                         ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

     String sid=request.getParameter("id");  
     int id=Integer.parseInt(sid);  
     
     Users  u = users.findbyid(id);
     String name = u.getName();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"page-header\">\r\n");
      out.write("            <h2 class=\"pageheader-title\">Chỉnh sửa </h2>\r\n");
      out.write("           \r\n");
      out.write("            <div class=\"page-breadcrumb\">\r\n");
      out.write("                <nav aria-label=\"breadcrumb\">\r\n");
      out.write("                    <ol class=\"breadcrumb\">\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Users </a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item active\" aria-current=\"page\">Chỉnh sửa </li>\r\n");
      out.write("                    </ol>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- valifation types -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"card\">\r\n");
      out.write("            <h5 class=\"card-header\">Users</h5>\r\n");
      out.write("            <div class=\"card-body\">\r\n");
      out.write("                                    ");

                                    if(session.getAttribute("status")== "danger"){
                                    
      out.write("\r\n");
      out.write("                                    <div class=\"alert alert-danger\" role=\"alert\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    ");

                                        }
                                        session.removeAttribute("status");
                                    
      out.write("\r\n");
      out.write("                                   \r\n");
      out.write("                <form method=\"post\" action=\"../users_edit\"\r\n");
      out.write("                    id=\"validationform\" \r\n");
      out.write("                    data-parsley-validate=\"\"\r\n");
      out.write("                    enctype = \"multipart/form-data\"\r\n");
      out.write("                    novalidate=\"\">\r\n");
      out.write("                    <input type=\"hidden\" required=\"\" name=\"id\" value=\"");
      out.print(u.getId());
      out.write("\" placeholder=\"Tên \" class=\"form-control\">\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Tên</label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"name\" value=\"");
      out.print(u.getName());
      out.write("\" placeholder=\"Tên \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">email </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"email\" value=\"");
      out.print(u.getEmail());
      out.write("\" placeholder=\"Giá \" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                        <input type=\"hidden\" required=\"\" name=\"avatar_text\" value=\"");
      out.print(u.getAvatar());
      out.write("\"  placeholder=\"Ảnh \" class=\"form-control\">\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\"> Ảnh  </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"file\" required=\"\" name=\"avatar\"  placeholder=\"Ảnh \" class=\"form-control\">\r\n");
      out.write("                            \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">password </label>\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <input type=\"password\" required=\"\" name=\"password\" value=\"");
      out.print(u.getPassword());
      out.write("\" placeholder=\"Nơi sản xuất\" class=\"form-control\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                   \r\n");
      out.write("                    <div class=\"form-group row\">\r\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Quyền </label>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\r\n");
      out.write("                            <select class=\"form-control form-control-sm\" name=\"permissions\">\r\n");
      out.write("                                ");
 

                                    for (int i = 0; i <= 1; i++) {
                                
      out.write("\r\n");
      out.write("                                <option value=\"");
      out.print(i);
      out.write("\" \r\n");
      out.write("                                        \r\n");
      out.write("                                        ");

                                            if(i== u.getPermissions()){
                                                out.print("selected");
                                            }
                                        
      out.write("\r\n");
      out.write("                                        \r\n");
      out.write("                                        \r\n");
      out.write("                                        \r\n");
      out.write("                                        \r\n");
      out.write("                                        >");

                                            if(i== 1){
                                                out.print("admin");
                                            }else{
                                                out.print("thường");
                                            }
                                        
      out.write("</option>\r\n");
      out.write("                                ");

                                    }
                                
      out.write("\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                   \r\n");
      out.write("                    <div class=\"form-group row text-right\">\r\n");
      out.write("                        <div class=\"col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0\">\r\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-space btn-primary\">Submit</button>\r\n");
      out.write("                            \r\n");
      out.write("                            <a href=\"index.jsp?status=User\" class=\"btn btn-space btn-secondary\" >Cancel</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- end valifation types -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("</div>\r\n");
      out.write("                            <script src=\"assets/validate/products.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    ");

                        }else if( status.equals("DetailUser")){
                    
      out.write("\r\n");
      out.write("                        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

    String sid = request.getParameter("id");
    int id = Integer.parseInt(sid);

    Users u = users.findbyid(id);
    String name = u.getName();

      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"page-header\">\r\n");
      out.write("            <h2 class=\"pageheader-title\">Chi tiết tk</h2>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"page-breadcrumb\">\r\n");
      out.write("                <nav aria-label=\"breadcrumb\">\r\n");
      out.write("                    <ol class=\"breadcrumb\">\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Users</a></li>\r\n");
      out.write("                        <li class=\"breadcrumb-item active\" aria-current=\"page\">Chi tiết</li>\r\n");
      out.write("                    </ol>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- ============================================================== -->\r\n");
      out.write("<!-- end pageheader -->\r\n");
      out.write("<!-- ============================================================== -->\r\n");
      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- data table multiselects  -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("        <div class=\"card\">\r\n");
      out.write("            <div class=\"card-header\">\r\n");
      out.write("                <h5 class=\"mb-0\">Users </h5>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"card-body\">\r\n");
      out.write("                <div class=\"table-responsive\">\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <div>\r\n");
      out.write("\r\n");
      out.write("                            <table id=\"example3\" class=\"table table-striped table-bordered\" style=\"width:100%\">\r\n");
      out.write("                                <thead>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <th>Tên code</th>\r\n");
      out.write("                                        <th>Giá trị </th>\r\n");
      out.write("\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                </thead>\r\n");
      out.write("                                <tbody>\r\n");
      out.write("\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>id </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getId());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Tên  </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getName());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>email </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getEmail());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>ảnh  </td>\r\n");
      out.write("                                        <td><img src=\"");
      out.print(u.getAvatar());
      out.write("\" width=\"100px\" /></td>\r\n");
      out.write("                                        \r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Quyền  </td>\r\n");
      out.write("                                        <td>");
      out.print(u.getPermissions());
      out.write("</td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    \r\n");
      out.write("                                   \r\n");
      out.write("\r\n");
      out.write("                                </tbody>\r\n");
      out.write("\r\n");
      out.write("                            </table>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group row text-right\">\r\n");
      out.write("                <div class=\"col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0\">\r\n");
      out.write("                    \r\n");
      out.write("                    <a href=\"index.jsp?status=User\" class=\"btn btn-space btn-secondary\" >Cancel</a>\r\n");
      out.write("                    <a href=\"index.jsp?status=EditUser&id=");
      out.print(u.getId());
      out.write("\" class=\"btn btn-brand \">Sửa </a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- ============================================================== -->\r\n");
      out.write("            <!-- end data table multiselects  -->\r\n");
      out.write("            <!-- ============================================================== -->\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    ");

                        }
                    
      out.write("        \r\n");
      out.write("            <!-- end users-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- ============================================================== -->\r\n");
      out.write("            <!-- footer -->\r\n");
      out.write("            <!-- ============================================================== -->\r\n");
      out.write("             ");
      out.write("<div class=\"footer\">\r\n");
      out.write("                <div class=\"container-fluid\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12\">\r\n");
      out.write("                             Copyright Â© 2018 Concept. All rights reserved. Dashboard by <a href=\"https://colorlib.com/wp/\">Colorlib</a>.\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12\">\r\n");
      out.write("                            <div class=\"text-md-right footer-links d-none d-sm-block\">\r\n");
      out.write("                                <a href=\"javascript: void(0);\">About</a>\r\n");
      out.write("                                <a href=\"javascript: void(0);\">Support</a>\r\n");
      out.write("                                <a href=\"javascript: void(0);\">Contact Us</a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            \r\n");
      out.write("            <!-- ============================================================== -->\r\n");
      out.write("            <!-- end footer -->\r\n");
      out.write("            <!-- ============================================================== -->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- ============================================================== -->\r\n");
      out.write("        <!-- end wrapper  -->\r\n");
      out.write("        <!-- ============================================================== -->\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- end main wrapper  -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- Optional JavaScript -->\r\n");
      out.write("    <!-- jquery 3.3.1 -->\r\n");
      out.write("    \r\n");
      out.write("    <!-- bootstap bundle js -->\r\n");
      out.write("    <script src=\"assets/vendor/bootstrap/js/bootstrap.bundle.js\"></script>\r\n");
      out.write("    <!-- slimscroll js -->\r\n");
      out.write("    <script src=\"assets/vendor/slimscroll/jquery.slimscroll.js\"></script>\r\n");
      out.write("    <!-- main js -->\r\n");
      out.write("    <script src=\"assets/libs/js/main-js.js\"></script>\r\n");
      out.write("    <!-- chart chartist js -->\r\n");
      out.write("    <script src=\"assets/vendor/charts/chartist-bundle/chartist.min.js\"></script>\r\n");
      out.write("    <!-- sparkline js -->\r\n");
      out.write("    <script src=\"assets/vendor/charts/sparkline/jquery.sparkline.js\"></script>\r\n");
      out.write("    <!-- morris js -->\r\n");
      out.write("    <script src=\"assets/vendor/charts/morris-bundle/raphael.min.js\"></script>\r\n");
      out.write("    <script src=\"assets/vendor/charts/morris-bundle/morris.js\"></script>\r\n");
      out.write("    <!-- chart c3 js -->\r\n");
      out.write("    <script src=\"assets/vendor/charts/c3charts/c3.min.js\"></script>\r\n");
      out.write("    <script src=\"assets/vendor/charts/c3charts/d3-5.4.0.min.js\"></script>\r\n");
      out.write("    <script src=\"assets/vendor/charts/c3charts/C3chartjs.js\"></script>\r\n");
      out.write("    <script src=\"assets/libs/js/dashboard-ecommerce.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write(" \r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("     \r\n");

    }else{
                                       

      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write(" \r\n");
      out.write("<head>\r\n");
      out.write("    <!-- Required meta tags -->\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    <title>Login</title>\r\n");
      out.write("    <!-- Bootstrap CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/vendor/bootstrap/css/bootstrap.min.css\">\r\n");
      out.write("    <link href=\"assets/vendor/fonts/circular-std/style.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/libs/css/style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/vendor/fonts/fontawesome/css/fontawesome-all.css\">\r\n");
      out.write("    <style>\r\n");
      out.write("    html,\r\n");
      out.write("    body {\r\n");
      out.write("        height: 100%;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    body {\r\n");
      out.write("        display: -ms-flexbox;\r\n");
      out.write("        display: flex;\r\n");
      out.write("        -ms-flex-align: center;\r\n");
      out.write("        align-items: center;\r\n");
      out.write("        padding-top: 40px;\r\n");
      out.write("        padding-bottom: 40px;\r\n");
      out.write("    }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- login page  -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <div class=\"splash-container\">\r\n");
      out.write("        <div class=\"card \">\r\n");
      out.write("            <div class=\"card-header text-center\"><a href=\"index.jsp\"><img class=\"logo-img\" src=\"assets/images/logo.png\" alt=\"logo\"></a><span class=\"splash-description\">Please enter your user information.</span></div>\r\n");
      out.write("            <div class=\"card-body\">\r\n");
      out.write("                \r\n");
      out.write("                                    ");

                                    if(session.getAttribute("status")== "danger"){
                                    
      out.write("\r\n");
      out.write("                                    <div class=\"alert alert-danger\" role=\"alert\">\r\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    ");

                                        }
                                        session.removeAttribute("status");
                                    
      out.write("\r\n");
      out.write("                <form method=\"post\" action=\"../login\">\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                        <input class=\"form-control form-control-lg\" id=\"username\" type=\"email\" placeholder=\"email\" name=\"email\" autocomplete=\"off\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                        <input class=\"form-control form-control-lg\" id=\"password\" type=\"password\" placeholder=\"Password\" name=\"password\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                        <label class=\"custom-control custom-checkbox\">\r\n");
      out.write("                            <input class=\"custom-control-input\" type=\"checkbox\"><span class=\"custom-control-label\">Remember Me</span>\r\n");
      out.write("                        </label>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-primary btn-lg btn-block\">Sign in</button>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"card-footer bg-white p-0  \">\r\n");
      out.write("                <div class=\"card-footer-item card-footer-item-bordered\">\r\n");
      out.write("                    <a href=\"#\" class=\"footer-link\">Create An Account</a></div>\r\n");
      out.write("                <div class=\"card-footer-item card-footer-item-bordered\">\r\n");
      out.write("                    <a href=\"#\" class=\"footer-link\">Forgot Password</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  \r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- end login page  -->\r\n");
      out.write("    <!-- ============================================================== -->\r\n");
      out.write("    <!-- Optional JavaScript -->\r\n");
      out.write("    <script src=\"assets/vendor/jquery/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("    <script src=\"assets/vendor/bootstrap/js/bootstrap.bundle.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write(" \r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

    }

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
