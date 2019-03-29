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
public class Bill_Detail {
    public int id;
    public int id_product;
    public long id_bill;
    public int price;
    public int quantity;
    public String created_at;

   
    public Bill_Detail(){
        
        this.id = 0;
        this.id_product = 0;
        this.id_bill = 0;
        this.price = 0;
        this.quantity = 0;
        this.created_at = "";
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setId_product(int id_product) {
        this.id_product = id_product;
    }

    public void setId_bill(long id_bill) {
        this.id_bill = id_bill;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    

    public int getId() {
        return id;
    }

    public int getId_product() {
        return id_product;
    }

    public long getId_bill() {
        return id_bill;
    }

    public int getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }
    
    

    public Bill_Detail(int id, int id_product, long id_bill, int price, int quantity,String created_at) {
        this.id = id;
        this.id_product = id_product;
        this.id_bill = id_bill;
        this.price = price;
        this.quantity = quantity;
        this.created_at = created_at;
    }
    
    
    
}
