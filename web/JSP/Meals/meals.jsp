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


    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                
                <div class="modal-body">
                        <div class="popup1">
                            <div class="background3"></div>
                            <button class="add-to-cart-button1">
                                <div class="background4"></div>
                                <div class="add-to-cart1">Add To Cart</div>
                            </button>
                            <button class="close-button1">
                                <div class="background5"></div>
                                <div class="close1">Close</div>
                            </button>
                            <div class="popup-item"></div>
                            <div class="discription1">
                                <div class="discription-tab1">
                                    <div class="discription-tab-item"></div>
                                    <div class="background6"></div>
                                    <div class="description1">Description</div>
                                </div>
                                <div class="lorem-ipsum-dolor6">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                    eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
                                    minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                </div>
                            </div>
                            <div class="portion-section">
                                <div class="table1">
                                    <div class="table-child7"></div>
                                    <div class="table-child8"></div>
                                    <div class="table-child9"></div>
                                    <div class="table-child10"></div>
                                    <div class="table-child11"></div>
                                    <div class="table-child12"></div>
                                    <div class="table-child13"></div>
                                    <div class="table-child14"></div>
                                    <div class="table-child15"></div>
                                    <div class="table-child16"></div>
                                    <div class="text1">
                                        <div class="eggs-21">Eggs - 2</div>
                                        <div class="cal6">400Cal</div>
                                        <div class="cal7">200Cal</div>
                                        <div class="cal8">1000Cal</div>
                                        <div class="cal9">500Cal</div>
                                        <div class="cal10">200Cal</div>
                                        <div class="cal11">2500Cal</div>
                                        <div class="salads-200g1">Salads - 200g</div>
                                        <div class="beef-300g1">Beef - 300g</div>
                                        <div class="peanut-150g1">Peanut - 150g</div>
                                        <div class="milk-200ml1">Milk - 200ml</div>
                                        <div class="lorem-ipsum-dolor7">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                        </div>
                                        <div class="lorem-ipsum-dolor8">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                        </div>
                                        <div class="lorem-ipsum-dolor9">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                        </div>
                                        <div class="lorem-ipsum-dolor10">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                        </div>
                                        <div class="lorem-ipsum-dolor11">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="images1">
                                <img
                                    class="screen-shot-2020-04-13-at-310-icon2"
                                    alt=""
                                    src="../../Common Resources/Images/screenshot20200413at31016pm@2x.png"
                                    />

                                <img
                                    class="screen-shot-2020-04-13-at-310-icon3"
                                    alt=""
                                    src="../../Common Resources/Images/screenshot20200413at31016pm@2x.png"
                                    />

                                <img class="images-1-icon1" alt="" src="../../Common Resources/Images/images-1@2x.png" />

                                <img
                                    class="shutterstock-1310793359-icon1"
                                    alt=""
                                    src="../../Common Resources/Images/shutterstock-1310793359@2x.png"
                                    />
                            </div>
                            <div class="upper-section1">
                                <div class="discription-tab-item"></div>
                                <div class="information-tab">
                                    <div class="background7"></div>
                                </div>
                                <div class="customer-reviews-tab">
                                    <div class="background8"></div>
                                </div>
                                <button><div class="information1">Information</div></button>
                                <button><div class="customer-reviews1">Customer Reviews</div></button>
                            </div>
                        </div>
                    </div>
                </div>
        </div>


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
    </body>

</html>
