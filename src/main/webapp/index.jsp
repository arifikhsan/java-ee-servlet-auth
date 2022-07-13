<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Auth using servlet" %></h1>
<p>User: admin, pass: 123456</p>
<p>Current time is: <%= LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss")) %></p>

<div>
    <h2>Login Form</h2>
    <form action="${pageContext.request.contextPath}/auth/login" method="post">
        <label>
            <input type="text" name="username" placeholder="username" />
        </label>
        <br />
        <label>
            <input type="password" name="password" placeholder="password" />
        </label>
        <br />
        <button type="submit">Login</button>
    </form>
</div>
</body>
</html>
