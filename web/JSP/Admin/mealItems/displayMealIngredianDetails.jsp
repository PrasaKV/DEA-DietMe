<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.dietme.mealItems.MealItems" %>
<%@ page import="java.util.List" %>
<%@page import="com.teamhydra.util.assetsUrl"%>


<%
    // Assuming mIDList is a List<MealItems> passed as a request attribute
    List<MealItems> mIDList = (List<MealItems>) request.getAttribute("mIDList");
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Manage Meal Items</title>
        <%@include file="../common/widgets/cmdlinks.jsp" %>

    </head>
    <body>
        <div class="wrapper">
            <div class="body-overlay"></div>
            <%@include file="../common/widgets/sidenavbar.jsp" %>
            <div id="content" style="background-color: white">
                <%@include file="../common/widgets/topnavbar.jsp" %>
                <div class="main-content" style="background-color: white" >
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-6">
                                <h1 class="mt-2" style="color: #999"> Meal Items Management</h1>

                            </div>
                            <div class="col-6">
                                <div class="d-flex justify-content-end mt-3">
                                    <a href="new" class="btn btn-success">Add New</a>&nbsp;&nbsp;&nbsp;                                        </div>
                            </div>
                        </div>
                        <div class="row justify-content-center m-2">
                            <div class="col-md-12" style="overflow-x: auto">
                                <% if (mIDList != null && !mIDList.isEmpty()) { %>
                                <!--show table-->
                                <table class="table table-hover">
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
                                        <tr style="border-bottom: 1px solid #222222;"> 
                                           
                                            <td><%= item.getMealItemId()%></td>
                                            <td style="max-width: 100px; overflow: hidden; text-overflow: ellipsis">
                                                <%= item.getMealItemName()%>
                                            </td>

                                            <td><img src=
                                                     "<%=assetsUrl.giveUrl(request, "DBImages/") + item.getImgurl()%>" 
                                                     style="width:5rem;height:5rem"></td>


                                            <td><%= item.getDefaultGrams()%></td>
                                            <td><%= item.getDefaultPrice()%></td>
                                            <td><%= item.getDefaultCal()%></td>
                                            <td><%= item.getDefaultProtein()%></td>
                                            <td><%= item.getDefaultCarbs()%></td>
                                            <td>
                                                <a href="edit?id=<%= item.getMealItemId()%>" class="btn btn-primary" style="width: 3.5rem;font-size: .5rem">Edit</a>
                                                <a href="#" 
                                                   onclick="return confirmDelete('<%= item.getMealItemId()%>');"
                                                   class="btn btn-danger"style="width: 3.5rem;font-size: .5rem">Delete</a>

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
                                                           }).then(function (willDelete) {
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
