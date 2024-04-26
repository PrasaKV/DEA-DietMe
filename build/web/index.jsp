<%--
    Document   : index
    Created on : Apr 12, 2024, 7:21:44 PM
    Author     : Prasad
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="com.teamhydra.util.assetsUrl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/global.css")%>"/>
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/index.css")%>"/>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/navbar.js")%>" defer></script>

        <title>home</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/Common/navbar.jspf" %>
        

    <div class="homePageDiv">

        <div class="mainVideoDiv">
            <img class="mainVideo" src="Common Resources/Images/Diet video.jpg" alt="Video">
        </div>    

        <div class="topicDiv">
            <div class="topicTextDiv">
                <h1 class="text1">Let's Start</h1>
                <h1 class="text2">Your</h1>
                <h1 class="text3">Healthy Life</h1>
            </div>
        </div>

        <div class="discriptionDiv">
            <div class="firstParagraphDiv">
                <p class="para1">Sri Lanka's First Diet Food Market Place Where You Can Buy Or Create Your Own Meals For An Affordable Price With Island Wide Delivery.</p>
            </div>
            <div class="secondParagraphDiv">
                <p class="para2">A gym diet meal plan is a highly structured nutritional regimen designed to support your fitness goals and optimize your performance during workouts. It emphasizes a balance of macro-nutrients such as carbohydrates, proteins, and fats tailored to your needs and fitness objectives.</p>
                <div class="buttonDiv">
                    <button class="buttonGreen">Order Now </button>
                </div>
            </div>
        </div>

        <div class="mealsDiv">
            <h2 class="topic2">Popular Meals</h2>
        </div>

        <div class="feedbackDiv">
            <div class="feedbackground">
                <div class="backblur">
                    <div class="commentbar">
                        <div class="backblur2">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

        <%@include file="WEB-INF/jspf/Common/footer.jspf"%>
    </body>
</html>
