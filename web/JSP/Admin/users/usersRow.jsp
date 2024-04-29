<%@page import="com.dietme.utill.PathProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.dietme.mealItems.MealItems" %>
<%@ page import="java.util.List" %>

<%
    // Assuming mIDList is a List<MealItems> passed as a request attribute
    List<MealItems> mIDList = (List<MealItems>) request.getAttribute("mIDList");
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Manage Meal Items</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>CMS Dashboard</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%=PathProvider.giveUrl(request, "common/styles/custom.css")%>">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">
        <style>
            /* Optional: Add custom CSS for additional styling */
            .container {
                margin-top: 50px;
            }
        </style>
    </head>
    <body>
        <div class="wrapper">
            <div class="body-overlay"></div>
            <%@include file="../../common/widgets/sidenavbar.jsp" %>
            <div id="content">
                <%@include file="../../common/widgets/topnavbar.jsp" %>
                <div class="main-content">
                    <div class="container-fluid">
                        <div class="container-fluid">
                            <h1 class="text-center mt-2">Meal Items Management</h1>
                            <div class="d-flex justify-content-end" style="margin-right: 2%">
                                <h2>
                                    <a href="new" class="btn btn-success">Add New</a>&nbsp;&nbsp;&nbsp;

                                </h2>
                            </div>
                            <div class="row justify-content-center m-2">
                                <div class="col-md-12" style="overflow-x: auto">
                                    <% if (mIDList != null && !mIDList.isEmpty()) { %>
                                    <!--show table-->
                                    <table class="table">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Image</th>
                                                <th>Default Grams</th>
                                                <th>Default Price</th>
                                                <th>Default Cal</th>
                                                <th>Default Proteins</th>
                                                <th>Default Carbs</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% for (MealItems item : mIDList) {%>
                                            <tr>
                                                <td><%= item.getMealItemId()%></td>
                                                <td><%= item.getMealItemName()%></td>

                                                <td><img src=
                                                         "<%=PathProvider.giveUrl(request, "DBImages/") + item.getImgurl()%>" 
                                                         style="width:5rem;height:5rem"></td>
                                                <td><%= item.getDefaultGrams()%></td>
                                                <td><%= item.getDefaultPrice()%></td>
                                                <td><%= item.getDefaultCal()%></td>
                                                <td><%= item.getDefaultProtein()%></td>
                                                <td><%= item.getDefaultCarbs()%></td>
                                                <td>
                                                    <a href="edit?id=<%= item.getMealItemId()%>" class="btn btn-primary" style="width: 5rem">Edit</a>
                                                    <a href="#" 
                                                       onclick="return confirmDelete('<%= item.getMealItemId()%>');"
                                                       class="btn btn-danger"style="width: 5rem">Delete</a>

                                                </td>
                                            </tr>
                                            <% }%>
                                        </tbody>
                                    </table>
                                    <% } else { %>
                                    <div class="alert alert-info" role="alert">
                                        No meals itemsfound.
                                    </div>
                                    <% }%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <br><br> <!-- Add some spacing -->
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
                                                                       .then((willDelete) = > {
                                                                       if (willDelete) {
                                                                           // Redirect to the delete action with the item ID
                                                                           window.location.href = "delete?id=" + itemId;
                                                                       } else {
                                                                           // Do nothing if the user cancels
                                                                       }
                                                                       }
                                                                       );
                                                                       // Return false to prevent the default link action
                                                                       return false;
                                                           }


        </script>


    </body>
</html>
