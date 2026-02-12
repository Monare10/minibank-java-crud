<%-- 
    Document   : create
    Created on : 11 Feb 2026, 12:24:51 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account</title>
    </head>
    <body>
        <h2>Create Account</h2>

        <form action="CreateAccount" method="POST">
            ID: <input type="text" name="id"><br>
            Full Name: <input type="text" name="fullName"><br>
            Email: <input type="text" name="email"><br>
            Balance: <input type="number" step="0.01" name="balance"><br>
            <input type="submit" value="Create">
        </form>

    </body>
</html>
