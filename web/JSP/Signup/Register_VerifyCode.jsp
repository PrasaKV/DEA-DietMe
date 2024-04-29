<%-- 
    Document   : Register_VerifyCode
    Created on : Apr 29, 2024, 9:39:23 AM
    Author     : adipasith
--%>

<%@page import="com.teamhydra.util.assetsUrl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Verify Page</title>
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/styles.css")%>"/>
    </head>
    <body>
        <div class="center">
            <div class="card">
                <h2>Hello</h2>
                <h4>Verify Your Sign Up Account</h4>
                <hr>

                <form action="VerifyCode" method="post" class="login-form">


                <div class="form-group">
                    <label for="text">Code:</label>
                    <input type="text" id="text" name="authcode" placeholder="">
                </div>
                    
                <div class="form-group">
                    <button type="submit" class="green-btn">Verify</button>
                </div>
                    
            
            </form>
         
        </div>
    </body>
</html>
