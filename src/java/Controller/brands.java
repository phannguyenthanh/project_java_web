/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import CSDL.DB;
import Models.Brands;
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
public class brands {
    public Vector<Brands> all () 
    {
        Vector<Brands> List = new Vector<Brands>();
        Connection cnn = DB.KetnoiCSDL();
        if(cnn==null)
            return null;
        else      
        {
            
            try {
                String sql = "SELECT * FROM brands";
                
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    Brands item = new Brands();
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
    
    
    public static int save(Brands e) {
        int status = 0;
        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO `brands` "
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
            PreparedStatement ps = con.prepareStatement("DELETE FROM `brands` WHERE `brands`.`id` = ?");
            ps.setInt(1, id);
            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public static Brands findbyid(int id) {
        Brands e = new Brands();

        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement("select * from `brands` where id=?");
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

    public static int update(Brands e) {
        int status = 0;
        try {
            Connection con = DB.KetnoiCSDL();
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE `brands` SET "
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
