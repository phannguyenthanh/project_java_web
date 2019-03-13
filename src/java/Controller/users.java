/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import CSDL.DB;
import Models.Users;
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
public class users {
    
     public Vector<Users> all() {
        Vector<Users> list = new Vector<Users>();
        Connection cnn = DB.KetnoiCSDL();
        if (cnn == null) {
            return null;
        } else {

            try {
                String sql = "SELECT * FROM user";

                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while (rs.next())//duyệt từng bản ghi kết quả select
                {
                    Users e = new Users();
                    e.setId(rs.getInt("id"));
                    e.setAvatar(rs.getString("avatar"));
                    e.setName(rs.getString("name"));
                    e.setEmail(rs.getString("email"));
                    e.setPermissions(rs.getInt("permissions"));
                    e.setPassword(rs.getString("password"));
                    

                    list.add(e);
                }
            } catch (SQLException ex) {
                Logger.getLogger(users.class.getName()).log(Level.SEVERE, null, ex);
                return null;
            }

        }
        return list;
    }

    public static int save(Users e) {
        int status = 0;
        try {
            Connection con =  DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO `user` "
                            + "(`id`, `name`, `avatar`, `email`, `password`, `permissions`) "
                            + " VALUES (NULL, ?, ?, ?, ?, ?)");
            ps.setString(1, e.getName());
            ps.setString(2, e.getAvatar());
            ps.setString(3, e.getEmail());
            ps.setString(4, e.getPassword());
            ps.setInt(5, e.getPermissions());
    

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            out.print(ex.getMessage());
            ex.printStackTrace();
            
        }

        return status;
    }

    public static int update(Users e) {
        int status = 0;
        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE `user` SET "
                            
                            + "`name` = ?, "
                            + "`avatar` = ?, "
                            + "`password` = ?, "
                            + "`permissions` = ?, "
                            + "`email` = ? "
                            + " WHERE `id` = ? ");
            ps.setString(1, e.getName());
            ps.setString(2, e.getAvatar());
            ps.setString(3, e.getPassword());
            ps.setInt(4, e.getPermissions());
            ps.setString(5, e.getEmail());
            ps.setInt(6, e.getId());

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
            PreparedStatement ps = con.prepareStatement("DELETE FROM `user` WHERE `user`.`id` = ?");
            ps.setInt(1, id);
            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public static Users findbyid(int id) {
        Users e = new Users();

        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement("select * from `user` where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
             

                    e.setId(rs.getInt("id"));
                    e.setAvatar(rs.getString("avatar"));
                    e.setName(rs.getString("name"));
                    e.setEmail(rs.getString("email"));
                    e.setPermissions(rs.getInt("permissions"));
                    e.setPassword(rs.getString("password"));
            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return e;
    }

    
}
