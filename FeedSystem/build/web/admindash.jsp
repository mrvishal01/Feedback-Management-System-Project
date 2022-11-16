<%-- 
    Document   : index
    Created on : Nov 6, 2022, 9:23:19 AM
    Author     : Mr. Vishal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css" type="text/css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
            <a class="navbar-brand" href="admindash.jsp"> <span class="fa fa-graduation-cap"></span> Feedback System </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="admindash.jsp"> <span class="fa fa-home"></span> Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="adminlogin.jsp"> <span class="fa fa-home"></span> Logout <span class="sr-only">(current)</span></a>
                    </li>

                    <!--            <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="	fa fa-check-square-o"></span> Categories
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#">Programming Language</a>
                                        <a class="dropdown-item" href="#">Project Implementation</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Data Structure</a>
                                    </div>
                                </li>-->

                    <!--            <li class="nav-item">
                                    <a class="nav-link" href="about.jsp"> <span class="	fa fa-address-card-o"></span> About us </a>
                                </li>-->
                    <!--            <li class="nav-item">
                                    <a class="nav-link" href="login_page.jsp"> <span class="fa fa-user-circle "></span> Login</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="register_page.jsp"> <span class="fa fa-user-plus "></span> Sign up</a>
                                </li>-->

                </ul>
                <!--        <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
                        </form>-->
            </div>
        </nav>    
    <center>
        <h1>Admin Dashboard</h1>
        <h1>View Feedback Data</h1>
        <hr>
        <br>
        <table border="1" width="700">
            <tr><th>ID</th><th>BATCH</th><th>FACULTY</th><th>DESC</th><th>RATING</th></tr>
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedsystem", "root", "");
                        Statement st = con.createStatement();
                        ResultSet x = st.executeQuery("select * from  `feedback`");
                        while (x.next()) {
                            out.print("<tr><td>" + x.getInt(1) + "</td><td>" + x.getString(2) + "</td><td>" + x.getString(3) + "</td><td>" + x.getString(4) + "</td><td>" + x.getInt(5) + "</td></tr>");
                        }
                    %>
    </center>
</table>

</body>
</html>
