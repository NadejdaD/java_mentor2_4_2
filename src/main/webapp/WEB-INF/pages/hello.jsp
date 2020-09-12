<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
<div align="center" style="margin-top: 30px">
    <h2>Hello, User!</h2>
<a href="<c:url value="/logout" />">Logout</a>
</div>
</body>
</html>

