
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

@WebServlet("/SignUpController")
public class SignUpController extends HttpServlet{
    
                       public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
                       {
                                       String param = req.getParameter("request");     
                                       String name = req.getParameter("name");
                                       String email = req.getParameter("email");
                                       String password = req.getParameter("password");

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
                                              
                          }
   }

