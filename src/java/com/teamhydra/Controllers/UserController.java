
package com.teamhydra.Controllers;

import com.teamhydra.util.assetsUrl;
import com.teamhydra.DAOs.UserDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Prasad
 */

@WebServlet("/UserController")
public class UserController extends HttpServlet{
    
                       public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
                       {
                                       String param = req.getParameter("request");
                                       
                                       String name = req.getParameter("name");
                                       String email = req.getParameter("email");
                                       String password = req.getParameter("password");
                                       
                                       
                                       
                                      switch(param){
                                                    case "register":
                                                    {
                                                    try
                                                 { boolean signUpFlag = UserDAO.signUpUser(name, email, password);

                                                          if(signUpFlag)
                                                          {
                                                              res.sendRedirect(assetsUrl.giveUrl(req, "JSP/Signup/Sign_In.jsp"));
                                                          }
                                                 }

                                                 catch(Exception e)
                                                 {
                                                     System.out.println(e.getMessage());
                                                 }
                                                    }
                                                     
                                                    case "signin":
                                                    {
                                                        try
                                                              {
                                                                  String results = UserDAO.signInUser(email);
                                                                  System.out.println(email);
                                                                  System.out.println(results);

                                                                    
                                                                    if(results.equals(password))
                                                                    {
                                                                        res.sendRedirect(assetsUrl.giveUrl(req, "JSP/Profile/profile.jsp"));
//                                                                        req.setAttribute("id",userId );
                                                                                
//                                                                        req.getRequestDispatcher(assetsUrl.giveUrl(req, "WEB-INF/jspf/common/navbar.jspf"));
                                                                    }
                                                                     else if(results.equals("not in the database"))
                                                                    {
                                                                        boolean flag = false;
                                                                        
                                                                        req.setAttribute("flag",flag );
                                                                        req.getRequestDispatcher(assetsUrl.giveUrl(req, "JSP/Profile/profile.jsp"));
                                                                        
                                                                        res.sendRedirect(assetsUrl.giveUrl(req, "JSP/Signup/Sign_up.jsp"));
                                                                    }
//                                                                    else if(!(results.equals(password)))
//                                                                    {
//                                                                    
//                                                                        res.sendRedirect(assetsUrl.giveUrl(req, "JSP/Signup/Sign_In.jsp"));
//                                                                    }
                                                              }

                                                    catch(Exception e)
                                                                {
                                                                    System.out.println(e.getMessage());
                                                                }
                                                    }
                                      }
                       }
}
}
