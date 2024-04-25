package com.teamhydra.DAOs;

import com.teamhydra.Objects.UserInfo;
import com.teamhydra.util.DBUtill;
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
    
                        public static boolean signUpUser(String name, String email, String password)
                        {
                            boolean signedUp = false;
                            
                            System.out.println(name);
                            
                            try
                            {
                                if(!(name.isEmpty() && email.isEmpty() && password.isEmpty()))
                                {
                                     System.out.println(email);
                                     System.out.println(password);
                                     
                                    String sql = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
                                    
                                    PreparedStatement stmt = DBUtill.setStatment(sql);
                                    
                                    stmt.setString(1, name );
                                    stmt.setString(2, email);
                                    stmt.setString(3, password );
//                                    stmt.setInt(4, 123456789);
//                                    stmt.setString(5,"abc Street");
                                    

                                    int affectedrows = stmt.executeUpdate();
                                    
                                    if (affectedrows > 0) {
                                            System.out.println("Insert Success");
                                            signedUp = true;
                                        }
                                }
                                else
                                {
                                    System.out.println("Empty data");
                                }
                            }
                            catch(Exception e)
                            {
                                
                            }
                            
                            return signedUp;
                        }
                        
                        public static UserInfo signInUser(String email)
                        {
                                    UserInfo userInfo = new UserInfo();
                            
                                    try
                                    {
                                        if(!(email.isEmpty()))
                                        {
                                             
                                            String sql = "SELECT * FROM users WHERE email = ?";

                                            PreparedStatement stmt = DBUtill.setStatment(sql);

                                            stmt.setString(1, email);
                                            
                                            ResultSet rs = stmt.executeQuery();
                                            
                                            
                                            
                                           while(rs.next()) {
                                               
                                                userId = rs.getInt("userId");
                                                name = rs.getString("name");
                                                password = rs.getString("password");

                                                phone = rs.getInt("phone") != 0 ? rs.getInt("phone") : 0;

                                                address = rs.getString("address");
                                                if(address == null || address.isEmpty()) {
                                                    address = "1/2, abc Street, colombo";
                                                }

                                                profileImage = rs.getString("profileImage");
                                                if(profileImage == null || profileImage.isEmpty()) {
                                                    profileImage = "default_profile_image_url"; 
                                                }

                                                userInfo.setId(userId);
                                                userInfo.setName(name);
                                                userInfo.setEmail(email);
                                                userInfo.setPassword(password);
                                                userInfo.setAddress(address);
                                                userInfo.setPhone(phone);
                                                userInfo.setprofileImage(profileImage);
                                            }

                                        }
                                }
                                     catch(Exception e)
                                        {

                                        }

//                                    System.out.println(UserInfo.getEmail() +  " - DAO");
                                    
                                    return userInfo;
                                }
}
