/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.teamhydra.Controllers;

/**
 *
 * @author Prasad
 */
import com.teamhydra.DAOs.UserDAO;
import com.teamhydra.util.assetsUrl;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/FileController")
@MultipartConfig(
        fileSizeThreshold = 1024 * 100, 
        maxFileSize = 1024 * 1024 * 5 ,
        
        // give the location for the file save if the file size exceed the Threshold
        
        location = "D:\\Programming\\Java\\NetBeans\\Group Project\\Develop\\DEA-DietMe\\web"
)
public class FileController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        
       String directory = "\\Common Resources\\UserImages"; 

       
       int userId = 0;
       userId =   Integer.parseInt(req.getParameter("userId"));
       String userName = req.getParameter("userName");
       String newName = userName.replace(" ", "");
       
       
        Part imagePart = req.getPart("image");
        String imageName = imagePart.getSubmittedFileName();
        

        int lastDotIndex = imageName.lastIndexOf(".");
        String fileExtension = (lastDotIndex > 0) ? imageName.substring(lastDotIndex + 1) : "";
        
        

        String filePath = directory + File.separator + newName + "." + fileExtension;
        
        System.out.println(filePath);
        
        String msg = UserDAO.profileImageUpload(userId, filePath);
        
        imagePart.write(filePath); 
           
//        res.sendRedirect(assetsUrl.giveUrl(req, "JSP/Profile/profile.jsp"));
            res.sendRedirect("SessionRefreshController");
                
               
    }
    
}
        