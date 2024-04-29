<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>CMS Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="common/styles/custom.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">
    <style>
        /* Add custom styles here */
    </style>
</head>
<body>
<div class="wrapper">
    <div class="body-overlay"></div>
    <%@include file="common/widgets/sidenavbar.jsp" %>
    <div id="content">
        <%@include file="common/widgets/topnavbar.jsp" %>
        <div class="main-content">
            <div class="container-fluid">
                <% if (request.getParameter("page") == null || request.getParameter("page").equals("dashboard")) { %>
                    <%@include file="jsp/home/homeCategoryRow.jsp" %>
                <% } %>

                <% if (request.getParameter("page") != null && request.getParameter("page").equals("users")) { %>
                    <%@include file="jsp/users/usersRow.jsp" %>
                <% } %>

                <% if (request.getParameter("page") != null && (request.getParameter("page").equals("defaultMeals") || request.getParameter("page").equals("customMeals") || request.getParameter("page").equals("mealitems"))) { %>
                    <jsp:include page="/mealItems/show" />
                <% } %>
            </div>
        </div>
        <div class="container-fluid">
            <br><br> <!-- Add some spacing -->
        </div>
    </div>
</div>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $(".xp-menubar").on('click', function () {
            $('#sidebar').toggleClass('active');
            $('#content').toggleClass('active');
        });
        $(".xp-menubar,.body-overlay").on('click', function () {
            $('#sidebar,.body-overlay').toggleClass('show-nav');
        });
    });
</script>
</body>
</html>
