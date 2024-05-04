<%@page import="java.sql.ResultSet"%>
<%@page import="com.teamhydra.util.commonUtill"%>
<%@page import="com.teamhydra.util.assetsUrl"%>
<%-- 
    Document   : profile
    Created on : Apr 13, 2024, 11:04:29 PM
    Author     : Prasad
--%>



<%  
            String  userId = "" ;
            String userName = "";
            String profileImage="not found";
    
    try
    {
        
         userId = session.getAttribute("userId").toString();
         userName = (String) session.getAttribute("userName");
         
         profileImage = commonUtill.profileImage(userId);
         
         System.out.println(profileImage + "Profile.jsp - profileImageUrl - Line 22");
            
                       if(userName == null)
                        {
                                response.sendRedirect("/DEA-DietMe/Home");
                                System.out.println("Profile If Redirect");
                        }
    }
    catch(Exception e)
    {
            System.out.println(e.getMessage() + " = Profile Exception");
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/global.css")%>"/>
        
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/profile.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/profileInfo.css")%>" />
        
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/cart.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/cartMealsMg.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/cartCheckoutMg.css")%>" />
         
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/notification.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/notificationMassage.css")%>" />
        
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/purchaseHistory.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/purchaseHistoMg.css")%>" />
        
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/pendingDeliveries.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/pendingDelMassage.css")%>" />
       
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/customMeal.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/yourMealPopup.css")%>" />

        
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/navbar.js")%>" defer></script>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/profile.js")%>" defer></script>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/profileInfo.js")%> " defer></script>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/notification.js")%>" defer></script>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/notificationMassage.js")%>" defer></script>

        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/cart.js")%>" defer></script>
        
        
        
        

        <title>Profile</title>
    </head>
    <body>

        <%@include file="../Common/navbar.jspf" %>
        
        <div id="profile">
            <div class="profileDivLeft profileDiv">
                <div class="profileImageDiv">
                    <img src="<%=assetsUrl.giveUrl(request, profileImage )%>" alt="Profile Image" id="profileImage"  class="profileImage" />
                    <form action="/DEA-DietMe/FileController?userId=<%= userId%>&userName=<%= userName%>" method="POST" enctype="multipart/form-data" id="profileImageForm">
                        <button id="addImageInputCover"></button>
                        <input id="addImageInput" type="file" accept="image/*" name="image" />
                    </form>
                </div>
                <div class="profileTabsDiv">
                    <a href="/DEA-DietMe/Profile? =ProfileInfo" ><h1 class="profileTabs" id="personalInfo">Personal Info </h1></a>
                    <a href="/DEA-DietMe/Profile? =CustomMeals" ><h1 class="profileTabs" id="customMeals">Custom Meals</h1></a>
                    <a href="/DEA-DietMe/Profile? =Cart" ><h1 class="profileTabs" id="cart">Cart</h1></a>
                    <a href="/DEA-DietMe/Profile? =Favourites" ><h1 class="profileTabs" id="favourites">Favourites</h1></a>
                    <a href="/DEA-DietMe/Profile? =Notifications" ><h1 class="profileTabs" id="notifications">Notifications</h1></a>
                    <a href="/DEA-DietMe/Profile? =PurchaseHistory" ><h1 class="profileTabs" id="purchaseHistory">Purchase History</h1></a>
                    <a href="/DEA-DietMe/Profile? =PendingDeliveries" ><h1 class="profileTabs" id="pendingDeliveries">Pending Deliveries</h1></a>
                </div>
            </div>
        
                    <div class="profileDivRight profileDiv">
                        <%
                                        String name = (String) request.getParameter(" ");
                                       
                                        if (name == null || name.isEmpty())
                                        {
                                            name = "ProfileInfo";
                                        }
                        %>
                        <jsp:include page="<%= "/" + name%>" />
                    </div>
          
        </div>

        <%@include file="../Common/footer.jspf"  %>

        
        
    </body>
</html>
