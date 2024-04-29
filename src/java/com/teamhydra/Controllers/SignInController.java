
package com.teamhydra.Controllers;

import com.teamhydra.DAOs.UserDAO;
import com.teamhydra.Objects.UserInfo;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Prasad
 */

@WebServlet("/SignInController")
public class SignInController extends HttpServlet{
   
    
                       @Override
                       public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
                       {                                 
                           
                                        res.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
                                        res.setHeader("Pragma", "no-cache"); 
                                        res.setHeader("Expires", "0");



                                       String email = req.getParameter("email");
                                       String password = req.getParameter("password");
                                       
                                        HttpSession session = req.getSession(true);
                                        
                                        System.out.println(password + " = SignInController password");

                                                try
                                                      {
                                                          UserInfo userInfo = UserDAO.signInUser(email);

                                                          if(userInfo.getName().equals("Wrong Email"))
                                                          {
                                                               res.sendRedirect("/JSP/Signup/Sign_In.jsp");
                                                          }
                                                           else
                                                          {
                                                            if(userInfo.getPassword().equals(password))
                                                            {
                                                                session.setAttribute("userId", userInfo.getId());
                                                                session.setAttribute("userName", userInfo.getName());
                                                                session.setAttribute("userEmail", userInfo.getEmail());
                                                                session.setAttribute("userPhone", userInfo.getPhone());
                                                                session.setAttribute("userAddress", userInfo.getAddress());
                                                                session.setAttribute("profileImage", userInfo.getProfileImage());
                                                                
                                                                
                                                                System.out.println(session.getAttribute("userName") + " = SignInController SessionUName");
                                                                
                                                                req.getRequestDispatcher("/JSP/Profile/ProfileFrag/profileInfo.jsp").forward(req, res);
                                                            }
                                                            else
                                                            {
                                                                 res.sendRedirect("/JSP/Signup/Sign_In.jsp");
                                                            }
                                                            }
                                                           

                                                      }

                                                        catch(IOException | ServletException | NullPointerException e)
                                                                    {
                                                                        System.out.println(e.getMessage());
                                                                    }
                                            }
                                      }


