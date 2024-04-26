
package com.teamhydra.Controllers;

import com.teamhydra.util.assetsUrl;
import com.teamhydra.DAOs.UserDAO;
import com.teamhydra.Objects.UserInfo;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
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
                                       String email = req.getParameter("email");
                                       String password = req.getParameter("password");
                                       
                                        HttpSession session = req.getSession(true);
                                        
                                        System.out.println(password + " = SignInController password");

                                                try
                                                      {
                                                          UserInfo userInfo = UserDAO.signInUser(email);

                                                          if(userInfo.getName().equals("Wrong Email"))
                                                          {
                                                              session.setAttribute("Wrong Email", "Wrong Email");
                                                               req.getRequestDispatcher("/JSP/Signup/Sign_In.jsp").forward(req, res);
                                                          }
                                                           else
                                                          {
                                                            if(userInfo.getPassword().equals(password))
                                                            {
                                                                session.setAttribute("userInfo", userInfo);
                                                                
                                                                 req.getRequestDispatcher("/JSP/Profile/ProfileFrag/profileInfo.jsp").forward(req, res);
                                                            }
                                                            else
                                                            {
                                                                session.setAttribute("Wrong Password", "Wrong Password");
                                                               req.getRequestDispatcher("/JSP/Signup/Sign_In.jsp").forward(req, res);
                                                            }
                                                            }
                                                           

                                                      }

                                                        catch(IOException | ServletException | NullPointerException e)
                                                                    {
                                                                        System.out.println(e.getMessage());
                                                                    }
                                            }
                                      }


