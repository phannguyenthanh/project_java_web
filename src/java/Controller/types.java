/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import CSDL.DB;
import Models.Products;
import Models.Types;
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
 * @author thanh
 */
public class types {

    public Vector<Types> all() {
        Vector<Types> List = new Vector<Types>();
        Connection cnn = DB.KetnoiCSDL();
        if (cnn == null) {
            return null;
        } else {

            try {
                String sql = "SELECT * FROM types";

                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while (rs.next())//duyệt từng bản ghi kết quả select
                {
                    Types item = new Types();
                    item.setId(rs.getInt("id"));
                    item.setName(rs.getString("name"));

                    List.add(item);
                }
            } catch (SQLException ex) {
                Logger.getLogger(products.class.getName()).log(Level.SEVERE, null, ex);
                return null;
            }

        }
        return List;
    }

    public static int save(Types e) {
        int status = 0;
        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO `types` "
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

    public static int delete(int id) {
        int status = 0;
        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement("DELETE FROM `types` WHERE `types`.`id` = ?");
            ps.setInt(1, id);
            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public static Types findbyid(int id) {
        Types e = new Types();

        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement("select * from `types` where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                e.setId(rs.getInt("id"));
                e.setName(rs.getString("name"));

            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return e;
    }

    public static int update(Types e) {
        int status = 0;
        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE `types` SET "
                    + "`name` = ? "
                   
                    + " WHERE `id` = ? ");
            
            ps.setString(1, e.getName());
            ps.setInt(2, e.getId());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            out.print(ex.getMessage());
            ex.printStackTrace();

        }

        return status;
    }
}
