<%-- 
    Document   : listResult
    Created on : 11 Feb 2026, 1:22:18 PM
    Author     : hp
--%>

<%@page import="java.util.List"%>
<%@page import="entities.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Holders</title>
    </head>
    <body>
       <h2>List of Account Holders</h2>

<%
    List<Account> accounts = (List<Account>) request.getAttribute("accounts");
%>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Full Name</th>
        <th>Balance</th>
        <th>Creation Date</th>
    </tr>

<%
    if (accounts != null && accounts.size() > 0) {

        for (int i = 0; i < accounts.size(); i++) {

            Account acc = accounts.get(i);
%>

    <tr>
        <td><%= acc.getId() %></td>
        <td><%= acc.getFullName() %></td>
        <td><%= acc.getBalance() %></td>
        <td><%= acc.getCreationDate() %></td>
    </tr>

<%
        }

    } else {
%>

    <tr>
        <td colspan="4">No account holders found.</td>
    </tr>

<%
    }
%>

</table>

<br>
<a href="menu.jsp">Back to Menu</a>

    </body>
</html>
