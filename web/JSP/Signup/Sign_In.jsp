<%-- 
    Document   : Sign_In
    Created on : Apr 20, 2024, 7:44:55 PM
    Author     : adipasith
--%>

<%@page import="com.teamhydra.util.assetsUrl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In Form</title>
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/styles.css")%>"/>
    </head>
    <body>
        <div class="center">
            <div class="card">
                <h2>Welcome</h2>
                <h4>Sign in to continue</h4>
                <hr>
                <form action="/DEA-DietMe/UserController?request=signin" method="post" class="login-form">

                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" placeholder="Enter your password" required>
                </div>


                <div class="forgot-password-link">
                    <a href="Forgot_password.jsp">Forgot password?</a>
                </div>


                <div class="form-group">
                    <button type="submit" class="green-btn">Log In</button>
                </div>


                <div class="register-text">
                    <p>Haven't registered yet? <a href="Sign_up.jsp">Register</a></p>
                </div>
            </form>

            
            <div class="carousel-card">
                
            </div>
        </div>
    </body>
</html>
