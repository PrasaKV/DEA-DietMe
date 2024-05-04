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

                } 
           catch (SQLException e) {
                    System.out.println(e.getMessage());
                }

        return success;
        
}
    public static int updateMeal(int mealId,int userId,String jsonString) throws SQLException {
        
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


                    String sql = "UPDATE custommeal "
                        + "SET "
                            +   " mealName = ?, "
                            +   " mealDiscription = ?, " 
                            +   " firstPortion = ?, "
                            +   " firstPortionSize = ?, " 
                            +   " secondPortion = ?, "
                            +   " secondPortionSize = ?, " 
                            +   " thirdPortion = ?, "
                            +   " thirdPortionSize = ?, " 
                            +   " fourthPortion = ?, "
                            +   " fourthPortionSize = ?, " 
                            +   " fifthPortion = ?, "
                            +   " fifthPortionSize = ? "+
                     "WHERE userId = ? AND mealId = ?";


           try {

                    PreparedStatement stmt = DBUtill.setStatment(sql);

                    
                    stmt.setString(1, mealName);
                    stmt.setString(2, mealDiscription);
                    stmt.setString(3, firstPortion);
                    stmt.setInt(4, firstPortionSize);
                    stmt.setString(5, secondPortion);
                    stmt.setInt(6, secondPortionSize);
                    stmt.setString(7, thirdPortion);
                    stmt.setInt(8, thirdPortionSize);
                    stmt.setString(9, fourthPortion);
                    stmt.setInt(10, fourthPortionSize);
                    stmt.setString(11, fifthPortion);
                    stmt.setInt(12, fifthPortionSize);
                    
                    stmt.setInt(13, userId); 
                    stmt.setInt(14, mealId);
                    
                    success = stmt.executeUpdate();

                } 
           catch (SQLException e) {
                    System.out.println(e.getMessage());
                }

        return success;
        
}
          public static int deleteMeal(int mealId,int userId) throws SQLException {

                int success = 0;


                    String sql = "DELETE FROM custommeal WHERE mealId = ? AND userId = ?";


           try {

                    PreparedStatement stmt = DBUtill.setStatment(sql);
                    
                    stmt.setInt(1, mealId);
                    stmt.setInt(2, userId); 
                    
                    success = stmt.executeUpdate();

                } 
           catch (SQLException e) {
                    System.out.println(e.getMessage());
                }

        return success;
        
}
}

