
package com.teamhydra.util;

import com.teamhydra.DAOs.UserDAO;
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
                     
        public static List<Integer> mealPortionSize() throws SQLException {
        List<Integer> result = new ArrayList<>();
        String sql = "SELECT baseGram FROM mealportions";
        
        try {
            PreparedStatement stmt = DBUtill.setStatment(sql);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                int mealGram = rs.getInt("baseGram");
                result.add(mealGram);
            }
            
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return result;
    }
        
         public static List<Integer > mealPortionCal() throws SQLException {
        List<Integer > result = new ArrayList<>();
        String sql = "SELECT baseCal FROM mealportions";
        
        try {
            PreparedStatement stmt = DBUtill.setStatment(sql);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                int mealCal = rs.getInt("baseCal");
                result.add(mealCal);
            }
            
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return result;
    }
         public static List<Integer> mealPortionPrice() throws SQLException {
        List<Integer> result = new ArrayList<>();
        String sql = "SELECT basePrice FROM mealportions";
        
        try {
            PreparedStatement stmt = DBUtill.setStatment(sql);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                int mealPrice = rs.getInt("basePrice");
                result.add(mealPrice);
            }
            
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return result;
    }
         
        public static ResultSet getAllWhereUser(String table,int userId)throws SQLException
        {
            String sql = "SELECT * FROM "+table+ " WHERE userId= "+userId;
             ResultSet result = null;
            try{
                
                PreparedStatement stmt = DBUtill.setStatment(sql);
                result = stmt.executeQuery();
                
            }
            catch(SQLException e)
            {
                System.out.println(e.getMessage());
            }
            return result;
        }
        public static ResultSet getAll(String table)throws SQLException
        {
            String sql = "SELECT * FROM "+table;
             ResultSet result = null;
            try{
                PreparedStatement stmt = DBUtill.setStatment(sql);
                result = stmt.executeQuery();
                
            }
            catch(SQLException e)
            {
                System.out.println(e.getMessage());
            }
            return result;
        }
        
        public static ResultSet userInfo(String userId)throws SQLException
        {
            ResultSet rs = null;
            String sql = "SELECT * FROM users WHERE userId = ? ";
            
            try
            {
                
                PreparedStatement stmt =DBUtill.setStatment(sql);
                stmt.setString(1,userId);
                rs = stmt.executeQuery();
            }
            catch(SQLException e)
            {
                System.out.println(e.getMessage());
            }
            
            return rs;
        }
        
        public static String profileImage(String userId)throws SQLException
        {

            String profileImage ="";
            String sql = "SELECT profileImage FROM users WHERE userId = ? ";
            
            
            try
            {
                
                PreparedStatement stmt =DBUtill.setStatment(sql);
                stmt.setString(1,userId);
                ResultSet rs = stmt.executeQuery();
                while( rs.next())
               {
                   profileImage = rs.getString("profileImage");
               }      
            }
            catch(SQLException e)
            {
                System.out.println(e.getMessage());
            }
            System.out.println(profileImage +  " - commonUtill.profileImage - Line 178");
            return profileImage;
        }
}
