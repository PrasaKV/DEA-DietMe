<%-- 
    Document   : Sign_up
    Created on : Apr 22, 2024, 7:57:08 PM
    Author     : adipasith
--%>

<%@page import="com.teamhydra.util.assetsUrl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Form</title>
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/styles.css")%>"/>
    </head>
    <body>
        <div class="center">
            <div class="card">
                <h2>Sign Up to continue</h2>
                <hr>
                <form action="/DEA-DietMe/UserController?request=register" method="POST">
                    
                    <label for="fullname">Full Name:</label>
                    <input type="text" id="fullname" name="name" placeholder="">
                    
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" placeholder="">
                    
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" placeholder="">
                    
                    <label for="confirmpassword">Confirm Password:</label>
                    <input type="password" id="confirmpassword" name="confirmpassword" placeholder="">
                    
                    <button class="green-btn" type="submit">Sign Up</button>
                </form>
                <div class="register-text">
                    <p>Already have an account? <a href="Sign_In.jsp">Login</a></p>
                </div>
            </div>
        </div>
    </body>
</html>
