/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import CSDL.DB;
import Models.Bill_Detail;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author sinhs
 */
public class bills_detail {
    public static int save(Bill_Detail e) {
        int status = 0;
        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO `bills_detail` "
                    + "(`id`, `id_product`, `id_bill`, `price`, `quantity`,`created_at`) "
                    + " VALUES (NULL, ?,?,?,?,?)");
            
            ps.setInt(1, e.getId_product());
            ps.setLong(2, e.getId_bill());
            ps.setInt(3, e.getPrice());
            ps.setInt(4, e.getQuantity());
            ps.setString(5, e.getCreated_at());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            out.print(ex.getMessage());
            ex.printStackTrace();

        }

        return status;
    }
    
    
     public Vector<Bill_Detail> all(int id) {
        Vector<Bill_Detail> list = new Vector<Bill_Detail>();
        Connection cnn = DB.KetnoiCSDL();
        if (cnn == null) {
            return null;
        } else {

            try {
                String sql = "SELECT * FROM bills_detail where id_bill="+id;

                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while (rs.next())//duyệt từng bản ghi kết quả select
                {
                    Bill_Detail e = new Bill_Detail();
                    e.setId(rs.getInt("id"));
                    e.setId_product(rs.getInt("id_product"));
                    e.setId_bill(rs.getLong("id_bill"));
                    e.setPrice(rs.getInt("price"));
                    e.setQuantity(rs.getInt("quantity"));
                    e.setCreated_at(rs.getString("created_at"));
                    
                    list.add(e);
                }
            } catch (SQLException ex) {
                Logger.getLogger(Bill_Detail.class.getName()).log(Level.SEVERE, null, ex);
                return null;
            }

        }
        return list;
    }
    
    
    
}
