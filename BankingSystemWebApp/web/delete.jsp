<%-- 
    Document   : delete
    Created on : 11 Feb 2026, 12:29:32 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
    <body>
        <h2>Delete Account</h2>

        <form action="DeleteAccount" method="POST">
            ID: <input type="text" name="id">
            <input type="submit" value="Delete">
        </form>

    </body>
</html>
