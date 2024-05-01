<%-- 
    Document   : meals
    Created on : Apr 17, 2024, 12:35:20 AM
    Author     : Imandi
--%>


<%@page import="com.teamhydra.util.assetsUrl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/meals.css")%>" />
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/global.css")%>"/>
        <title>meals</title>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../../Common Resources/Styles/global01.css"/>
        <link rel="stylesheet" href="../../Common Resources/Styles/popup.css"/>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Istok Web:wght@400&display=swap"
    />
    <link
      rel="stylesheet"8
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400&display=swap"
    />
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
                            <a href="#" class="dropdown-toggle">Category<span class="arrow"> &DownArrow;</span></a>
                            <div class="dropdown-content">
                                <a href="#">Weight Loss</a>
                                <a href="#">Weight Gain</a>
                                <a href="#">Adult</a>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle">Meals<span class="arrow"> &DownArrow;</span></a>
                            <div class="dropdown-content">
                                <a href="#">Breakfast</a>
                                <a href="#">2nd Breakfast</a>
                                <a href="#">Lunch</a>
                                <a href="#">Afternoon Tea</a>
                                <a href="#">Dinner</a>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle">Calories<span class="arrow"> &DownArrow;</span></a>
                            <div class="dropdown-content">
                                <a href="#"> 1</a>
                                <a href="#"> 2</a>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle">Price<span class="arrow"> &DownArrow;</span></a>
                            <div class="dropdown-content">
                                <a href="#">Item 1</a>
                                <a href="#">Item 2</a>
                            </div>
                        </li>
                    </ul>
                </nav>
            </div>

            <div class="mealsDiv">

                <div class="mealsCarouselDiv">
                    <div class="mealsListDiv">
                        <div class="Card">
                            <div class="cardImageDiv">
                                <img class="cardImage" src="../../Common Resources/Images/Card image.jpg" alt="Image">
                            </div>
                            <div class="mealDiscriptionDiv">
                                <p> A meal pack for breakfast with three portions and a beverage</p>
                            </div>
                            <div class="mealCalDiv">
                                <p>1200 Calories</p>
                            </div>
                            <div class="mealPriceDiv">
                                <p>Rs.1000/=</p>
                            </div>
                            <div class="orderButtonDiv">
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    Launch demo modal
                                </button>




                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
            

                <%@include file="../Common/footer.jspf"  %>

    </body>

</html>
