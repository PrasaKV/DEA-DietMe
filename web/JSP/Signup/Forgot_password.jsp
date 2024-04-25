<%-- 
    Document   : Forgot_password
    Created on : Apr 23, 2024, 1:31:07 PM
    Author     : adipasith
--%>

<%@page import="com.teamhydra.util.assetsUrl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot_password Page</title>
         <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/forgot_password.css")%>"/>
    </head>
    <body>
        <div class="card">
            <a href="Sign_In.jsp" class="back-arrow">&#8592;</a>
            <h2>Reset Your Password</h2>
            <hr>
            <h4>A 6 Digit Code Is Sent To The:</h4>
            <div calss="input-container">
                <input type="text" id="verificationCode" name="verificationCode" placeholder="Enter code">
                <button type="submit" class="green-btn">Submit</button>
            </div>
            <label for="newPassword">New Password:</label>
            <input type="password" id="newPassword" name="newPassword" placehoder="">
            
            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" placeholder="">
            
            <button type="submit" class="confirm-btn">Confirm</button>
        </div>
    </body>
</html>
