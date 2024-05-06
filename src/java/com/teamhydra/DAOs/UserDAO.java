package com.teamhydra.DAOs;

import com.teamhydra.Email.EmailSender;
import com.teamhydra.Objects.UserInfo;
import com.teamhydra.util.DBUtill;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

/**
 *
 * @author Prasad
 */
public class UserDAO {
    
    private static int userId;
    private static String name;
    private static String email;
    private static String password;
    private static String address;
    private static int phone;
    private static String profileImage;



    
    public static int singleUpdate(String value, String column, int userId) {
        
        System.out.println(value + " UserDAO - SingleUpdate - value");
        System.out.println(column + " UserDAO - SingleUpdate - column");
        System.out.println(userId + " UserDAO - SingleUpdate - userId");
         
        
        int success = 0;
        int num;
        
        String sql = "UPDATE `users` SET " + column + "  = ? WHERE `users`.`userId` = ?";
        
        try {
            
            PreparedStatement stmt = DBUtill.setStatment(sql);
            
            stmt.setString(1, value);
            stmt.setInt(2, userId);
            
            if(userId > 0)
            {
                success = stmt.executeUpdate();
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return success;
    }
    
    public static String passwordConfirm(int userId) {
        String sql = "SELECT password FROM users WHERE userId = ?";
        String password = "";
        
        try {
            PreparedStatement stmt = DBUtill.setStatment(sql);
            
            stmt.setInt(1, userId);
            
            ResultSet rs = stmt.executeQuery();
            
            rs.next();
            password = rs.getString("password");
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        
        return password;
    }
    
    
    public static String profileImageUpload(int userId, String filePath) 
    {
                String msg = "failed";
        try
        {
            String sql = "UPDATE users SET profileImage = ? WHERE userId = ?";
            PreparedStatement stmt = DBUtill.setStatment(sql);
            
            stmt.setString(1, filePath);
            stmt.setInt(2, userId);
            
             int row = stmt.executeUpdate();
             
             if(row > 0)
             {
                 msg = "success";
             }
        }
        catch (SQLException e)
        {
            System.out.println(e.getMessage());
        }
        
        return msg;
        
    }
    
    public static boolean  passwordConfirm(String email) {
        String sql = "SELECT active FROM users WHERE email = ?";
        boolean active = false;
        
        try {
            PreparedStatement stmt = DBUtill.setStatment(sql);
            
            stmt.setString(1, email);
            
            ResultSet rs = stmt.executeQuery();
            
            rs.next();
            if(rs.getInt("active") == 1)
            {
                active = true;
            }
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        
        return active;
    }
    
}

        

        
