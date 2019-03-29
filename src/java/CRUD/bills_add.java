/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CRUD;

import Controller.bills;
import Controller.bills_detail;
import Controller.brands;
import Models.Bill_Detail;
import Models.Bills;
import Models.Item;
import Models.View_Carts;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sinhs
 */
@WebServlet(name = "bills_add", urlPatterns = {"/bills_add"})
public class bills_add extends HttpServlet {

    private final bills bills = new bills();
    private final bills_detail bills_detail = new bills_detail();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        int status;
        String strDate = "";
        java.util.Date date = new java.util.Date();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S");
        strDate = dateFormat.format(date);

        HttpSession session = request.getSession();
        String name = request.getParameter("name");
        String total = request.getParameter("total");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String content = request.getParameter("content");
        int id_user = 0;
        View_Carts cart = (View_Carts) session.getAttribute("cart");

        if (session.getAttribute("account_asset") == "ok") {
            id_user = Integer.parseInt((String) session.getAttribute("id_asset"));
        }

        try {
            Bills Bull = new Bills();
            long ID = new Date().getTime();
            Bull.setId_user(id_user);
            Bull.setId_bill(ID);
            Bull.setName(name);
            Bull.setPhone(phone);
            Bull.setAddress(address);
            Bull.setContent(content);
            Bull.setTotal((long) Long.parseLong(total));
            Bull.setStatus(1);
            Bull.setCreated_at(strDate);
            status = bills.save(Bull);
//             public Bill_Detail(int id, int id_product, long id_bill, int price, int quantity,String created_at)
            for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {
                int id_product = list.getValue().getProduct().getId();
                int price       = list.getValue().getProduct().getPrice();
                int quantity   = list.getValue().getQuantity();
                status = bills_detail.save(new Bill_Detail(0,id_product,ID, price,quantity, strDate));
                

            }
            if (status > 0) {
                cart = new View_Carts();
                session.setAttribute("cart", cart);
                out.print("<p>Record saved successfully!</p>");
                
            } else {
                session.setAttribute("status", "danger");
                

            }

        } catch (Exception e) {
            session.setAttribute("status", "danger");
            session.setAttribute("alert", "Thêm thất bại");

            response.sendRedirect("asset/payment.jsp");

        }
        out.print("<p>Record saved successfully!</p>");
        session.setAttribute("status", "success");
        session.setAttribute("alert", "Thêm thành công");
        response.sendRedirect("asset/index.jsp");

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
