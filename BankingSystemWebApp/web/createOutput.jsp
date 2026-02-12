<%-- 
    Document   : createOutput
    Created on : 11 Feb 2026, 1:04:26 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account Results</title>
    </head>
    <body>
        <h2>Account Successfully Created</h2>

        <p><strong>ID:</strong> ${account.id}</p>
        <p><strong>Full Name:</strong> ${account.fullName}</p>
        <p><strong>Balance:</strong> ${account.balance}</p>
        <p><strong>Creation Date:</strong> ${account.creationDate}</p>

        <br>
        <a href="menu.jsp">Back to Menu</a>
    </body>
</html>
