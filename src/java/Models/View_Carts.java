/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author sinhs
 */
public class View_Carts {

    private HashMap<Long, Item> cartItems;

    public View_Carts() {
        cartItems = new HashMap<>();
    }

    public View_Carts(HashMap<Long, Item> cartItems) {
        this.cartItems = cartItems;
    }

    public HashMap<Long, Item> getCartItems() {
        return cartItems;
    }

    public void setCartItems(HashMap<Long, Item> cartItems) {
        this.cartItems = cartItems;
    }

    public void plusToCart(Long key, Item item) {
        boolean bln = cartItems.containsKey(key);
        if (bln) {
            int quantity_old = item.getQuantity();
            item.setQuantity(quantity_old + 1);
            cartItems.put(key, item);
        } else {
            cartItems.put(key, item);
        }
    }
    public void subToCart(Long key, Item item) {
        boolean bln = cartItems.containsKey(key);
        if (bln) {
            int quantity_old = item.getQuantity();
            if(quantity_old <= 1){
                cartItems.remove(key);
            }else{
                item.setQuantity(quantity_old - 1);
                cartItems.put(key, item);
            }
            
        }
    }

    public void removeToCart(Long product) {
        boolean bln = cartItems.containsKey(product);
        if (bln) {
            cartItems.remove(product);
        }
    }

    public int countItem() {
        int count = 0;
        count = cartItems.size();
        return count;
    }

    public long totalCart() {
        int count = 0;
        for (Map.Entry<Long, Item> list : cartItems.entrySet()) {
            count += list.getValue().getProduct().getPrice() * list.getValue().getQuantity();
        }
        return count;
    }
}
