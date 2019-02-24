package org.apache.jsp.admin.Views.product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Models.Brands;
import Controller.brands;
import java.util.Vector;
import Controller.types;
import Models.Types;

public final class create_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<div class=\"row\">\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\n");
      out.write("        <div class=\"page-header\">\n");
      out.write("            <h2 class=\"pageheader-title\">Form Validations </h2>\n");
      out.write("            <p class=\"pageheader-text\">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>\n");
      out.write("            <div class=\"page-breadcrumb\">\n");
      out.write("                <nav aria-label=\"breadcrumb\">\n");
      out.write("                    <ol class=\"breadcrumb\">\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Forms</a></li>\n");
      out.write("                        <li class=\"breadcrumb-item active\" aria-current=\"page\">Form Validations</li>\n");
      out.write("                    </ol>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<div class=\"row\">\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <!-- valifation types -->\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\n");
      out.write("        <div class=\"card\">\n");
      out.write("            <h5 class=\"card-header\">Validation Types</h5>\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("                \n");
      out.write("                                    ");

                                    if(session.getAttribute("status")== "danger"){
                                    
      out.write("\n");
      out.write("                                    <div class=\"alert alert-danger\" role=\"alert\">\n");
      out.write("                                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                    ");

                                        }
                                        session.removeAttribute("status");
                                    
      out.write("\n");
      out.write("                <form method=\"post\" action=\"../products_add\" \n");
      out.write("                    id=\"validationform\" \n");
      out.write("                    data-parsley-validate=\"\"\n");
      out.write("                    novalidate=\"\">\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Tên</label>\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"name\" placeholder=\"Tên \" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Giá </label>\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                            <input type=\"number\" required=\"\" name=\"price\" placeholder=\"Giá \" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\"> Ảnh  </label>\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"avatar\"  placeholder=\"Ảnh \" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Nơi sản xuất </label>\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"made_in\" placeholder=\"Nơi sản xuất\" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\"> Phân khối </label>\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"capacity\"  placeholder=\"Phân khối \" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Màu </label>\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"color\"  placeholder=\"Màu \" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\"> Model Year </label>\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"model_year\"  placeholder=\"Model của năm \" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\"> Nội dung</label>\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"content\"  placeholder=\"Nội dung \" class=\"form-control\">\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Địa chỉ </label>\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                            <input type=\"text\" required=\"\" name=\"location\"  placeholder=\"Đại chỉ \" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Loại </label>\n");
      out.write("\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                            <select class=\"form-control form-control-sm\" name=\"type\">\n");
      out.write("                                ");
 types types = new types();
                                    Vector<Types> list = types.all();

                                    for (int i = 0; i < list.size(); i++) {
                                
      out.write("\n");
      out.write("                                <option value=\"");
      out.print(list.get(i).getId());
      out.write('"');
      out.write('>');
      out.print(list.get(i).getName());
      out.write("</option>\n");
      out.write("                                ");

                                    }
                                
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Thương hiệu  </label>\n");
      out.write("\n");
      out.write("                        <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                            <select class=\"form-control form-control-sm\" name=\"brand\">\n");
      out.write("                                ");
 brands brands = new brands();
                                    Vector<Brands> listbrands = brands.all();

                                    for (int i = 0; i < listbrands.size(); i++) {
                                
      out.write("\n");
      out.write("                                <option value=\"");
      out.print(listbrands.get(i).getId());
      out.write('"');
      out.write('>');
      out.print(listbrands.get(i).getName());
      out.write("</option>\n");
      out.write("                                ");

                                    }
                                
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--                    <div class=\"form-group row\">\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Regular Exp</label>\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                                                <input type=\"text\" required=\"\" data-parsley-pattern=\"#[A-Fa-f0-9]{6}\" placeholder=\"Hex. Color\" class=\"form-control\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group row\">\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Equal To</label>\n");
      out.write("                                            <div class=\"col-sm-4 col-lg-3 mb-3 mb-sm-0\">\n");
      out.write("                                                <input id=\"pass2\" type=\"password\" required=\"\" placeholder=\"Password\" class=\"form-control\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-sm-4 col-lg-3\">\n");
      out.write("                                                <input type=\"password\" required=\"\" data-parsley-equalto=\"#pass2\" placeholder=\"Re-Type Password\" class=\"form-control\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group row\">\n");
      out.write("                                            <label class=\"col-sm-3 col-form-label text-sm-right\">Min check</label>\n");
      out.write("                                            <div class=\"col-sm-6\">\n");
      out.write("                                                <div class=\"custom-controls-stacked\">\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\n");
      out.write("                                                        <input id=\"ck1\" name=\"ck1\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar\" data-parsley-mincheck=\"2\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 1</span>\n");
      out.write("                                                    </label>\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\n");
      out.write("                                                        <input id=\"ck2\" name=\"ck2\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar2\" data-parsley-mincheck=\"2\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 2</span>\n");
      out.write("                                                    </label>\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\n");
      out.write("                                                        <input id=\"ck3\" name=\"ck3\" type=\"checkbox\" data-parsley-multiple=\"groups\" value=\"bar3\" data-parsley-mincheck=\"2\" required=\"\" data-parsley-errors-container=\"#error-container1\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 3</span>\n");
      out.write("                                                    </label>\n");
      out.write("                                                    <div id=\"error-container1\"></div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>-->\n");
      out.write("                    <!--                    <div class=\"form-group row\">\n");
      out.write("                                            <label class=\"col-sm-3 col-form-label text-sm-right\">Max check</label>\n");
      out.write("                                            <div class=\"col-sm-6\">\n");
      out.write("                                                <div class=\"custom-controls-stacked\">\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e1\" data-parsley-multiple=\"group1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 1</span>\n");
      out.write("                                                    </label>\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e2\" data-parsley-multiple=\"group1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 2</span>\n");
      out.write("                                                    </label>\n");
      out.write("                                                    <label class=\"custom-control custom-checkbox\">\n");
      out.write("                                                        <input type=\"checkbox\" value=\"bar\" id=\"e3\" data-parsley-multiple=\"group1\" data-parsley-maxcheck=\"1\" data-parsley-errors-container=\"#error-container2\" class=\"custom-control-input\"><span class=\"custom-control-label\">Option 3</span>\n");
      out.write("                                                    </label>\n");
      out.write("                                                    <div id=\"error-container2\"></div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group row\">\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">E-Mail</label>\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                                                <input type=\"email\" required=\"\" data-parsley-type=\"email\" placeholder=\"Enter a valid e-mail\" class=\"form-control\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group row\">\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">URL</label>\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                                                <input data-parsley-type=\"url\" type=\"url\" required=\"\" placeholder=\"URL\" class=\"form-control\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group row\">\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Digits</label>\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                                                <input data-parsley-type=\"digits\" type=\"text\" required=\"\" placeholder=\"Enter only digits\" class=\"form-control\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group row\">\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Number</label>\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                                                <input data-parsley-type=\"number\" type=\"text\" required=\"\" placeholder=\"Enter only numbers\" class=\"form-control\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group row\">\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Alphanumeric</label>\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                                                <input data-parsley-type=\"alphanum\" type=\"text\" required=\"\" placeholder=\"Enter alphanumeric value\" class=\"form-control\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group row\">\n");
      out.write("                                            <label class=\"col-12 col-sm-3 col-form-label text-sm-right\">Textarea</label>\n");
      out.write("                                            <div class=\"col-12 col-sm-8 col-lg-6\">\n");
      out.write("                                                <textarea required=\"\" class=\"form-control\"></textarea>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>-->\n");
      out.write("                    <div class=\"form-group row text-right\">\n");
      out.write("                        <div class=\"col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0\">\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-space btn-primary\">Submit</button>\n");
      out.write("                            <button class=\"btn btn-space btn-secondary\">Cancel</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <!-- end valifation types -->\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("</div>\n");
      out.write("<script src=\"assets/validate/products.js\"></script>");
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
