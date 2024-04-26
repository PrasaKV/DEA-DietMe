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
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/notificationMassage.css")%>" />

        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/PendingDeliveries.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/PendingDelMassage.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/PurchaseHistory.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/PurchaseHistoMg.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/Cart.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/CartMealsMg.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/CartCheckoutMg.css")%>" />

        
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/navbar.js")%>" defer></script>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/profile.js")%>" defer></script>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/profileInfo.js")%> " defer></script>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/notification.js")%>" defer></script>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/notificationMassage.js")%>" defer></script>

        
        
        
        

        <title>Profile</title>
    </head>
    <body>

        <%@include file="../../WEB-INF/jspf/Common/navbar.jspf" %>

       <% 
           HttpSession Session = request.getSession(false);
           
           System.out.println(Session.getAttribute("name") + "= Jsp"); 
       %> 
        
        <div id="profile">
            <div class="profileDivLeft profileDiv">
                <div class="profileImageDiv">
                    <img src="<%=assetsUrl.giveUrl(request, "Common Resources/Assets/avatar.png")%>" alt="Profile Image" class="profileImage" />
                    <button class="addImage"></button>
                </div>
                <div class="profileTabsDiv">
                    <a href="/DEA-DietMe/ProfileTabsController?fileName=profileInfo" ><h1 class="profileTabs" id="personalInfo">Personal Info</h1></a>
                     <a href="/DEA-DietMe/ProfileTabsController?fileName=customMeals" ><h1 class="profileTabs" id="customMeals">Custom Meals</h1></a>
                    <a href="/DEA-DietMe/ProfileTabsController?fileName=cart" ><h1 class="profileTabs" id="cart">Cart</h1></a>
                    <a href="/DEA-DietMe/ProfileTabsController?fileName=favourites" ><h1 class="profileTabs" id="favourites">Favourites</h1></a>
                    <a href="/DEA-DietMe/ProfileTabsController?fileName=notifications" ><h1 class="profileTabs" id="notifications">Notifications</h1></a>
                    <a href="/DEA-DietMe/ProfileTabsController?fileName=purchaseHistory" ><h1 class="profileTabs" id="purchaseHistory">Purchase History</h1></a>
                    <a href="/DEA-DietMe/ProfileTabsController?fileName=pendingDeliveries" ><h1 class="profileTabs" id="pendingDeliveries">Pending Deliveries</h1></a>
                </div>
            </div>
                        
                    <div class="profileDivRight profileDiv">
                        <%
                                        String name = (String) request.getAttribute("fileName");
                                        if (name == null || name.isEmpty())
                                        {
                                            name = "profileInfo";
                                        }
                                        
                                        String path = "ProfileInfo/" +  name + ".jsp";
                        %>
                        <jsp:include page="<%= path %>" />
                    </div>
          
        </div>

        <%@include file="../../WEB-INF/jspf/Common/footer.jspf"  %>

    </body>
</html>
