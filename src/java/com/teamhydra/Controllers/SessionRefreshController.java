//package com.teamhydra.Controllers;
//
//
//import com.teamhydra.DAOs.UserDAO;
//import com.teamhydra.Objects.UserInfo;
//import com.teamhydra.util.assetsUrl;
//import java.io.IOException;
//import java.util.Date;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//@WebServlet("/SessionRefreshController")
//public class SessionRefreshController extends HttpServlet {
//    
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//
//        updateSessionAttributes(req, res);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//        
//                res.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
//                res.setHeader("Pragma", "no-cache"); 
//                res.setHeader("Expires", "0");
//
//        updateSessionAttributes(req, res);
//    }
//
//    private void updateSessionAttributes(HttpServletRequest req, HttpServletResponse res) throws IOException {
//
//        HttpSession session = req.getSession(false);
//        long timestamp = new Date().getTime();
//
//        try {
//
//            String email = (String) session.getAttribute("userEmail");
//
//
//            UserInfo userInfo = UserDAO.signInUser(email);
//            session.setAttribute("userId", userInfo.getId());
//            session.setAttribute("userName", userInfo.getName());
//            session.setAttribute("userEmail", userInfo.getEmail());
//            session.setAttribute("userPhone", userInfo.getPhone());
//            session.setAttribute("userAddress", userInfo.getAddress());
//            session.setAttribute("profileImage", userInfo.getProfileImage());
//
//
//            System.out.println(session.getAttribute("userName") + " = SessionRefreshController SessionUName");
//        } catch (NullPointerException e) {
//            System.out.println(e.getMessage());
//        }
//
//                
//                res.sendRedirect(assetsUrl.giveUrl(req, "JSP/Profile/profile.jsp"));
//    }
//}
