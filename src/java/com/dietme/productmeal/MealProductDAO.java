/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dietme.productmeal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author adipasith
 */
public class MealProductDAO {
    
    private static final String DB_URL = "jdbc:mysql://localhost:3306/meal_products";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "password";
    
    public static List<MealProduct> getAllProducts() {
        List<MealProduct> products = new ArrayList<>();
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String query = "SELECT * FROM meal_products";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                int productId = rs.getInt("product_id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                int calories = rs.getInt("calories");
                double price = rs.getDouble("price");
                String imageUrl = rs.getString("image_url");
                MealProduct product = new MealProduct(productId, name, description, calories, price, imageUrl);
                products.add(product);
            }

         } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
    
}
