<%-- 
    Document   : header.jsp
    Created on : Apr 18, 2024, 3:19:33 PM
    Author     : kavin
--%>

<%@page import="com.dietme.utill.PathProvider"%>
<!-- Sidebar  -->
<nav id="sidebar">
    <div class="sidebar-header">
        <h3><img src="common/assests/logo.png" class="img-fluid"/><span>Diet Me</span></h3>
    </div>
    <ul class="list-unstyled components">

        <div class="small-screen navbar-display">
            <li class="dropdown d-lg-none d-md-block d-xl-none d-sm-block">
                <a href="#homeSubmenu0" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <i class="material-icons">notifications</i><span> 4 notification</span></a>
                <ul class="collapse list-unstyled menu" id="homeSubmenu0">

                </ul>    
            </li>

            <li class="dashboard">
                <a href="<%=PathProvider.giveUrl(request, "index.jsp")%>" class="<%= request.getParameter("page") == null || request.getParameter("page").equals("dashboard") ? "active" : "" %>">
                    <i class="material-icons">dashboard</i><span>Dashboard</span></a>
            </li>

            <li class="d-lg-none d-md-block d-xl-none d-sm-block">
                <a href="#"><i class="material-icons">apps</i><span>apps</span></a>
            </li>

            <li class="d-lg-none d-md-block d-xl-none d-sm-block">
                <a href="#"><i class="material-icons">person</i><span>user</span></a>
            </li>

            <li class="d-lg-none d-md-block d-xl-none d-sm-block">
                <a href="#"><i class="material-icons">settings</i><span>setting</span></a>
            </li>
        </div>

        <li class="dropdown">
            <a href="mealItems/show" class="<%= request.getParameter("page") != null && request.getParameter("page").equals("users") ? "active" : "" %>">
                <i class="material-icons">person</i><span>Users</span>
            </a>
        </li>

        <li class="dropdown">
            <a href="test" class="<%= request.getParameter("page") != null && request.getParameter("page").equals("defaultMeals") ? "active" : "" %>">
                <i class="material-icons">fastfood</i><span>Default Meals</span>
            </a>
        </li>

        <li class="dropdown">
            <a href="index.jsp?page=customMeals" class="<%= request.getParameter("page") != null && request.getParameter("page").equals("customMeals") ? "active" : "" %>">
                <i class="material-icons">create</i><span>Custom Meals</span>
            </a>
        </li>

        <li class="dropdown">
            <a href="index.jsp?page=mealitems" class="<%= request.getParameter("page") != null && request.getParameter("page").equals("mealitems") ? "active" : "" %>">
                <i class="material-icons">restaurant_menu</i><span>Meal Contains</span>
            </a>
        </li>

        <li class="dropdown">
            <a href="index.jsp?page=orders" class="<%= request.getParameter("page") != null && request.getParameter("page").equals("orders") ? "active" : "" %>">
                <i class="material-icons">shopping_cart</i><span>Orders</span>
            </a>
        </li>

        <li class="dropdown">
            <a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false" >
                <i class="material-icons">payment</i><span>Payments</span>
            </a>
        </li>

        <li class="dropdown">
            <a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false" >
                <i class="material-icons">message</i><span>Customer Messages</span>
            </a>
        </li>
    </ul>
</nav>
