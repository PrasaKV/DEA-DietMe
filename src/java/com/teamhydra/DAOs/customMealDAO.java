package com.teamhydra.DAOs;

import com.google.gson.Gson;
import com.teamhydra.util.DBUtill;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;

/**
 *
 * @author Prasad
 */
public class customMealDAO {
    public static int createMeal(int userId,String jsonString) throws SQLException {
        
                                           
                Gson gson = new Gson();
                Map<String, String> jsonData = gson.fromJson(jsonString, Map.class);
        
                System.out.println(jsonData.get("firstPortion") + " customeMealDAO - createMeal");

         
        int success = 0;
        
           try {
               
            String mealName = jsonData.get("mealName");
            String mealDescription = jsonData.get("mealDescription");
            String firstPortion = jsonData.get("firstPortion");
            String firstPortionSize = jsonData.get("firstPortionSize");
            String secondPortion = jsonData.get("secondPortion");
            String secondPortionSize = jsonData.get("secondPortionSize");
            String thirdPortion = jsonData.get("thirdPortion");
            String thirdPortionSize = jsonData.get("thirdPortionSize");
            String fourthPortion = jsonData.get("fourthPortion");
            String fourthPortionSize = jsonData.get("fourthPortionSize");
            String fifthPortion = jsonData.get("fifthPortion");
            String fifthPortionSize = jsonData.get("fifthPortionSize");
            

            String sql = "INSERT INTO custommeal (userId, mealName, mealDiscription, " +
                         "firstPortion, firstPortionSize, " +
                         "secondPortion, secondPortionSize, " +
                         "thirdPortion, thirdPortionSize, " +
                         "fourthPortion, fourthPortionSize, " +
                         "fifthPortion, fifthPortionSize) " +
                         "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = DBUtill.setStatment(sql);
               
            stmt.setString(1, mealName);
            stmt.setString(2, mealDescription);
            stmt.setString(3, firstPortion);
            stmt.setString(4, firstPortionSize);
            stmt.setString(5, secondPortion);
            stmt.setString(6, secondPortionSize);
            stmt.setString(7, thirdPortion);
            stmt.setString(8, thirdPortionSize);
            stmt.setString(9, fourthPortion);
            stmt.setString(10, fourthPortionSize);
            stmt.setString(11, fifthPortion);
            stmt.setString(12, fifthPortionSize);
            stmt.setInt(13, userId);
            
            success = stmt.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        
        return success;
        
}
}

