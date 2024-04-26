
package com.teamhydra.Controllers;

import com.teamhydra.util.assetsUrl;
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

@WebServlet("/ProfileInfoController")
public class ProfileInfoController extends HttpServlet{
    
                       @Override
                       public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
                       {
                                       int num = 0;
                                       int userId = 0;
                                       int success = 0;
                                       
                                       String column = req.getParameter("column");
                                       String value = "";
                                       String password="";
                                       String currentPassword=req.getParameter("currentPassword");
                                       
                                       Object obj = req.getParameter("value");
                                     
                                       boolean isPasswordCorrect = false;
                                       
                                     
                                       
                                        if(req.getParameter("userId") != null)
                                       { 
                                           userId =   Integer.parseInt(req.getParameter("userId"));
                                       }
                                       
                                       if(column.equals("currentPassword"))
                                       {
                                           password = UserDAO.passwordConfirm(userId);
                                           
                                           System.out.println(password + " = ProfileInfoController - password");
                                            System.out.println(currentPassword + " = ProfileInfoController - currentPassword");
                                           
                                           if(password.equals(currentPassword))
                                           {
                                               isPasswordCorrect = true;
                                               
                                                req.setAttribute("isPasswordCorrect", isPasswordCorrect);
                                                req.getRequestDispatcher("/JSP/Profile/ProfileFrag/profileInfo.jsp").forward(req, res);
                                           }
                                       }
                                       else
                                       {
                                            success = UserDAO.singleUpdate(obj, column, userId);
                                       }
                                       
                                       if(success > 0)
                                       {
                                           res.sendRedirect("JSP/Profile/profile.jsp");
                                       }
                                       

                       }
}
}
