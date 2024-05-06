<%-- 
    Document   : meal_cart
    Created on : May 5, 2024, 12:32:43 PM
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
    <link rel="stylesheet" href="meal_product.css"> <!-- Link to external CSS file -->
</head>
<body>
    <%
        // Get the user ID (assuming you have a way to get it)
        int userId = 1; // Replace with the actual user ID

        // Create instances of MealDAO and CartDAO
        MealDAO mealDAO = new MealDAO();
        CartDAO cartDAO = new CartDAO();

        // Retrieve the cart items for the user
        List<CartItem> cartItems = cartDAO.getCartItemsByUserId(userId);
    %>

    <div class="main-card">
        <div class="card-content">
            <h5>Your Cart</h5>
            <hr class="styled-hr"> <!-- Added class "styled-hr" for styling -->

            <!-- Display the cart items -->
            <% if (cartItems != null && !cartItems.isEmpty()) { %>
                <% for (CartItem cartItem : cartItems) { %>
                    <% Meal meal = mealDAO.getMealById(cartItem.getMealId()); %>
                    <div class="card">
                        <div class="image">
                            <img src="<%= meal.getImagePath() %>" alt="">
                        </div>
                        <div class="info">
                            <div class="meal-name">
                                <h6><%= meal.getName() %></h6>
                            </div>
                            <div class="meal-calories">
                                <h6><%= meal.getCalories() %> Calories</h6>
                            </div>
                            <div class="quantity-controls meal-quantity">
                                <h6>Quantity</h6>
                                <div>
                                    <button class="decrease">-</button>
                                    <span class="current-quantity"><%= cartItem.getQuantity() %></span>
                                    <button class="increase">+</button>
                                </div>
                            </div>
                            <div class="meal-price">
                                <h6>Rs. <%= meal.getPrice() %></h6>
                            </div>
                        </div>
                    </div>
                <% } %>
            <% } else { %>
                <p>Your cart is empty.</p>
            <% } %>

            <hr class="styled-hr"> <!-- Added class "styled-hr" for styling -->
            <div class="meal-btn">
                <input type="reset" name="reset-btn" value="Delete" id="reset-btn" class="reset-btn">
                <input type="submit" name="submit-btn" value="Check Out" id="submit-btn" class="submit-btn">
            </div>
        </div>
    </div>
</body>
</html>