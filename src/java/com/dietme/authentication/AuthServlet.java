package com.dietme.authentication;

import com.dietme.admin.Admin;
import com.teamhydra.Email.EmailSender;
import com.teamhydra.Objects.UserInfo;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {
    "/auth/register", "/auth/login","/auth/loginMethod","/auth/registerMethod","/auth/logOutMethod","/auth/Verify"})
public class AuthServlet extends HttpServlet {

    private authDao authDao;
    private String token;
    private String authCode;
    private String email;
    

    public AuthServlet() {
        this.authDao = new authDao();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        doGet(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();

        switch (action) { // Convert action to lowercase for case-insensitive comparison
            case "/auth/register":
                showRegisterForm(request, response);
                break;
            case "/auth/login":
                showLoginForm(request, response);
                break;
            case "/auth/registerMethod":
                registerUser(request, response);
                break;
            case "/auth/loginMethod":
                loginUser(request, response);
                break;
            case "/auth/logOutMethod":
                logOut(request, response);
                break;
            case "/auth/Verify":
                Verify(request, response);
                break;
            default:
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid action");
        }

    }

    private void showRegisterForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/JSP/Signup/Sign_up.jsp");
        dispatcher.forward(request, response);

    }

    private void showLoginForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        RequestDispatcher dispatcher = request.getRequestDispatcher("/JSP/Signup/Sign_In.jsp");
        dispatcher.forward(request, response);
    }

    private void registerUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // Get user data from request
        UserInfo user = new UserInfo();
        user.setName(request.getParameter("name"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));

        email = request.getParameter("email");
        
        // Check if password matches confirm password
        String confirmPassword = request.getParameter("confirmpassword");
        if (!user.getPassword().equals(confirmPassword)) {
            response.sendRedirect("register"); // Redirect to error page
            return;
        }

        try {
            if (authDao.registerUser(user)) {
                 token =  EmailSender.sendVerificationEmail(request.getParameter("email"));
                    response.sendRedirect("/DEA-DietMe/GetVerify");

//                    response.sendRedirect("login");
            } else {
                response.sendRedirect("register"); // Redirect to error page
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Registration failed");
        }
    }

    private void loginUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Get login credentials from request
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();

        try {
            UserInfo user = authDao.loginUser(email, password);
            Admin admin = authDao.loginAdmin(email, password);
            int active = user.getActive();
            if (user != null && active == 1 ) {
                // User login successful, set session attributes and redirect
                session.setAttribute("userId", user.getId());

                session.setAttribute("userName", user.getName());
                session.setAttribute("userEmail", user.getEmail());
                session.setAttribute("userPhone", user.getPhone());
                session.setAttribute("userAddress", user.getAddress());
                session.setAttribute("profileImage", user.getProfileImage());
               response.sendRedirect(request.getContextPath() + "/home");


            } else if (admin != null) {
                // Admin login successful, set session attributes and redirect
                request.getSession().setAttribute("admin", admin);
                response.sendRedirect(request.getContextPath() + "/admin");

            } else {
                // Login failed
                response.sendRedirect("login.jsp?error=invalid_credentials"); // Redirect to login page with error message
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Login failed");
        }
    }
            private void logOut(HttpServletRequest request, HttpServletResponse response) throws IOException {

                HttpSession session = request.getSession();

                session.invalidate();
                
                response.sendRedirect("/DEA-DietMe/home");
        
    }
            private void Verify(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

                authCode = request.getParameter("authcode");
                request.setAttribute("authCode", authCode);
                request.setAttribute("token", token);
                request.setAttribute("email", email);
//                System.out.println("tags - " + authCode + "------" + token);
                request.getRequestDispatcher("/UserVerify").forward(request, response);
        
    }
}
