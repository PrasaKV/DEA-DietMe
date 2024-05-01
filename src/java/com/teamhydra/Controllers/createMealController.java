/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.teamhydra.Controllers;

import com.google.gson.JsonSyntaxException;
import com.teamhydra.DAOs.customMealDAO;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "createMeal", urlPatterns = {"/createMealController"})
public class createMealController extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
             try
                                     {
                                         String jsonString = new BufferedReader(new InputStreamReader(req.getInputStream())).readLine();


                                       PrintWriter out = res.getWriter();
                                        
                                       int userId = 0;
                                       int success = 0;
                                       
                                       System.out.println(userId + " - ProfileInfoController - value");
                                     

                                        if(req.getParameter("userId") != null)
                                       { 
                                           userId =   Integer.parseInt(req.getParameter("userId"));
                                       }

                                        success = customMealDAO.createMeal(userId, jsonString);
                                       
                                       if(success > 0)
                                       {
                                                
                                              out.write("success");
                                       }
                                       
                                       }
                                     catch (JsonSyntaxException | SQLException e)
                                     {
                                         System.out.println(e.getMessage());
                                     }

                       }    
    }



