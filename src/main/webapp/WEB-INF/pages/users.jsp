<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <div align="center" style="margin-top: 30px">
    <title>Users</title>
    <h2>Users</h2>
    </div>
</head>
<body>
<div align="center">
<style> a {text-decoration: none;}</style>
    <table align="center" cellpadding="5">
        <tr>
            <td><a href="<c:url value="/user" />">My page</a></td>
            <td><a href="<c:url value="/admin/addUser" />">Add new user</a></td>
            <td><a href="<c:url value="/logout" />">Logout</a></td>
        </tr>
    </table><br>

<table border="1" cellpadding="5">
    <tr>
        <th>ID</th>
        <th>Login</th>
        <th>Password</th>
        <th>Roles</th>
        <th>Action</th>
    </tr>
<c:forEach var="tmp" items="${userList}">
    <tr>
        <td align="center">${tmp.id}</td>
        <td>${tmp.login}</td>
        <td>${tmp.password}</td>
        <td><c:forEach var="role" items="${tmp.roles}">
            <p>${role.name}</p>
            </c:forEach>
        </td>
        <td>
        <a href="/admin/edit/${tmp.id}">Edit</a>
        <a href="/admin/delete/${tmp.id}">Delete</a>
        </td>
    </tr>
</c:forEach>
</table>
</div>
</body>
</html>
