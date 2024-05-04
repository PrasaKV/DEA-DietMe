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
        
             try{
                                       String jsonString = new BufferedReader(new InputStreamReader(req.getInputStream())).readLine();
                                       PrintWriter out = res.getWriter();
                                        
                                       int userId = 0;
                                       int mealId = 0;
                                       int success = 0;
                                       String type = req.getParameter("type");
                                       
                                       System.out.println(userId + " - ProfileInfoController - value");
                                        
                                            if(type.equals("add"))
                                            {
                                                     if(Integer.parseInt(req.getParameter("userId")) != 0)
                                                    { 
                                                        userId =   Integer.parseInt(req.getParameter("userId"));
                                                    }

                                                     success = customMealDAO.createMeal(userId, jsonString);

                                                    if(success > 0)
                                                    {

                                                           out.write("success");
                                                    }
                                            }
                                            else if(type.equals("update"))
                                            {
                                                     if( Integer.parseInt(req.getParameter("mealId")) != 0)
                                                    { 
                                                        userId =   Integer.parseInt(req.getParameter("userId"));
                                                        mealId =  Integer.parseInt(req.getParameter("mealId"));
                                                    }

                                                     success = customMealDAO.updateMeal(mealId,userId, jsonString);

                                                    if(success > 0)
                                                    {

                                                           out.write("success");
                                                    }
                                            }
                                            
                                             else if(type.equals("delete"))
                                            {
                                                     if( Integer.parseInt(req.getParameter("mealId")) != 0)
                                                    { 
                                                        userId =   Integer.parseInt(req.getParameter("userId"));
                                                        mealId =  Integer.parseInt(req.getParameter("mealId"));
                                                    }

                                                     success = customMealDAO.deleteMeal(mealId,userId);
                                                     
                                                    if(success > 0)
                                                    {
                                                           out.write("success");
                                                    }
                                            }
                    }
                    catch (JsonSyntaxException | SQLException e)
                    {
                        System.out.println(e.getMessage());
                    }

               }    
    }



