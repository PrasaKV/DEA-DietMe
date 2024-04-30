
package com.teamhydra.util;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Prasad
 */
public class commonUtill {
                    
               public static List<String> mealPortionName() throws SQLException {
        List<String> result = new ArrayList<>();
        String sql = "SELECT portionName FROM mealportions";
        
        try {
            PreparedStatement stmt = DBUtill.setStatment(sql);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                String mealName = rs.getString("portionName");
                result.add(mealName);
            }
            
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return result;
    }
                     
        public static List<String> mealPortionSize() throws SQLException {
        List<String> result = new ArrayList<>();
        String sql = "SELECT baseGram FROM mealportions";
        
        try {
            PreparedStatement stmt = DBUtill.setStatment(sql);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                String mealGram = rs.getString("baseGram");
                result.add(mealGram);
            }
            
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return result;
    }
        
         public static List<String> mealPortionCal() throws SQLException {
        List<String> result = new ArrayList<>();
        String sql = "SELECT baseCal FROM mealportions";
        
        try {
            PreparedStatement stmt = DBUtill.setStatment(sql);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                String mealCal = rs.getString("baseCal");
                result.add(mealCal);
            }
            
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return result;
    }
         public static List<String> mealPortionPrice() throws SQLException {
        List<String> result = new ArrayList<>();
        String sql = "SELECT basePrice FROM mealportions";
        
        try {
            PreparedStatement stmt = DBUtill.setStatment(sql);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                String mealPrice = rs.getString("basePrice");
                result.add(mealPrice);
            }
            
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return result;
    }
}