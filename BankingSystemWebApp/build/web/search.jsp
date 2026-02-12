<%-- 
    Document   : search
    Created on : 11 Feb 2026, 12:26:43 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>
    <body>
        <h2>Search Account</h2>

        <form action="SearchAccount" method="POST">
             ID: <input type="text" name="id">
            <input type="submit" value="Search">
        </form>

    </body>
</html>
