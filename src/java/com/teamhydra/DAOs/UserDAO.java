package com.teamhydra.DAOs;

import com.teamhydra.Objects.UserInfo;
import com.teamhydra.util.DBUtill;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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


     public static boolean signUpUser(String name, String email, String password) {
        boolean signedUp = false;
        
        System.out.println(name);
        
        try {
            if (!(name.isEmpty() && email.isEmpty() && password.isEmpty())) {
                System.out.println(email);
                System.out.println(password);
                
                String sql = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
                
                PreparedStatement stmt = DBUtill.setStatment(sql);
                
                stmt.setString(1, name);
                stmt.setString(2, email);
                stmt.setString(3, password);
//                                    stmt.setInt(4, 123456789);
//                                    stmt.setString(5,"abc Street");
                
                int affectedrows = stmt.executeUpdate();
                
                if (affectedrows > 0) {
                    System.out.println("Insert Success");
                    signedUp = true;
                }
            } else {
                System.out.println("Empty data");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        
        return signedUp;
    }
    
public static UserInfo signInUser(String email) {
    UserInfo userInfo = new UserInfo();

    try {
        String sql = "SELECT * FROM users WHERE email = ?";
        PreparedStatement stmt = DBUtill.setStatment(sql);
        stmt.setString(1, email);
        ResultSet rs = stmt.executeQuery();
        
        if (rs.next()) {

            userInfo.setId( rs.getInt("userId"));
            userInfo.setName(rs.getString("name"));
            userInfo.setEmail(email);
            userInfo.setPassword(rs.getString("password"));
            userInfo.setPhone(rs.getInt("phone"));
            userInfo.setAddress(rs.getString("address"));
            userInfo.setProfileImage( rs.getString("profileImage"));
            
            System.out.println(userInfo.getId() + "= UserDAO userinfo id");
            System.out.println(rs.getInt("userId") + "= UserDAO Rs id");
        } else {
            System.out.println("Wrong Email");
            userInfo.setName("Wrong Email");
        }
        
    } catch (Exception e) {
        System.out.println(e.getMessage());
    }

    return userInfo;
}

    
    public static int singleUpdate(String value, String column, int userId) {
        
        System.out.println(value + " UserDAO - SingleUpdate");
        System.out.println(column + " UserDAO - SingleUpdate");
        System.out.println(userId + " UserDAO - SingleUpdate");
         
        
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
    
    
    
    
    
    
}

        

        
