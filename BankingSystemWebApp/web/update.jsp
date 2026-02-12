<%-- 
    Document   : update
    Created on : 11 Feb 2026, 12:27:53 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
        <h2>Update Account</h2>

        <form action="UpdateAccount" method="POST">
            ID: <input type="text" name="id"><br>
            Full Name: <input type="text" name="fullName"><br>
            Email: <input type="text" name="email"><br>
            Balance: <input type="number" step="0.01" name="balance"><br>
            <input type="submit" value="Update">
        </form>

    </body>
</html>
