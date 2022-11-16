<%-- 
    Document   : index
    Created on : Nov 6, 2022, 9:23:19 AM
    Author     : Mr. Vishal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <%@include file="normal_navbar.jsp" %>
        
            <center>
                <br>
                <br>
                <br>
                <br>
               
                
                <h1>Admin Login Page</h1>
                <hr>
                
                <form action="AdminSer" method="post">
                    <input type="text" name="txtuser" placeholder="Enter UserID"/>
                    <br>
                    <br>
                    <input type="text" name="txtpass" placeholder="Enter Password"/>
                    <br>
                    <br>
                    <input type="submit" value="Login"/>
                    <br>
                </form>
                
            </center>
        
        
    </body>
</html>
