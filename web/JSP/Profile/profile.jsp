<!-- <%-- 
    Document   : profile
    Created on : Apr 13, 2024, 11:04:29 PM
    Author     : Prasad
--%>
-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/global.css")%>"/>
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/profile.css")%>" />

        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/profileInfo.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/notification.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/notificationMessage.css")%>" />
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/navbar.js")%>" defer></script>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/profile.js")%>" defer></script>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/profileInfo.js")%>"></script>

        <title>Profile</title>
    </head>
    <body>

        <%@include file="../../WEB-INF/jspf/Common/navbar.jspf" %>

        <div id="profile">
            <div class="profileDivLeft profileDiv">
                <div class="profileImageDiv">
                    <img src="<%=assetsUrl.giveUrl(request, "Common Resources/Assets/avatar.png")%>" alt="Profile Image" class="profileImage" />
                    <button class="addImage"></button>
                </div>
                <div class="profileTabsDiv">
                    <h1 class="profileTabs" id="personalInfo">Personal Info</h1>
                    <h1 class="profileTabs" id="customMeals">Custom Meals</h1>
                    <h1 class="profileTabs" id="cart">Cart</h1>
                    <h1 class="profileTabs" id="favourites">Favourites</h1>
                    <h1 class="profileTabs" id="notifications">Notifications</h1>
                    <h1 class="profileTabs" id="purchaseHistory">Purchase History</h1>
                    <h1 class="profileTabs" id="pendingDeliveries">Pending Deliveries</h1>
                </div>
            </div>
                        
                    <div class="profileDivRight profileDiv">
                        <%--<%@include file="../../WEB-INF/jspf/Profile/profileInfo.jspf"  %>--%>
                        <%= request.getAttribute("jspf") %>
                    </div>
          
        </div>

        <%@include file="../../WEB-INF/jspf/Common/footer.jspf"  %>

    </body>
</html>
