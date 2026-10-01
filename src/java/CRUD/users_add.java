/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CRUD;

import Controller.users;
import Models.Users;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
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
 * @author sinhs
 */
@WebServlet(name = "users_add", urlPatterns = {"/users_add"})

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class users_add extends HttpServlet {

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
       
         response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
        users sql = new users();
        Users e = new Users();

           
             String name;
             String email;
             String password;
             String permissions;
             String avatar;

      
        HttpSession session = request.getSession();
      

        File file;
        int maxFileSize = 5000 * 1024;
        int maxMemSize = 5000 * 1024;
        String filePath = "E:/java/javawep/test_tomcat/web/imager_user/";

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
                    out.println("<p>fieldname: " + fieldName + "</p>");
                    //lặp các input submit từ form
                    if (fi.isFormField()) //nếu là input thường
                    {


                        switch (fieldName) {
                           
                           
                            case "name":
                                name = fi.getString("UTF-8");
                                e.setName(name);
                                break;
                            case "permissions":
                                permissions = fi.getString("UTF-8");
                                e.setPermissions(Integer.parseInt(permissions));
                                break;
                            case "password":
                                password = fi.getString("UTF-8");
                                 e.setPassword(password);
                                break;
                            case "email":
                                email = fi.getString("UTF-8");
                                e.setEmail(email);
                                break;
                           
                           
                           
                           
                            default:
                                out.println("<br> other <br>");
                        }

                    } else {//nếu là input dạng file
                        avatar = fi.getName();
                        boolean isInMemory = fi.isInMemory();
                        long sizeInBytes = fi.getSize();
                        file = new File(filePath + avatar);
                         e.setAvatar("../imager_user/"+avatar);
                        fi.write(file);
//                        out.println("Uploaded Filename: " + filePath + fileName + "<br>");
                    }
                }
            } catch (Exception ex) {
                System.out.println(ex);
            }
        } 

        
        

        int status = sql.save(e);

        if (status > 0) {
            out.print("<p>Record saved successfully!</p>");
            session.setAttribute("status", "success");
            session.setAttribute("alert", "Thêm thành công");
            response.sendRedirect("admin/index.jsp?status=User");
        } else {
            session.setAttribute("status", "danger");
            session.setAttribute("alert", "Thêm thất bại");

            response.sendRedirect("admin/index.jsp?status=AddUser");

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
