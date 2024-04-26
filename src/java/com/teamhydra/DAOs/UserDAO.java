package com.teamhydra.DAOs;

import com.teamhydra.Objects.UserInfo;
import com.teamhydra.util.DBUtill;
import static java.lang.Integer.parseInt;
import static java.rmi.server.LogStream.log;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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

//                    public List<User> getAllUsers(){
//                        
//                        List <User> users = new ArrayList <>();
//                        
//                        
//                        
//                        }
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
            int userId = rs.getInt("userId");
            String name = rs.getString("name");
            String password = rs.getString("password");
            int phone = rs.getInt("phone");
            String address = rs.getString("address");
            String profileImage = rs.getString("profileImage");
            
            userInfo.setId(userId);
            userInfo.setName(name);
            userInfo.setEmail(email);
            userInfo.setPassword(password);
            userInfo.setPhone(phone != 0 ? phone : 0);
            userInfo.setAddress(address != null && !address.isEmpty() ? address : "1/2, abc Street, colombo");
            userInfo.setprofileImage(profileImage != null && !profileImage.isEmpty() ? profileImage : "default_profile_image_url");
            
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

    
    public static int singleUpdate(Object obj, String column, int userId) {
        
        int success = 0;
        String value;
        int num;
        
        String sql = "UPDATE `users` SET " + column + "  = ? WHERE `users`.`userId` = ?";
        
        try {
            
            PreparedStatement stmt = DBUtill.setStatment(sql);
            
            if (obj instanceof String) {
                value = obj.toString();
                
                stmt.setString(1, value);
            }
            if (obj instanceof Integer) {
                num = (Integer) obj;
                
                stmt.setInt(1, num);
            }
            
            stmt.setInt(2, userId);
            
            success = stmt.executeUpdate();
            
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
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        
        return password;
    }
}
