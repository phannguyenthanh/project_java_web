/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import CSDL.DB;
import Models.Bills;
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
public class bills {
    public static int save(Bills e) {
        int status = 0;
        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO `bills` "
                    + "(`id`, `id_bill`, `id_user`, `total`, `name`, `address`, `phone`, `content`, `status`, `created_at`) "
                    + " VALUES (NULL, ?,?,?,?,?,?,?,?,?)");
            
            ps.setLong(1, e.getId_bill());
            ps.setInt(2, e.getId_user());
            ps.setLong(3, e.getTotal());
            ps.setString(4, e.getName());
            ps.setString(5, e.getAddress());
            ps.setString(6, e.getPhone());
            ps.setString(7, e.getContent());
            ps.setInt(8, e.getStatus());
            ps.setString(9, e.getCreated_at());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            out.print(ex.getMessage());
            ex.printStackTrace();

        }

        return status;
    }
    
     public Vector<Bills> all() {
        Vector<Bills> list = new Vector<Bills>();
        Connection cnn = DB.KetnoiCSDL();
        if (cnn == null) {
            return null;
        } else {

            try {
                String sql = "SELECT * FROM bills";

                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while (rs.next())//duyệt từng bản ghi kết quả select
                {
                    Bills e = new Bills();
                    e.setId(rs.getInt("id"));
                    e.setId_user(rs.getInt("id_user"));
                    e.setId_bill(rs.getLong("id_bill"));
                    e.setTotal(rs.getLong("total"));
                    e.setCreated_at(rs.getString("created_at"));
                    e.setName(rs.getString("name"));
                    e.setAddress(rs.getString("address"));
                    e.setPhone(rs.getString("phone"));
                    e.setContent(rs.getString("content"));
                    e.setStatus(rs.getInt("status"));
                    list.add(e);
                }
            } catch (SQLException ex) {
                Logger.getLogger(Bills.class.getName()).log(Level.SEVERE, null, ex);
                return null;
            }

        }
        return list;
    }
     
     public static int delete(int id) {
        int status = 0;
        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement("DELETE FROM `bills` WHERE `bills`.`id` = ?");
            ps.setInt(1, id);
            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
     public static int updateStatus(int id,int status) {
        int tf_status = 0;
        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement( "UPDATE `bills` SET "
                    + "`status` = ? "
                    + " WHERE `id` = ? ");
            ps.setInt(1, status);
            ps.setInt(2, id);
            tf_status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return tf_status;
    }
}
