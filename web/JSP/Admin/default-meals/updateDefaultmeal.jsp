<%-- 
    Document   : addMealIngredianDetails
    Created on : Apr 22, 2024, 8:07:41 PM
    Author     : kavin
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.dietme.mealItems.MealItems"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.teamhydra.util.assetsUrl"%><!DOCTYPE html>
<html lang="en">
    <head>

        <title>Update Meal Form</title>
        <%@include file="../common/widgets/cmdlinks.jsp" %>
        <style>
            /* Custom CSS */
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                background-color: #f8f9fa;
            }
            .custom-form {
                border-radius: 10px;
                border: 1px solid black;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                padding: 20px;
                background-color: #fff;
            }
            .scrollable-form {
                max-height: 60vh; /* Set a maximum height for the scrollable area */
                overflow-y: auto; 
            }
            label {
                font-weight: 700;
            }
            .btn {
                min-width: 10rem;
            }

            /* Media Queries */
            @media (max-width: 767px) {
                .custom-form {
                    padding: 10px;
                }
            }

            @media (max-width: 576px) {
                .row {
                    flex-direction: column;
                }

                .col {
                    margin-bottom: 20px;
                }
            }

        </style>
    </head>
    <body>

        <div class="wrapper">
            <div class="body-overlay"></div>
            <%@include file="../common/widgets/sidenavbar.jsp" %>
            <div id="content" style="background-color: white">
                <%@include file="../common/widgets/topnavbar.jsp" %>
                <div class="main-content" style="background-color: white" >
                    <input type="hidden" id="status" value="<%= request.getAttribute("status")%>"> 
                    <div class="container">
                        <h1 class="text-center mt-2">${MealItem != null ? 'Update Meal Item' : 'Add new Meal '}</h1>
                        <div class="row mt-3" style="align-items: flex-end">
                            <div class=" col-12 d-flex justify-content-end">
                                <a class="btn btn-dark" href="show-all-items" style="color: white; text-decoration:none">All Items</a>
                            </div>
                        </div>
                        <br>
                        <div class=" custom-form">
                            <div class="row">
                                <div class="col-md-6 ">
                                    <form class="" action="insert-basic-details" 
                                          method="post" id="form1" enctype="multipart/form-data">
                                        <div class="scrollable-form">
                                            <div class="form-group">
                                                <label for="mealItemName">Meal Name</label>
                                                <input type="text" class="form-control" id="mealItemName"
                                                       name="defaultmealName" placeholder="Enter Meal Item Name" required="required">
                                            </div>
                                            <%
                                                String imageUrlDB = null;
                                                if (request.getAttribute("MealItem") != null) {
                                                    com.dietme.mealItems.MealItems mealItem = (com.dietme.mealItems.MealItems) request.getAttribute("MealItem");
                                                    imageUrlDB = mealItem.getImgurl();
                                                }
                                            %>

                                            <% if (imageUrlDB != null) {%>
                                            <img src="<%= assetsUrl.giveUrl(request, "DBImages/")%><%= imageUrlDB%>" style="width:5rem;height:5rem">
                                            <% }%>

                                            <div class="form-group">
                                                <label for="imgUrl">Add Image</label>
                                                <input type="file" class="form-control" id="imgUrl" name="imgUrl">

                                                <input type="hidden" name="existingImageUrl" value="<%= imageUrlDB%>">
                                            </div>
                                            <div class="form-group">
                                                <label for="mealGoal">Meal Goal</label>
                                                <select class="form-control" name="mealgoalType">
                                                    <option value="">Select Goal Type</option>
                                                    <option value="bodyGain">Body Gain</option>
                                                    <option value="bodyLoss">Body Loss</option>
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <label for="mealTime">Meal Time</label>
                                                <select class="form-control" id="mealTime" name="mealTime">
                                                    <option value="">Select Meal Time</option>
                                                    <option value="breakfast">Breakfast</option>
                                                    <option value="lunch">Lunch</option>
                                                    <option value="dinner">Dinner</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="mealType">Meal Type</label>
                                                <select class="form-control" id="mealType" name="mealType">
                                                    <option value="">Select Meal Type</option>
                                                    <option value="vegi">Vegetarian</option>
                                                    <option value="nonVegi">Non-Vegetarian</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="description">Description</label>
                                                <textarea cols="10" rows="20" class="form-control" id="description" name="description"
                                                          placeholder="Additional Description" style="height: 100px;"
                                                          >${MealItem != null ? MealItem.description : ''}</textarea></div>

                                        </div>
                                        <button  type="submit" id="submitBasic" 
                                                 class="btn btn-success mt-3" >Add Basic Meal Details</button>
                                    </form>
                                </div>
                                <div class="col-md-6 ">
                                    <%
                                        Object idObj = request.getAttribute("DefaultMealId");
                                        if (idObj != null) {
                                    %>
                                    <button onclick="enableSecondForm()" type="submit" id="mealItemsButton" class="btn btn-primary"> Press to Add Meal Items</button>
                                    <%
                                    } else {
                                    %>
                                    <div class="alert alert-info" role="alert">
                                        First of all you add Basic meal Details. Afterward, you can add meal items (ingredients).
                                    </div>
                                    <%
                                        }
                                    %>

                                    <form class="mt-3 p-2" action="insert-mealsub" method="post" style="border: 1px solid black">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input type="hidden" name="mealId" value="<%=request.getAttribute("DefaultMealId")%>">
                                                    <label for="mealItems">Select Meal Items</label>
                                                    <select class="form-control" id="mealItem" name="mealItem" style="pointer-events: none;" required="required">
                                                        <% try {
                                                                Class.forName("com.mysql.cj.jdbc.Driver");
                                                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dietme", "root", "");
                                                                String query = "SELECT * FROM mealitems";
                                                                Statement st = con.createStatement();
                                                                ResultSet rs = st.executeQuery(query);
                                                                while (rs.next()) {%>
                                                                <option value="<%= rs.getInt("mealItemId")%>" style="max-width: 20px; overflow: hidden; text-overflow: ellipsis"><%= rs.getString("mealItemName")%></option>
                                                        <% }
                                                                con.close();
                                                            } catch (ClassNotFoundException e) {
                                                                e.printStackTrace();
                                                            } catch (SQLException e) {
                                                                e.printStackTrace();
                                                            } %>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="mealItemName">Grams</label>
                                                    <input type="number" class="form-control" id="mealItemGrams" name="mealItemGrams" placeholder="grams" required="required" style="pointer-events: none;">
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <button type="submit" id="addItem" class="btn btn-success" disabled="true" style="margin-top: 2rem;">Add</button>
                                            </div>
                                        </div>
                                    </form>

                                    <!-- Display items -->
                                    <%
                                        // Check if DefaultMealId attribute exists in the request
                                        idObj = request.getAttribute("DefaultMealId");
                                        if (idObj != null) {
                                    %>
                                    <h4 class="m-2">Selected meal items</h4>

                                    <%
                                        // Establishing database connection
                                        try {
                                            Class.forName("com.mysql.cj.jdbc.Driver");
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dietme", "root", "");

                                            // Constructing SQL query to select all meal items for a specific meal
                                            String query = "SELECT * FROM mealaddeditems WHERE mealID=" + idObj;
                                            Statement st = con.createStatement();
                                            ResultSet rs = st.executeQuery(query);

                                            // Displaying table header
                                    %>
                                    <div style="overflow-y: auto ; height:15rem" >
                                        <table class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Ingredient Name</th> 
                                                    <th>Image</th>
                                                    <th>Grams</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%    // Iterate through the result set to retrieve meal items
                                                    while (rs.next()) {
                                                        // Get meal item ID and grams
                                                        int mealItemId = rs.getInt("mealItemId");
                                                        String grams = rs.getString("inputGrams");
                                                        int submealItemId  = rs.getInt("submealItemId");

                                                        // Constructing SQL query to select meal details for a specific meal item
                                                        String mealDetailsQuery = "SELECT * FROM mealitems WHERE mealItemId =" + mealItemId;
                                                        Statement mealSt = con.createStatement();
                                                        ResultSet mealRs = mealSt.executeQuery(mealDetailsQuery);

                                                        // Iterate through the meal details result set to retrieve details for each item
                                                        while (mealRs.next()) {
                                                            // Get meal details
                                                            String name = mealRs.getString("mealItemName");
                                                            String imgurl = mealRs.getString("imgurl");

                                                            // Displaying table row for each meal item
                                                %>
                                                <tr>
                                                    <td><%= name%></td>
                                                    <td><img src="<%= assetsUrl.giveUrl(request, "DBImages/") + imgurl%>" style="width:3rem;height:3rem"></td>
                                                    <td><%= grams%></td>
                                                     
                                                </tr>
                                                <%
                                                            }
                                                            mealRs.close();
                                                            mealSt.close();
                                                        }
                                                        // Close the resources
                                                        rs.close();
                                                        st.close();
                                                        con.close();
                                                    } catch (ClassNotFoundException e) {
                                                        e.printStackTrace();
                                                    } catch (SQLException e) {
                                                        e.printStackTrace();
                                                    }
                                                %>
                                            </tbody>
                                        </table>

                                    </div>


                                    <%
                                        }
                                    %>


                                </div>


                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>

        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="alert/dist/sweetalert.css">
        <script>
                                        var status = document.getElementById("status").value;
                                        if (status === "MealInsertSuccess") {
                                            swal("Success!", "Successfully insert Meal Item", "success");
                                            document.getElementById("submitBasic").disabled = true;

                                        } else if (status === "MealInsertFailed") {
                                            swal("Error!", "Error in inserting Meal Item", "error");
                                        } else if (status === "Updatesucsess") {
                                            swal("Udate Success!", "Successfully insert Meal Item", "success");
                                        } else if (status === "UpdateFailed") {
                                            swal("Error!", "Error in updating Meal Item", "error");
                                        }

                                        function enableSecondForm() {
                                            document.getElementById("mealItem").style.pointerEvents = "auto";
                                            document.getElementById("mealItem").style.pointerEvents = "auto";
                                            document.getElementById("mealItemGrams").style.pointerEvents = "auto";
                                            document.getElementById("addItem").disabled = false;




                                        }
                                        function disableButton() {
                                            document.getElementById("submitBasic").disabled = true; // Disable the button
                                        }
                                        
        </script>
    </body>
</html>
