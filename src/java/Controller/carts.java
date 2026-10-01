/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import CSDL.DB;
import Models.Carts;
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
public class carts {
     public Vector<Carts> all() {
        Vector<Carts> list = new Vector<Carts>();
        Connection cnn = DB.KetnoiCSDL();
        if (cnn == null) {
            return null;
        } else {

            try {
                String sql = "SELECT * FROM cart";

                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while (rs.next())//duyệt từng bản ghi kết quả select
                {
                    Carts e = new Carts();
                    e.setId(rs.getInt("id"));
                    e.setId_user(rs.getInt("id_user"));
                    e.setId_product(rs.getInt("id_product"));
                    e.setAmount(rs.getInt("amount"));
                    e.setCreated_at(rs.getString("created_at"));
                    e.setName(rs.getString("name"));
                    e.setAddress(rs.getString("address"));
                    e.setPhone(rs.getString("phone"));
                    e.setContent(rs.getString("content"));
                    e.setStatus(rs.getInt("status"));

                    list.add(e);
                }
            } catch (SQLException ex) {
                Logger.getLogger(Carts.class.getName()).log(Level.SEVERE, null, ex);
                return null;
            }

        }
        return list;
    }
     
     public static int delete(int id) {
        int status = 0;
        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement("DELETE FROM `cart` WHERE `cart`.`id` = ?");
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
            PreparedStatement ps = con.prepareStatement( "UPDATE `cart` SET "
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
     
      public static int save(Carts e) {
        int status = 0;
        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO `carts` "
                    + "(`id`, `name`) "
                    + " VALUES (NULL, ?)");
            ps.setString(1, e.getName());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            out.print(ex.getMessage());
            ex.printStackTrace();

        }

        return status;
    }

}
