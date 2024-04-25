package com.teamhydra.Controllers;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author Prasad
 */

@WebServlet("/ProfileTabsController")
public class ProfileTabsController extends HttpServlet {
    
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
        String fileName = (String) req.getParameter("fileName");
        if(fileName == null || fileName.isEmpty())
        {
            fileName = "profileInfo";
        }
        
        req.setAttribute("fileName", fileName);
        
        
        String path = "/JSP/Profile/profile.jsp" ;
        RequestDispatcher dispatcher = req.getRequestDispatcher(path);
        dispatcher.forward(req, res);
    }
    
}
