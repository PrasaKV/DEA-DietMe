/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.teamhydra.Email;

import com.teamhydra.util.DBUtill;
import java.io.IOException;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author adipasith
 */
public class VerificationServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
                String code = request.getAttribute("authCode").toString();
                String email = request.getAttribute("email").toString();
                String token = request.getAttribute("token").toString();
               
                System.out.println("tags - " + code + email + token);
            
            try {
               
              
               if(code.equals(token))
                {
                    String sql  = "UPDATE users SET active = 1 WHERE email = ?";
                    PreparedStatement stmt = DBUtill.setStatment(sql);
                    
                    stmt.setString(1, email);
                    
                   int row = stmt.executeUpdate();
                    if (row > 0)
                    {
                         response.sendRedirect("/DEA-DietMe/auth/login");
                    }
                } else {

                    response.sendRedirect("/DEA-DietMe/auth/Verify");
                }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    }
