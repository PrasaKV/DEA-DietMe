/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.teamhydra.ProductCart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author adipasith
 */
public class CartDAO {
    private Connection connection;
    
    public CartDAO() throws SQLException {
        try {
            
            String url = "";
            String username = "";
            String password = "";
            
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
     public void insertCartItem(CartItem cartItem) {
         try {
            String query = "INSERT INTO cart_items (user_id, meal_id, quantity) VALUES (?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, cartItem.getUserId());
            statement.setInt(2, cartItem.getMealId());
            statement.setInt(3, cartItem.getQuantity());
            statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
     }
     
    public List<CartItem> getCartItemsByUserId(int userId) {
    List<CartItem> cartItems = new ArrayList<>();

    try {
        String query = "SELECT * FROM cart_items WHERE user_id = ?";
        PreparedStatement statement = connection.prepareStatement(query);
        statement.setInt(1, userId);
        ResultSet resultSet = statement.executeQuery();

        while (resultSet.next()) {
            CartItem cartItem = new CartItem();
            cartItem.setCartItemId(resultSet.getInt("cart_item_id"));
            cartItem.setUserId(resultSet.getInt("user_id"));
            cartItem.setMealId(resultSet.getInt("meal_id"));
            cartItem.setQuantity(resultSet.getInt("quantity"));
            cartItems.add(cartItem);
        }

        resultSet.close();
        statement.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return cartItems;
 }
    
}
