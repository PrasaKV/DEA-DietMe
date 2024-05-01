package com.teamhydra.Controllers;

import com.google.gson.Gson;
import com.teamhydra.DAOs.UserDAO;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.Map;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Prasad
 */
@WebServlet("/ChangePasswordController")
public class ChangePasswordController extends HttpServlet{
    
                @Override
                public void doPost (HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
                {
                    String jsonString = new BufferedReader(new InputStreamReader(req.getInputStream())).readLine();
                                        
                    Gson gson = new Gson();
                    Map<String, String> jsonData = gson.fromJson(jsonString, Map.class);
                    
                    PrintWriter out = res.getWriter();

                    int userId = Integer.parseInt(req.getParameter("userId"));
                    
                    String request = req.getParameter("request");
                    
                    String  inputPassword = jsonData.get("password");
                    
                    String currentPassword = "";
                    
                    
                    
                    
                    if(request.equals("passwordcheck"))
                    {

                                System.out.println(inputPassword + "  = ChangePasswordController - inputPassword ");

                                currentPassword = UserDAO.passwordConfirm(userId);

                                System.out.println(currentPassword + "  = ChangePasswordController - currentPassword ");

                                if(inputPassword.equals(currentPassword))
                                {
                                    out.write("password match");
                                }
                                else
                                {
                                    out.write("password do not match");
                                }
                    }
                    
                    else if (request.equals("passwordset"))
                    {
                                System.out.println(inputPassword + "  = ChangePasswordController - newPassword");
                                
                               int row = UserDAO.singleUpdate(inputPassword, "password", userId);
                               
                               if(row > 0)
                               {
                                    out.write("password change was successfull");
                               }
                               else
                               {
                                   out.write("password change was unsuccessfull");
                               }
                                
                    }
                   
                    
                }
    
}
