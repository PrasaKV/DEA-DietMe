<%@page import="com.teamhydra.util.assetsUrl"%>
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
                            <button class="orderButton">More details
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            
        </div>
            
        
    </body>
</html>
