/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.teamhydra.ProductCart;

/**
 *
 * @author adipasith
 */
public class CartItem {
    
    
    private int cartItemId;
    private int userId;
    private int mealId;
    private int quantity;
    
    public CartItem() {
        
    }

    public CartItem(int cartItemId , int userId, int mealId, int quantity) {
        this.cartItemId = cartItemId;
        this.userId = userId;
        this.mealId = mealId;
        this.quantity = quantity;
    }

    public int getCartItemId() {
        return cartItemId;
    }

    public void setCartItemId(int cartItemId) {
        this.cartItemId = cartItemId;
    }
    

    public int getMealId() {
        return mealId;
    }

    public void setMealId(int mealId) {
        this.mealId = mealId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quanitiy) {
        this.quantity = quantity;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
    
}
