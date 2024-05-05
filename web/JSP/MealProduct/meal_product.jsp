<%-- 
    Document   : meal_product
    Created on : May 5, 2024, 12:28:11 PM
    Author     : adipasith
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meal Product</title>
    <link rel="stylesheet" href="meal_product.css">
</head>
<body>
    <%
        List<Meal> meals = (List<Meal>) request.getAttribute("meals");
        if (meals != null && !meals.isEmpty()) {
            for (Meal meal : meals) {
    %>
    <div class="card">
        <div class="card-content">
            <div class="meal-image">
                <img src="<%= meal.getImagePath() %>" alt="Card Image">
            </div>
            <div class="meal-description">
                <h3><%= meal.getName() %></h3>
                <p><%= meal.getDescription() %></p>
            </div>
            <div class="meal-calories">
                <h3><%= meal.getCalories() %> Calories</h3>
            </div>
            <div class="meal-price">
                <h3>Rs. <%= meal.getPrice() %></h3>
            </div>
            <form action="AddToCartServlet" method="post">
                <input type="hidden" name="mealId" value="<%= meal.getMealId() %>">
                <input type="hidden" name="userId" value="<%= userId %>"> <!-- Replace with the actual user ID -->
                <div class="meal-btn">
                     <input type="submit" name="meal-btn-add" value="Add To Cart">
                </div>
            </form>
        </div>
    </div>
    <%
            }
        }
    %>
</body>
</html>