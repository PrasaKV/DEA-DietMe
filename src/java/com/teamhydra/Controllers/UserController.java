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
@WebServlet("/UserController")
public class UserController extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        {
            String param = req.getParameter("request");
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            HttpSession Session = req.getSession(true);
            Session.setAttribute("name", "game");

            switch (param) {
                case "register": {
                    try {
                        boolean signUpFlag = UserDAO.signUpUser(name, email, password);

                        if (signUpFlag) {
                            res.sendRedirect(assetsUrl.giveUrl(req, "JSP/Signup/Sign_In.jsp"));
                        }
                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                }

                case "signin": {
                    try {
                        UserInfo userInfo = UserDAO.signInUser(email);

                        if (!(userInfo.getPassword().isEmpty()) && userInfo.getPassword().equals(password)) {
                            System.out.println(Session.getAttribute("name") + "= servlet");
                            res.sendRedirect(assetsUrl.giveUrl(req, "JSP/Profile/profile.jsp"));
                        }

                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                }
            }
        }
    }
}
