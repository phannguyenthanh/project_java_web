/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author sinhs
 */
public class Users {
    public int id;
    public String name;
    public String email;
    public String password;
    public int permissions;
    public String avatar;

     public Users(int id, String name, String email, String password, int permissions, String avatar) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.permissions = permissions;
        this.avatar = avatar;
    }
     
      public Users() {
        this.id = 0;
        this.name = "";
        this.email = "";
        this.password = "";
        this.permissions = 0;
        this.avatar = "";
    }

    
    
    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPermissions(int permissions) {
        this.permissions = permissions;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public int getPermissions() {
        return permissions;
    }

    public String getAvatar() {
        return avatar;
    }
    
    
   
}
