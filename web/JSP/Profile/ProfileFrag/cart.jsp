<%@page import="com.teamhydra.util.assetsUrl"%>

 <div class="Cartcontainer">
        <div class="cart">
            <div class="CartHeader">
                  <h1>Your Cart</h1>
            </div>
        </div>


        <div class="mealsContainer">
           <div class="meal-list">
            <button class="select-btn"></button>
              <div class="meal-item">
                <img src="meal1.jpg" alt="Meal 1">
                <div class="Meals-details">
                  <h4>Meal 1</h4>
                  <p>the food eaten or prepared for eating at one time, or the time or occasion when food</p>
                  <p>Rs.750/-</p>
                  
                </div>
              </div>
              
              
 
              <button class="select-btn"></button>
              <div class="meal-item">
                <img src="meal1.jpg" alt="Meal 1">
                <div class="Meals-details">
                  <h4>Meal 3</h4>
                  <p>the food eaten or prepared for eating at one time, or the time or occasion when food</p>
                  <p>Rs.750/-</p>
                </div>
              </div>

              <button class="select-btn"></button>
              <div class="meal-item">
                <img src="meal1.jpg" alt="Meal 1">
                <div class="Meals-details">
                  <h4>Meal 4</h4>
                  <p>the food eaten or prepared for eating at one time, or the time or occasion when food</p>
                  <p>Rs.750/-</p>
                </div>
              </div>

              
              <!-- Add more meal items here -->
            </div>
            <div class="order-summary">
              <h2 class="spase3">Order Summary</h2>
              <ul>
                <li>Meal 1 <span>Rs.750/-</span></li>
                <li>Meal 2 <span>Rs.750/-</span></li>
                <li>Meal 3 <span>Rs.750/-</span></li>
                <li>Meal 4 <span>Rs.750/-</span></li>
                <li>Meal 5 <span>Rs.750/-</span></li>
                <li>Meal 6 <span>Rs.750/-</span></li>
                <li>Meal 7 <span>Rs.750/-</span></li>
                <!-- Add more order items here -->
              </ul>
              <div class="total">
               <div class="spase1">
                <p>Amount <span>Rs.5250/-</span></p>
                <p>TAX <span>Rs.250/-</span></p>
               </div> 
                
                <br><br>
                <h3  class="spase2">Order Total <span>Rs.5,500/-</span></h3>
              </div>
             
            </div>
          </div>
        <br>


          <div class="spase4">
          <div class="buttons">

             <button class="dustbin-button">
                <img src="<%=assetsUrl.giveUrl(request, "Common Resources/Images/")%>" alt="">
            </button>
              
            <div class="checkcancel">
                <button class="cancel">Cancel All</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button class="checkout">Check out</button>
            </div>
                
              </div>
          </div>
          
            
            
            <div>
                <%--<%@include file="../../jspf/Profile/CartMealsMg.jspf" %>--%>
            </div>
            
            <div>
                <%--<%@include file="../../jspf/Profile/CartCheckoutMg.jspf" %>--%>
            </div>
            
            
        </div>
            
            
            
            
            
   

