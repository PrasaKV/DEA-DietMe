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
<<<<<<< HEAD
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/notificationMessage.css")%>" />
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/navbar.js")%>" defer></script>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/profile.js")%>" defer></script>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/profileInfo.js")%> " defer></script>

=======
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/notification.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/notificationMassage.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/PendingDeliveries.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/PendingDelMassage.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/PurchaseHistory.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/PurchaseHistoMg.css")%>" />
        
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/notification.js")%>" defer></script>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/notificationMassage.js")%>" defer></script>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/PendingDelMassage.js")%>" defer></script>
        
        
        
        
>>>>>>> 3423f0b759256515ec63a1d7614b69f04dbebdc3
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
                    <a href="/DEA-DietMe/ProfileTabsController?fileName=profileInfo" ><h1 class="profileTabs" id="personalInfo">Personal Info</h1></a>
                     <a href="/DEA-DietMe/ProfileTabsController?fileName=profileInfo" ><h1 class="profileTabs" id="customMeals">Custom Meals</h1></a>
                    <a href="/DEA-DietMe/ProfileTabsController?fileName=profileInfo" ><h1 class="profileTabs" id="cart">Cart</h1></a>
                    <a href="/DEA-DietMe/ProfileTabsController?fileName=profileInfo" ><h1 class="profileTabs" id="favourites">Favourites</h1></a>
                    <a href="/DEA-DietMe/ProfileTabsController?fileName=notifications" ><h1 class="profileTabs" id="notifications">Notifications</h1></a>
                    <a href="/DEA-DietMe/ProfileTabsController?fileName=profileInfo" ><h1 class="profileTabs" id="purchaseHistory">Purchase History</h1></a>
                    <a href="/DEA-DietMe/ProfileTabsController?fileName=pendingDeliveries" ><h1 class="profileTabs" id="pendingDeliveries">Pending Deliveries</h1></a>
                </div>
            </div>
<<<<<<< HEAD
=======
                    /*<div class="profileDivRight profileDiv ">
                        <%@include file="../../WEB-INF/jspf/Profile/PurchaseHistory.jspf" %>
>>>>>>> 3423f0b759256515ec63a1d7614b69f04dbebdc3
                        
                    <div class="profileDivRight profileDiv">
                        <%
                                        String name = (String) request.getAttribute("fileName");
                                        if (name == null || name.isEmpty())
                                        {
                                            name = "profileInfo";
                                        }
                                        
                                        String path = "../../WEB-INF/jspf/Profile/" +  name + ".jspf";
                        %>
                        <jsp:include page="<%= path %>" />
                    </div>
          
        </div>

        <%@include file="../../WEB-INF/jspf/Common/footer.jspf"  %>

    </body>
</html>
