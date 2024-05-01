

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.teamhydra.util.assetsUrl"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request, "JSP/Admin/common/styles/custom.css")%>">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">
        <title>Meal Form</title>
        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
                overflow-y: auto; 
                max-height: 75vh; 
                border-radius: 10px;
                border: 1px solid black;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                padding: 20px;
                background-color: #fff;
            }
            /* Hide scrollbar for Chrome, Safari and Opera */
            .custom-form::-webkit-scrollbar {
                width: 0;
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
            <div class="body-overlay"  style="overflow-y: hidden;position: fixed;top: 0;left: 0;width: 100%">
                <%@include file="../common/widgets/sidenavbar.jsp" %>
                <div id="content" style="overflow-y: auto">
                    <%@include file="../common/widgets/topnavbar.jsp" %>
                    <div class="main-content">
                        <div class="container-fluid" style="overflow-y: auto">
                            <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

                            <div class="container">
                                <div class="row">
                                    <div class="col-6">
                                        <h2 class="mt-2" style="color: #999">${MealItem != null ? 'Update Meal Item' : 'Add new Meal Item'}</h1>

                                    </div>
                                    <div class="col-6">
                                        <div class="d-flex justify-content-end mt-2">
                                            <a class="btn btn-dark" href="show" style="color: white; text-decoration:none">All Items</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Rest of your content -->
                            </div>

                            <div class="scrollable-form mt-5">
                                <form class="custom-form" 
                                      action="${MealItem != null ? 'update'
                                                : 'insert'}" method="post" enctype="multipart/form-data"> 
                                    <div class="row">

                                        <div class="col-md-6">
                                            <input type="hidden" name="mealItemId"
                                                   value="${MealItem != null ? MealItem.mealItemId : 'hello'}">
                                            <div class="form-group">
                                                <label for="mealItemName">Meal Item Name</label>
                                                <input type="text" class="form-control" id="mealItemName"
                                                       name="mealItemName" placeholder="Enter Meal Item Name"
                                                       required value="${MealItem != null ? MealItem.mealItemName : ''}">
                                            </div>


                                            <%
                                                String imageUrlDB = null;
                                                if (request.getAttribute("MealItem") != null) {
                                                    com.dietme.mealItems.MealItems mealItem = (com.dietme.mealItems.MealItems) request.getAttribute("MealItem");
                                                    imageUrlDB = mealItem.getImgurl();
                                                }
                                            %>

                                            <% if (imageUrlDB != null) {%>
                                            <img src="<%= assetsUrl.giveUrl(request, "DBImages/") + imageUrlDB%>" style="width:5rem;height:5rem">

                                            <% }%>

                                            <div class="form-group">
                                                <label for="imgUrl">Add Image</label>
                                                <input type="file" class="form-control" id="imgUrl" name="imgUrl">


                                                <input type="hidden" name="existingImageUrl" value="<%= imageUrlDB%>">

                                            </div>
                                            <div class="form-group">
                                                <label for="defaultGram">Default Gram</label>
                                                <input type="number" class="form-control" id="defaultGram"
                                                       name="defaultGrams" placeholder="Enter Default Gram" required
                                                       value="${MealItem != null ? MealItem.defaultGrams : ''}"
                                                       >
                                            </div>
                                            <div class="form-group">
                                                <label for="defaultPrice">Default Price</label>
                                                <input type="number" class="form-control" id="defaultPrice"
                                                       name="defaultPrice" placeholder="Enter Default Price(RS)" required
                                                       value="${MealItem != null ? MealItem.defaultPrice : ''}"
                                                       >
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="defaultCalories">Default Calories</label>
                                                <input type="number" class="form-control" id="defaultCalories"
                                                       name="defaultCalories" placeholder="Enter Default Calories(cal)"
                                                       required value="${MealItem != null ? MealItem.defaultCal : ''}">
                                            </div>
                                            <div class="form-group">
                                                <label for="defaultProtein">Default Protein</label>
                                                <input type="number" class="form-control" id="defaultProtein"
                                                       name="defaultProteins" placeholder="Enter Default Protein(grams)"
                                                       required value="${MealItem != null ? MealItem.defaultProtein : ''}">
                                            </div>
                                            <div class="form-group">
                                                <label for="defaultCarbs">Default Carbs</label>
                                                <input type="number" class="form-control" id="defaultCarbs"
                                                       name="defaultCarbs" placeholder="Enter Default Carbs(grams)"
                                                       required value="${MealItem != null ? MealItem.defaultCarbs : ''}">
                                            </div>
                                            <div class="form-group">
                                                <label for="description">Description</label>
                                                <textarea cols="10" rows="20" class="form-control" id="description" name="description"
                                                          placeholder="Additional Description" style="height: 100px;"

                                                          >${MealItem != null ? MealItem.description : ''}</textarea>
                                            </div>
                                            <button type="submit" class="btn btn-success btn-block">${MealItem != null ? 'update' : 'Add'}</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div> 
                    </div>
                </div>

                <!-- Include Bootstrap JS (Optional) -->

                <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                <link rel="stylesheet" href="alert/dist/sweetalert.css">
                <script>
                    var status = document.getElementById("status").value;
                    if (status == "Insertsucsess") {
                        swal("Success!", "Successfully insert Meal Item", "success")
                    } else if (status === "InsertFailed") {
                        swal("Error!", "Error in inserting Meal Item", "error")
                    } else if (status === "Updatesucsess") {
                        swal("Udate Success!", "Successfully insert Meal Item", "success")
                    } else if (status === "UpdateFailed") {
                        swal("Error!", "Error in updating Meal Item", "error")
                    }
                </script>

                </body>
                </html>