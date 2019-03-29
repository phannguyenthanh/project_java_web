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
public class Bills {
     public int id;
    public int id_user;
    public long id_bill;
    public long total;
    public String created_at;
    public String name;
    public String address;
    public String phone;
    public String content;
    public int status;
    
    public Bills(){
        this.id = 0;
        this.id_user = 0;
        this.id_bill = 0;
        this.total = 0;
        this.created_at = "";
        this.name = "";
        this.address = "";
        this.phone = "";
        this.content = "";
        this.status = 0;
    }

    public Bills(int id, int id_user, long id_bill, long total, String created_at, String name, String address, String phone, String content, int status) {
        this.id = id;
        this.id_user = id_user;
        this.id_bill = id_bill;
        this.total = total;
        this.created_at = created_at;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.content = content;
        this.status = status;
    }
    
    

    public void setId(int id) {
        this.id = id;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public void setId_bill(long id_bill) {
        this.id_bill = id_bill;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
    

    public int getId() {
        return id;
    }

    public int getId_user() {
        return id_user;
    }

    public long getId_bill() {
        return id_bill;
    }

    public long getTotal() {
        return total;
    }

    public String getCreated_at() {
        return created_at;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public String getContent() {
        return content;
    }

    public int getStatus() {
        return status;
    }
    
    
    
}
