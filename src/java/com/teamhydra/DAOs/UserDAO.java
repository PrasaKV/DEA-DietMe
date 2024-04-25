package com.teamhydra.DAOs;

import java.util.List;
import javax.xml.registry.infomodel.User;
import com.teamhydra.Objects.userInfo;
import com.teamhydra.util.DBUtill;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Prasad
 */
public class UserDAO {
                
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
                                     
                                    String sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
                                    
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
                        
                        public static String signInUser(String email)
                        {
                                    String results = "not in the databse";
                                    userInfo user = new userInfo();
                            
                                    try
                                    {
                                        if(!(email.isEmpty()))
                                        {
                                             
                                            String sql = "SELECT * FROM users WHERE email = ?";

                                            PreparedStatement stmt = DBUtill.setStatment(sql);

                                            stmt.setString(1, email);

                                            ResultSet rs = stmt.executeQuery();
                                            
                                           while(rs.next())
                                           {
                                                  
                                           }
                                          

                                        }
                                }
                                     catch(Exception e)
                                        {

                                        }

                                    return results;
                                }
}
