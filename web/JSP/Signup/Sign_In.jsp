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

                        <form action="/DEA-DietMe/UserController?request=signin" method="POST">
                                <label for="email">Email:</label>
                                <input type="email" id="email" name="email" placeholder="" required>
                                <span id="emailError" style="color: red;"></span>

                                <label for="password">Password:</label>
                                <input type="password" id="password" name="password" placeholder="" required>
                                <span id="passwordError" style="color: red;"></span>

                                <a href="Forgot_password.jsp" class="forgot-password-link">Forgot password?</a>

                                <button type="submit" class="green-btn">Log In</button>

                                <div class="register-text">
                                    <p>Haven't registered yet? <a href="Sign_up.jsp">Register</a></p>
                                </div>
                        </form>
            </div>
            
            <div class="carousel-card">
                
            </div>
        </div>
    </body>
</html>
