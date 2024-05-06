
package com.teamhydra.Controllers;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.teamhydra.DAOs.UserDAO;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 *  @author Prasad
 */

@WebServlet("/ProfileInfoController")
public class ProfileInfoController extends HttpServlet{
    
                       @Override
                       public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
                       {
                                     try
                                     {
                                         String jsonString = new BufferedReader(new InputStreamReader(req.getInputStream())).readLine();
                                        
                                        Gson gson = new Gson();
                                        Map<String, String> jsonData = gson.fromJson(jsonString, Map.class);
                                   

                                       PrintWriter out = res.getWriter();
                                        
                                       int userId = 0;
                                       int success = 0;
                                               
                                     String column = req.getParameter("column");
                                       
                                     String value = jsonData.get("value");
                                       
                                       System.out.println(column + "- ProfileInfoController - column");
                                       System.out.println(value + " - ProfileInfoController - value");
                                     

                                        if(req.getParameter("userId") != null)
                                       { 
                                           userId =   Integer.parseInt(req.getParameter("userId"));
                                       }
                                       
                                      
                                            success = UserDAO.singleUpdate(value, column, userId);
                                  
                                       
                                       if(success > 0)
                                       {
                                                
//                                           res.sendRedirect("JSP/Profile/profile.jsp");
                                              out.write("success");
                                       }
                                       
                                         }
                                     catch (JsonSyntaxException e)
                                     {
                                         System.out.println(e.getMessage());
                                     }
                       }
}
}
