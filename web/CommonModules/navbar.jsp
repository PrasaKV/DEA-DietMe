<%--
  Document   : Navbar
  Created on : Apr 12, 2024, 7:14:02 PM
  Author     : Prasad
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="CommonModules/Styles/navbar.css" />
</head>
<body>
    <div class="navbarDiv" id="navbar">
        <div class="logoDiv">
            <a href="#" ><img class="logo" src="CommonModules/Assets/DEA-Logo.png" loading="lazy" height="35px" alt="logo"></a>
        </div>
        <div class="selectionsDiv">
            <a class="selection selectionUnderline" href="#navbar">Home</a>
            <a class="selection selectionUnderline" href="meals.jsp">Meals</a>
            <a class="selection selectionUnderline" href="#">Create Your Meal</a>
            <a class="selection" href="#">
                <img class="navCartButton" src="CommonModules/Assets/cart.png" loading="lazy" width="24px" height="24px">
            </a>
            <button class="selection" id="navLogin">
                <a href="#" class="" id="loginButton">Login</a>
            </button>
            <a class="profilePic" href="#">
                <img class="profilePic" src="#">
            </a>
            <div class="mediaQuearyNav">
                <div class="burgerMenu">
                    <div class="lines line1"></div>
                    <div class="lines line2"></div>
                    <div class="lines line3"></div>
                </div>
            </div>
            <div class="menuDiv">
                <div class="menuSelectionDiv">
                    <a class="menuSelection display" href="#navbar">Home</a>
                    <a class="menuSelection display" href="meals.jsp">Meals</a>
                    <a class="menuSelection display" href="#">Create Your Meal</a>
                    <a class="menuSelection display" href="#">Login</a>
                </div>
            </div>
        </div>
    </div>

    <script>
        const burgerMenu = document.querySelector(".burgerMenu");
        const menuDiv = document.querySelector(".menuDiv");
        let flag = false;

        burgerMenu.addEventListener("click", () => {
            if (!flag) {
                flag = true;
                menuDiv.style.display = "flex";
                menuDiv.style.height = "140px";
                burgerMenu.classList.add("burgerMenuClicked");
            } else if (flag) {
                flag = false;
                menuDiv.style.display = "none";
                menuDiv.style.height = "0px";
                burgerMenu.classList.remove("burgerMenuClicked");
            }
        });
    </script>
</body>
</html>