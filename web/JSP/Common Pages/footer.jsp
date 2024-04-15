<%-- 
    Document   : Footer
    Created on : Apr 12, 2024, 7:19:41 PM
    Author     : Prasad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.teamhydra.util.assetsUrl" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%= assetsUrl.giveUrl(request, "Common Resources/Styles/footer.css") %>"/>
    </head>
    <body>
        <div class="footerDiv">
        <div class="footerFlexDiv">
            <div class="footerInsideDiv">
            <img  class="footerLogo" src="<%= assetsUrl.giveUrl(request, "Common Resources/Assets/DEA-Logo.png") %>" alt="Logo">
            </div>
            <div class="footerTextDiv"> 
            <div class="footerInsideDiv">
                <h1 class='header'>Contact</h1>
                <p class='footerDis'>011-1234567<br>
                    contact@dietme.com<br>
                    310/A,Pitipana Road,<br>
                    Homagama,Sri Lanka.
                </p>
            </div>
            <div class='footerInsideDiv'>
                <h1 class='header' >Connect</h1>
                <div class="socialMediaDiv">
                    <img class="footerIcons"  src="<%= assetsUrl.giveUrl(request, "Common Resources/Assets/facebook.png") %>" alt='facebook image'>
                    <img class="footerIcons" src="<%= assetsUrl.giveUrl(request, "Common Resources/Assets/instergram.png") %>" alt='instergram image'>
                    <img class="footerIcons" src="<%= assetsUrl.giveUrl(request, "Common Resources/Assets/whatsapp.png") %>" alt='whatsapp image'>
                </div>
                <h2 class="openHours">Open Hours</h2>
                <p class='footerDis'>06.00 AM - 08.00 PM</p>
            </div>
            </div>
        </div>
        <div class="footerPlaceHolder"></div>
            <p class='alrightRecived' >Alright Received @ Team Hydra 2024</p>
    </div>
        
    </body>
</html>
