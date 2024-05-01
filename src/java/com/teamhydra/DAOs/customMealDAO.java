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
        
           
               
            String mealName = jsonData.get("mealName");
            String mealDiscription = jsonData.get("mealDiscription");
            String firstPortion = jsonData.get("firstPortion");
            Integer firstPortionSize = Integer.parseInt(jsonData.get("firstPortionSize"));
            String secondPortion = jsonData.get("secondPortion");
            Integer secondPortionSize = Integer.parseInt(jsonData.get("secondPortionSize"));
            String thirdPortion = jsonData.get("thirdPortion");
            Integer thirdPortionSize = Integer.parseInt(jsonData.get("thirdPortionSize"));
            String fourthPortion = jsonData.get("fourthPortion");
            Integer fourthPortionSize = Integer.parseInt(jsonData.get("fourthPortionSize"));
            String fifthPortion = jsonData.get("fifthPortion");
            Integer fifthPortionSize = Integer.parseInt(jsonData.get("fifthPortionSize"));
            
            
            String sql = "INSERT INTO custommeal (userId, mealName, mealDiscription, " +
             "firstPortion, firstPortionSize, " +
             "secondPortion, secondPortionSize, " +
             "thirdPortion, thirdPortionSize, " +
             "fourthPortion, fourthPortionSize, " +
             "fifthPortion, fifthPortionSize) " +
             "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            
            try {
             
            PreparedStatement stmt = DBUtill.setStatment(sql);
            
            stmt.setInt(1, userId); 
            stmt.setString(2, mealName);
            stmt.setString(3, mealDiscription);
            stmt.setString(4, firstPortion);
            stmt.setInt(5, firstPortionSize);
            stmt.setString(6, secondPortion);
            stmt.setInt(7, secondPortionSize);
            stmt.setString(8, thirdPortion);
            stmt.setInt(9, thirdPortionSize);
            stmt.setString(10, fourthPortion);
            stmt.setInt(11, fourthPortionSize);
            stmt.setString(12, fifthPortion);
            stmt.setInt(13, fifthPortionSize);
            
            success = stmt.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        
        return success;
        
}
}

