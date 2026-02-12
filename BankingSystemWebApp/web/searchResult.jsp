<%-- 
    Document   : searchResult
    Created on : 11 Feb 2026, 1:07:25 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Account Results</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${not empty account}">
               <p><strong>ID:</strong> ${account.id}</p>
               <p><strong>Full Name:</strong> ${account.fullName}</p>
                <p><strong>Balance:</strong> ${account.balance}</p>
                <p><strong>Creation Date:</strong> ${account.creationDate}</p>
             </c:when>

            <c:otherwise>
             <p style="color:red;">Account not found.</p>
            </c:otherwise>
        </c:choose>

        <br>
        <a href="menu.jsp">Back to Menu</a>

    </body>
</html>
