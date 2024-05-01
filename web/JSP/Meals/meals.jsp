<%-- 
    Document   : meals
    Created on : Apr 17, 2024, 12:35:20 AM
    Author     : Imandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/meals.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/global.css")%>"/>
        <title>meals</title>
    </head>
    <body>
        <%@include file="../Common/navbar.jspf" %>

        <div class="container">

            <div class="background-image">
                <img src="<%=assetsUrl.giveUrl(request, "Common Resources/Images/diet 15.jpg")%>" alt="diet Image" class="background-image" />
            </div>
            <center><div class="topic-wrapper">
                    <div class="topic">
                        <div class="choose-your-meals">Choose Your Meals</div>
                    </div>
                </div>
            </center>
            <div class="navbar2" >
                <nav class="secondary-menu" >
                    <ul>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle">Category<span class="arrow">&#9660;</span></a>
                            <div class="dropdown-content">
                                <a href="#">Weight Loss</a>
                                <a href="#">Weight Gain</a>
                                <a href="#">Adult</a>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle">Meals<span class="arrow">&#9660;</span></a>
                            <div class="dropdown-content">
                                <a href="#">Breakfast</a>
                                <a href="#">2nd Breakfast</a>
                                <a href="#">Lunch</a>
                                <a href="#">Afternoon Tea</a>
                                <a href="#">Dinner</a>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle">Calories<span class="arrow">&#9660;</span></a>
                            <div class="dropdown-content">
                                <a href="#"> 1</a>
                                <a href="#"> 2</a>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle">Price<span class="arrow">&#9660;</span></a>
                            <div class="dropdown-content">
                                <a href="#">Item 1</a>
                                <a href="#">Item 2</a>
                            </div>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
            
                <%@include file="../Common/footer.jspf"  %>
    </body>
</html>
