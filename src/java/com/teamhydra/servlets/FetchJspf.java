/**
 *
 * @author Prasad
 */

package com.teamhydra.servlets;

import com.teamhydra.util.assetsUrl;
import java.io.IOException;
import java.io.StringWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@WebServlet("/fetchJspf")
public class FetchJspf extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) {
        try {
            String fileName = req.getHeader("fileName");
            
            res.setCharacterEncoding("UTF-8");
            res.setContentType("text/javascript");
            
            StringWriter writer = new StringWriter();
            
            res.getWriter().flush();
            
            req.getRequestDispatcher("/WEB-INF/jspf/Profile/" + fileName + ".jspf").include(req, res);
            
            System.out.print(writer);
            
            String content = writer.toString();
            
            req.setAttribute("jspf", res);
            
            req.getRequestDispatcher("/JSP/Profile/profile.jsp").forward(req, res);
            
        } catch (ServletException | IOException e) {
            System.out.println(e.getMessage());
        }
    }
}
