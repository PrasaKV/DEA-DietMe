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
public class MealDAO {
    
    private Connection connection;
    
    public MealDAO() throws SQLException {
        try {
            
            String url = "";
            String username = "";
            String password = "";
            
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public List<Meal> getAllMeals() throws SQLException {
        List<Meal> meals = new ArrayList<>();
        
        
        try {
            String query = "SELECT * FROM meals";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();
            
            while (resultSet.next()) {
                Meal meal = new Meal();
                meal.setMealId(resultSet.getInt("meal_id"));
                meal.setName(resultSet.getString("name"));
                meal.setDescription(resultSet.getString("description"));
                meal.setCalories(resultSet.getInt("calories"));
                meal.setPrice(resultSet.getDouble("price"));
                meal.setImagePath(resultSet.getString("image_path"));
                meals.add(meal);
            }
            
            resultSet.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return meals;
    }
    
    public Meal getMealById(int mealId) {
        Meal meal = null;
        
        try {
            String query = "SELECT * FROM meals WHERE meal_id = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, mealId);
            ResultSet resultSet = statement.executeQuery();
            
            if (resultSet.next()) {
                meal = new Meal();
                meal.setMealId(resultSet.getInt("meal_id"));
                meal.setName(resultSet.getString("name"));
                meal.setDescription(resultSet.getString("description"));
                meal.setCalories(resultSet.getInt("calories"));
                meal.setPrice(resultSet.getDouble("price"));
                meal.setImagePath(resultSet.getString("image_path"));
            }
            resultSet.close();
            statement.close();
            } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return meal;
    }
}
