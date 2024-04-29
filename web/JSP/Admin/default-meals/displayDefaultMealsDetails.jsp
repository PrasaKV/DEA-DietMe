<%@page import="com.dietme.deafaultMeals.DefaultMeals"%>
<%@page import="com.dietme.utill.PathProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>

<%
    // Assuming mIDList is a List<MealItems> passed as a request attribute
    List<DefaultMeals> dMList = (List<DefaultMeals>) request.getAttribute("dMList");

%>

<!DOCTYPE html>
<html>
    <head>
        <title>Manage Meal Items</title>
        <!-- Include Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            /* Optional: Add custom CSS for additional styling */
            .container {
                margin-top: 50px;
            }
        </style>
    </head>
    <body>
        <br>
        <div class="container-fluid">
            <h1 class="text-center mt-2">Meal Items Management</h1>
            <div class="d-flex justify-content-end" style="margin-right: 2%">
                <h2>
                    <a href="new" class="btn btn-success">Add New</a>&nbsp;&nbsp;&nbsp;

                </h2>
            </div>
            <div class="row justify-content-center m-2">
                <div class="col-md-12" style="overflow-x: auto">
                    <% if (dMList != null && !dMList.isEmpty()) { %>
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Meal Goal Type</th>
                                <th>Meal Time</th>
                                <th>Meal Type</th>
                                <th>Meal Items</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (DefaultMeals item : dMList) {%>
                            <tr>
                                <td><%= item.getDefaultMealId()%></td>
                                <td><%= item.getDefaultMealName()%></td>
                                <td><img src="<%= PathProvider.giveUrl(request, "DBImages/") + item.getImgurl()%>" style="width:5rem;height:5rem"></td>
                                <td><%= item.getMealgoalType()%></td>
                                <td><%= item.getMealTime()%></td>
                                <td><%= item.getMealType()%></td>
                                <td><a href="edit?id=<%= item.getDefaultMealId()%>"
                                       class="btn btn-info" style="width: 5rem">Show</a></td>
                                <td>
                                    <a href="edit?id=<%= item.getDefaultMealId()%>"
                                       class="btn btn-primary" style="width: 5rem">Edit</a>
                                    <a href="#" 
                                       onclick="return confirmDelete('<%= item.getDefaultMealId()%>');"
                                       class="btn btn-danger"style="width: 5rem">Delete</a>
                                </td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
                    <% } else { %>
                    <div class="alert alert-info" role="alert">
                        No meals found.
                    </div>
                    <% }%>
                </div>
            </div>
        </div>
        <!-- Include Bootstrap JS (Optional) -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">

<script>
    function confirmDelete(itemId) {
        // Display a confirmation dialog using SweetAlert
        swal({
            title: "Are you sure?",
            text: "Once deleted, you will not be able to recover this item!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
        .then((willDelete) => {
            if (willDelete) {
                // Redirect to the delete action with the item ID
                window.location.href = "delete?id=" + itemId;
            } else {
                // Do nothing if the user cancels
            }
        });

        // Return false to prevent the default link action
        return false;
    }

  
</script>


    </body>
</html>
