<%--
    Document   : index
    Created on : Apr 12, 2024, 7:21:44 PM
    Author     : Prasad
--%>
<%@page import="com.teamhydra.util.MealItemDef"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="com.teamhydra.util.assetsUrl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="JSP/Admin/common/widgets/cmdlinks.jsp" %>
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/global.css")%>"/>
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/index.css")%>"/>
        <script src="<%=assetsUrl.giveUrl(request, "Common Resources/Scripts/navbar.js")%>" defer></script>

        <title>home</title>
        <style>

        </style>
    </head>
    <body>
        <%@include file="JSP/Common/navbar.jspf" %>


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
                <div class="mealsCarouselDiv">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-1" style="">
                                <!-- Previous button outside the carousel -->
                                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"  ></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </div>
                            <div class="col-md-10">
                                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mealsListDiv">
                                                        <div class="Card">
                                                            <div class="cardImageDiv">
                                                                <img class="cardImage" src="Common Resources/Images/Card image.jpg" alt="Image">
                                                                <div class="favHeartDiv">
                                                                    <img id="favHeart" src="Common Resources/Images/heart0.png" alt="image" onclick="changeImage()">
                                                                </div>
                                                            </div>
                                                            <h4 class="text-center mt-4 "style="color: black;font-weight: 800">Weight Loss</h4>
                                                            <div class="text-center" style="margin: 0 5%">
                                                                <p class="mealDes"> A meal pack for breakfast with three portions and a beverage</p>
                                                                <h6 style="font-weight: 700">1200 Calories</h6>
                                                                <h4 style="color: black;font-weight: bold">Rs.1000/=</h4>
                                                            </div>


                                                            <div class="orderButtonDiv">
                                                                <button class="orderButton">More Details</button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mealsListDiv">
                                                        <div class="Card">
                                                            <div class="cardImageDiv">
                                                                <img class="cardImage" src="Common Resources/Images/Card image.jpg" alt="Image">
                                                                <div class="favHeartDiv">
                                                                    <img id="favHeart" src="Common Resources/Images/heart0.png" alt="image" onclick="changeImage()">
                                                                </div>
                                                            </div>
                                                            <h4 class="text-center mt-4 "style="color: black;font-weight: 800">Weight Loss</h4>
                                                            <div class="text-center" style="margin: 0 5%">
                                                                <p class="mealDes"> A meal pack for breakfast with three portions and a beverage</p>
                                                                <h6 style="font-weight: 700">1200 Calories</h6>
                                                                <h4 style="color: black;font-weight: bold">Rs.1000/=</h4>
                                                            </div>


                                                            <div class="orderButtonDiv">
                                                                <button class="orderButton">More Details</button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mealsListDiv">
                                                        <div class="Card">
                                                            <div class="cardImageDiv">
                                                                <img class="cardImage" src="Common Resources/Images/Card image.jpg" alt="Image">
                                                                <div class="favHeartDiv">
                                                                    <img id="favHeart" src="Common Resources/Images/heart0.png" alt="image" onclick="changeImage()">
                                                                </div>
                                                            </div>
                                                            <h4 class="text-center mt-4 "style="color: black;font-weight: 800">Weight Loss</h4>
                                                            <div class="text-center" style="margin: 0 5%">
                                                                <p class="mealDes"> A meal pack for breakfast with three portions and a beverage</p>
                                                                <h6 style="font-weight: 700">1200 Calories</h6>
                                                                <h4 style="color: black;font-weight: bold">Rs.1000/=</h4>
                                                            </div>


                                                            <div class="orderButtonDiv">
                                                                <button class="orderButton">More Details</button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mealsListDiv">
                                                        <div class="Card">
                                                            <div class="cardImageDiv">
                                                                <img class="cardImage" src="Common Resources/Images/Card image.jpg" alt="Image">
                                                                <div class="favHeartDiv">
                                                                    <img id="favHeart" src="Common Resources/Images/heart0.png" alt="image" onclick="changeImage()">
                                                                </div>
                                                            </div>
                                                            <h4 class="text-center mt-4 "style="color: black;font-weight: 800">Weight Loss</h4>
                                                            <div class="text-center" style="margin: 0 5%">
                                                                <p class="mealDes"> A meal pack for breakfast with three portions and a beverage</p>
                                                                <h6 style="font-weight: 700">1200 Calories</h6>
                                                                <h4 style="color: black;font-weight: bold">Rs.1000/=</h4>
                                                            </div>


                                                            <div class="orderButtonDiv">
                                                                <button class="orderButton">More Details</button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                        <div class="carousel-item"> 
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mealsListDiv">
                                                        <div class="Card">
                                                            <div class="cardImageDiv">
                                                                <img class="cardImage" src="Common Resources/Images/Card image.jpg" alt="Image">
                                                                <div class="favHeartDiv">
                                                                    <img id="favHeart" src="Common Resources/Images/heart0.png" alt="image" onclick="changeImage()">
                                                                </div>
                                                            </div>
                                                            <h4 class="text-center mt-4 "style="color: black;font-weight: 800">Weight Loss</h4>
                                                            <div class="text-center" style="margin: 0 5%">
                                                                <p class="mealDes"> A meal pack for breakfast with three portions and a beverage</p>
                                                                <h6 style="font-weight: 700">1200 Calories</h6>
                                                                <h4 style="color: black;font-weight: bold">Rs.1000/=</h4>
                                                            </div>


                                                            <div class="orderButtonDiv">
                                                                <button class="orderButton">More Details</button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mealsListDiv">
                                                        <div class="Card">
                                                            <div class="cardImageDiv">
                                                                <img class="cardImage" src="Common Resources/Images/Card image.jpg" alt="Image">
                                                                <div class="favHeartDiv">
                                                                    <img id="favHeart" src="Common Resources/Images/heart0.png" alt="image" onclick="changeImage()">
                                                                </div>
                                                            </div>
                                                            <h4 class="text-center mt-4 "style="color: black;font-weight: 800">Weight Loss</h4>
                                                            <div class="text-center" style="margin: 0 5%">
                                                                <p class="mealDes"> A meal pack for breakfast with three portions and a beverage</p>
                                                                <h6 style="font-weight: 700">1200 Calories</h6>
                                                                <h4 style="color: black;font-weight: bold">Rs.1000/=</h4>
                                                            </div>


                                                            <div class="orderButtonDiv">
                                                                <button class="orderButton">More Details</button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mealsListDiv">
                                                        <div class="Card">
                                                            <div class="cardImageDiv">
                                                                <img class="cardImage" src="Common Resources/Images/Card image.jpg" alt="Image">
                                                                <div class="favHeartDiv">
                                                                    <img id="favHeart" src="Common Resources/Images/heart0.png" alt="image" onclick="changeImage()">
                                                                </div>
                                                            </div>
                                                            <h4 class="text-center mt-4 "style="color: black;font-weight: 800">Weight Loss</h4>
                                                            <div class="text-center" style="margin: 0 5%">
                                                                <p class="mealDes"> A meal pack for breakfast with three portions and a beverage</p>
                                                                <h6 style="font-weight: 700">1200 Calories</h6>
                                                                <h4 style="color: black;font-weight: bold">Rs.1000/=</h4>
                                                            </div>


                                                            <div class="orderButtonDiv">
                                                                <button class="orderButton">More Details</button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mealsListDiv">
                                                        <div class="Card">
                                                            <div class="cardImageDiv">
                                                                <img class="cardImage" src="Common Resources/Images/Card image.jpg" alt="Image">
                                                                <div class="favHeartDiv">
                                                                    <img id="favHeart" src="Common Resources/Images/heart0.png" alt="image" onclick="changeImage()">
                                                                </div>
                                                            </div>
                                                            <h4 class="text-center mt-4 "style="color: black;font-weight: 800">Weight Loss</h4>
                                                            <div class="text-center" style="margin: 0 5%">
                                                                <p class="mealDes"> A meal pack for breakfast with three portions and a beverage</p>
                                                                <h6 style="font-weight: 700">1200 Calories</h6>
                                                                <h4 style="color: black;font-weight: bold">Rs.1000/=</h4>
                                                            </div>


                                                            <div class="orderButtonDiv">
                                                                <button class="orderButton">More Details</button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>
                            <div class="col-md-1">
                                <!-- Next button outside the carousel -->
                                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>


                <%    // Assuming "test" is set as an attribute in the request scope before this JSP is called
                    String test = (String) request.getAttribute("test");
                    if (test != null) {
                        // Process the attribute or use it as needed
                        // For example, you can display it within HTML tags
                %>
                <div>
                    <%= test%>
                </div>
                <%
                    }
                %>
            </div>

            <!-- feedback section -->



            <div class="feedbackDiv">
                <h2 class="topic2">Popular Meals</h2><br>
                <div class="feedbackground">

                    <div class="backblur">
                        <br>
                        <div class="reviews-scroll">
                            <div class="commentContainer">
                                <div class="row">
                                    <div class="col-md-1">
                                        <div class="commentImageDiv" style="margin: 1.5rem;">
                                            <img class="commentImage" src="avatar.png" alt="Avatar">
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="commentText"  style="margin:1rem 2rem">
                                            <h2 class="userName" style="color: black; font-weight: 600;">User Name</h2>
                                            <p class="commentContent">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero sit amet ipsum dapibus fermentum.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="commentContainer">
                                <div class="row">
                                    <div class="col-md-1">
                                        <div class="commentImageDiv" style="margin: 1.5rem;">
                                            <img class="commentImage" src="avatar.png" alt="Avatar">
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="commentText"  style="margin:1rem 2rem">
                                            <h2 class="userName" style="color: black; font-weight: 600;">User Name</h2>
                                            <p class="commentContent">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero sit amet ipsum dapibus fermentum.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="commentContainer">
                                <div class="row">
                                    <div class="col-md-1">
                                        <div class="commentImageDiv" style="margin: 1.5rem;">
                                            <img class="commentImage" src="avatar.png" alt="Avatar">
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="commentText"  style="margin:1rem 2rem">
                                            <h2 class="userName" style="color: black; font-weight: 600;">User Name</h2>
                                            <p class="commentContent">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero sit amet ipsum dapibus fermentum.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="commentContainer">
                                <div class="row">
                                    <div class="col-md-1">
                                        <div class="commentImageDiv" style="margin: 1.5rem;">
                                            <img class="commentImage" src="avatar.png" alt="Avatar">
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="commentText"  style="margin:1rem 2rem">
                                            <h2 class="userName" style="color: black; font-weight: 600;">User Name</h2>
                                            <p class="commentContent">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero sit amet ipsum dapibus fermentum.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="commentContainer">
                                <div class="row">
                                    <div class="col-md-1">
                                        <div class="commentImageDiv" style="margin: 1.5rem;">
                                            <img class="commentImage" src="avatar.png" alt="Avatar">
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="commentText"  style="margin:1rem 2rem">
                                            <h2 class="userName" style="color: black; font-weight: 600;">User Name</h2>
                                            <p class="commentContent">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero sit amet ipsum dapibus fermentum.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="commentbar">
                            <div class="backblur2">
                                <form id="newCommentForm">
                                    <input type="text" id="commentText" name="commentText" placeholder="Add Comment..." required><br>
                                    <div class="sendButton">
                                        <button type="submit">
                                            <img class="sendImage" src="Common Resources/Images/send.png">
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!--feedback section-->


            <!--customer message section-->    
            <div class="container customerMessage">
                <div class="row justify-content-center">
                    <div class="col-md-6" >

                        <div style="margin-left: 3rem;margin-top: 8rem">
                            <h1  class="topicmes"  style="color: #222222">Send Message to us</h1>
                            <h5 style="color: #666666">Kindly complete the form provided below to reach out to us.
                                Your messages are valuable to us, and we look forward to hearing from you soon. Thank you!
                            </h5>


                            <form id="sendMessageForm" action="sendMessage"
                             method="post" onsubmit="return checkUserLogin()">
                                <input type="hidden" name="userId" value="<%= session.getAttribute("userId")%>">
                                <div class="form-group">
                                    <textarea class="form-control" style="height: 10rem; background-color: rgba(255, 255, 255, 0.5);" id="message" placeholder="Enter your message" name="message"></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Send Message</button>
                            </form>


                        </div>
                    </div>

                    <div class="col-md-6 mt-5">

                        <img src="Common Resources/Images/loginImg.png" class="card-img-top img-fluid" alt="Image" >

                    </div>
                </div>
            </div>

            <!-- End of Customer message section -->

            <!--customer message section-->





            <%@include file="JSP/Common/footer.jspf"%>

            <script>
                const burgerMenu = document.querySelector(".burgerMenu");
                        const menuDiv = document.querySelector(".menuDiv");
                        let
                flag = false;
                        burgerMenu.addEventListener("click", () = > {
                        if (!flag) {
                            flag = true;
                            menuDiv.style.display = "flex";
                            menuDiv.style.height = "140px";
                            burgerMenu.classList.add("burgerMenuClicked");
                        } else {
                            flag = false;
                            menuDiv.style.display = "none";
                            menuDiv.style.height = "0px";
                            burgerMenu.classList.remove("burgerMenuClicked");
                            }
                        }
                        );
                        function checkUserLogin() {
                            // Check if the user is logged in by verifying userId existence
                            var userId = '<%= session.getAttribute("userId")%>';

                            if (userId !== null) {
                                // User is logged in, allow form submission
                                return true;
                            } else {
                                // User is not logged in, display message and redirect to login servlet
                                swal({
                                    title: "Login Required",
                                    text: "You need to login to send a message.",
                                    icon: "warning",
                                    buttons: true,
                                }).then(function () {
                                    // Redirect to login servlet
                                    window.location.href = "loginServletUrl";
                                });
                                // Prevent form submission
                                return false;
                            }
                        }
            </script>


    </body>

</html>
