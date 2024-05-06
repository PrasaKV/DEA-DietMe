<%-- 
    Document   : order
    Created on : May 5, 2024, 9:12:42 PM
    Author     : adipasith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meal Product</title>
    <link rel="stylesheet" href="order_form.css"> <!-- Link to external CSS file -->
</head>
<body>

<div class="main-card">
    <div class="card-content">
        
        <h2>Order Details</h2>
        <hr class="styled-hr"> 

        <div class="card">

            <div class="left-card">

                <div class="meal-deitals-info">

                    <div class="meal-name">
                        <label>Meal Name:</label>
                    </div>
        
                    <div class="meal-quantity">
                        <label>Quantity:</label>
                    </div>
        
                    <div class="meal-price">
                        <label>Price:</label>
                    </div>
                </div>

                <div class="user-details-info">

                    <div class="user-name">
                        <input type="text" name="user-name" id="user-name" class="user-name" placeholder="Enter Your Name">
                    </div>
        
                    <div class="user-address">
                        <input type="text" name="user-address" id="user-address" class="user-address" placeholder="Enter Your Address">
                    </div>
        
                    <div class="user-country">
                        <input type="user-country" name="user-country" id="user-country" class="user-country" placeholder="Enter Your Country">
                    </div>
        
                    <div class="user-province">
                        <input type="text" name="user-province" id="user-province" class="user-province" placeholder="Enter Your Province">
                    </div>
        
                    <div class="user-district">
                        <input type="text" name="user-district" id="user-district" class="user-district" placeholder="Enter Your District">
                    </div>
        
                    <div class="user-tele">
                        <input type="number" name="user-tele" id="user-tele" class="user-tele" placeholder="Enter Phone number">
                    </div>
        
                </div>

            </div>


            <div class="right-card">

                <div class="payment-cart-info">

                    <div class="user-bank">
                        <input type="text" name="user-bank" id="user-bank" class="user-bank" placeholder="Bank Name">
                    </div>
        
                    <div class="user-card-number">
                        <input type="text" name="user-card-number" id="user-card-number" class="user-card-number" placeholder="Card Number">
                    </div>
        
                    <div class="user-year-date">
                        <select name="user-year" id="user-year" class="year">
                            <option value="">Select Year</option>
                            <option value="2024">2024</option>
                            <option value="2025">2025</option>
                            <option value="2026">2026</option>
                            <option value="2025">2027</option>
                            <option value="2025">2028</option>
                            <option value="2025">2029</option>
                            <option value="2025">2030</option>
                        </select>
                        <select name="user-month" id="user-month" class="month">
                            <option value="">Select Month</option>
                            <option value="01">January</option>
                            <option value="02">February</option>
                            <option value="02">March</option>
                            <option value="02">April</option>
                            <option value="02">May</option>
                            <option value="02">June</option>
                            <option value="02">july</option>
                            <option value="02">August</option>
                            <option value="02">Octomber</option>
                            <option value="02">November</option>
                            <option value="02">December</option>
                        </select>
                    </div>
                    
            </div>
    
                <div class="user-cvc">
                    <input type="number" name="user-cvc" id="user-cvc" class="user-cvc" placeholder="CVC">
                </div>
    
            </div>

        </div>
        <hr class="styled-hr">

        <div class="meal-btn">
            <input type="reset" name="Clear-btn" value="Clear" id="Clear-btn" class="Clear-btn">
            <input type="submit" name="Order-btn" value="Order" id="Order-btn" class="Order-btn">
        </div>

        <hr class="styled-hr">

    </div>
</div>

</body>
</html>
