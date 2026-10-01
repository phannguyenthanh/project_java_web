/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CRUD;

import Controller.products;
import Models.Products;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author thanh
 */
@WebServlet(name = "products_edit", urlPatterns = {"/products_edit"})
public class products_edit extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        products sql = new products();
        Products e = new Products();

        String id;
        String avatar;
        String brand;
        String name;
        String price;
        String capacity;
        String color;
        String strDate;
        String location;
        String made_in;
        String model_year;
        String type;
        String content;

        //name = request.getParameter("name");
        HttpSession session = request.getSession();
        java.util.Date date = new java.util.Date();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S");
        strDate = dateFormat.format(date);

        File file;
        int maxFileSize = 5000 * 1024;
        int maxMemSize = 5000 * 1024;
        String filePath = "E:/java/javawep/test_tomcat/web/imager/";

        String contentType = request.getContentType();
        if ((contentType.indexOf("multipart/form-data") >= 0)) {

            DiskFileItemFactory factory = new DiskFileItemFactory();
            factory.setSizeThreshold(maxMemSize);
            factory.setRepository(new File("E:/java/javawep/test_tomcat"));
            ServletFileUpload upload = new ServletFileUpload(factory);
            upload.setSizeMax(maxFileSize);
            try {
                List fileItems = upload.parseRequest(request);
                Iterator i = fileItems.iterator();

                while (i.hasNext()) {

                    FileItem fi = (FileItem) i.next();
                    String fieldName = fi.getFieldName();
                    //lặp các input submit từ form
                    if (fi.isFormField()) //nếu là input thường
                    {

                        switch (fieldName) {
                            case "id":
                                id = fi.getString("UTF-8");
                                e.setId(Integer.parseInt(id));
                                break;

                            case "brand":
                                brand = fi.getString("UTF-8");
                                e.setBrand(Integer.parseInt(brand));
                                break;
                            case "name":
                                name = fi.getString("UTF-8");
                                e.setName(name);
                                break;
                            case "price":
                                price = fi.getString("UTF-8");
                                e.setPrice(Integer.parseInt(price));
                                break;
                            case "capacity":
                                capacity = fi.getString("UTF-8");
                                e.setCapacity(capacity);
                                break;
                            case "color":
                                color = fi.getString("UTF-8");
                                e.setColor(color);
                                break;
                            case "location":
                                location = fi.getString("UTF-8");
                                e.setLocation(location);
                                break;
                            case "made_in":
                                made_in = fi.getString("UTF-8");
                                e.setMade_in(made_in);
                                break;
                            case "model_year":
                                model_year = fi.getString("UTF-8");
                                e.setModel_year(model_year);
                                break;
                            case "type":
                                type = fi.getString("UTF-8");
                                e.setType(Integer.parseInt(type));
                                break;
                            case "content":
                                content = fi.getString("UTF-8");
                                e.setContent(content);
                                break;
                            case "avatar_text":
                                avatar = fi.getString("UTF-8");
                                e.setAvatar("../imager/" + avatar);
                                break;
                                
                            default:
                                out.println("<br> other <br>");
                        }

                    } else {//nếu là input dạng file
                        avatar = fi.getName();
                        if (avatar != "") {
                            boolean isInMemory = fi.isInMemory();
                            long sizeInBytes = fi.getSize();
                            file = new File(filePath + avatar);
                            e.setAvatar("../imager/" + avatar);
                            fi.write(file);
                        }

//                        out.println("Uploaded Filename: " + filePath + fileName + "<br>");
                    }
                }
            } catch (Exception ex) {
                System.out.println(ex);
            }
        }

        e.setCreated_at(strDate);

        int status = sql.update(e);

        if (status > 0) {
            out.print("<p>Record saved successfully!</p>");
            session.setAttribute("status", "success");
            session.setAttribute("alert", "Chỉnh sửa thành công");
//            request.getRequestDispatcher("admind/products.jsp").forward(request, response);
            response.sendRedirect("admin/index.jsp");
        } else {
            session.setAttribute("status", "danger");
            session.setAttribute("alert", "Chỉnh sửa thất bại");

            response.sendRedirect("admin/index.jsp?status=EditProduct&id=" + e.getId());

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
