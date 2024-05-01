<%-- 
    Document   : MealProduct
    Created on : Apr 30, 2024, 8:23:31 PM
    Author     : adipasith
--%>

<%@page import="com.dietme.productmeal.MealProductDAO"%>
<%@page import="com.dietme.productmeal.MealProduct"%>
<%@page import="java.util.List"%>
<%@page import="com.teamhydra.util.assetsUrl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meal Product Page</title>
         <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "Common Resources/Styles/MealProduct.css")%>"/>
    </head>
    <body>
       <div class="product-container">
        <%
            List<MealProduct> products = MealProductDAO.getAllProducts();
            for (MealProduct product : products) {
        %>
        <div class="product-card">
            <img src="<%= product.getImageUrl() %>" alt="<%= product.getName() %>">
            <h3><%= product.getName() %></h3>
            <p><%= product.getDescription() %></p>
            <p>Calories: <%= product.getCalories() %></p>
            <p>Price: $<%= product.getPrice() %></p>
            <div class="btn-container">
                <a href="buy-now.jsp?productId=<%= product.getProductId() %>" class="buy-btn">Buy Now</a>
                <a href="add-to-cart.jsp?productId=<%= product.getProductId() %>" class="cart-btn">Add to Cart</a>
            </div>
        </div>
        <%
            }
        %>
    </div>
    </body>
</html>
