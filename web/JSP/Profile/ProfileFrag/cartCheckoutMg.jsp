<%-- any content can be specified here e.g.: --%>
<%@ page pageEncoding="UTF-8" %>






<div class="Checkcontainer">
        <h3>Checkout</h3>
        <div class="checkout-sections">
            <div class="billing-info">
                <form action="">
                    <div class="form-group">
                        <label for="card-name">Card Name</label>
                        <input type="text" id="card-name" name="card-name" placeholder="Enter your card name">
                    </div>
                    <div class="form-group">
                        <label for="card-name">Card Number</label>
                        <input type="text" id="card-num" name="card-num" placeholder="Enter your card number">
                    </div>

                    <div class="form-group">
                        <div class="cvc">
                            <div>
                                <label for="expire-date">Expire Date</label>
                                <select id="expire-date" name="expire-date">
                                    <option value="">Select Expire Date</option>
                                    <!-- Add options for different expiration dates -->
                                </select>   
                            </div>
                            <div class="cvcchange">
                                <label for="cvc">CVC</label>
                                <input type="text" id="cvc" name="cvc" placeholder="CVC">
                            </div>
                        </div>  
                    </div>

                    <div class="checkbox-container">
                        <input type="checkbox" id="remember-card"> &nbsp;&nbsp;&nbsp;&nbsp;
                        <label for="remember-card">Remember This Card</label>
                      </div>
                     </form>
            </div>

        <div class="order-summary">
                
           <div class="address-container">
            <div>
                <p class="default-address">Default Delivery Address</p>
                <br>
                <p class="address">12A,ABC Street, Colombo</p>
            </div> 
           <input type="checkbox" id="address-card">
           </div>
            <br><br>

           <div class="location-container">
            <div>
                <p class="location-text">Add Your Current Location</p>
                <img src=""   alt="">
            </div>
            <input type="checkbox" id="address-card">
           </div>

        </div>
       
    </div>


    <div class="button-group">
        <div class="btbt">
            <button type="button">Cancel</button>
            <button type="submit">Submit</button>
        </div>
        
    </div>

    </div>
