<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Spring JSP Demo</title>
</head>
<body>
<h1 style="color:blue; text-align:center;">Welcome to the JSP and JSTL Page Demo.</h1>
    Hello, <c:out value="${name}" />!
</body>
</html>
