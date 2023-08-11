<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Spring JSP Demo</title>
</head>
<body>

<!-- Conditionally displaying the <h1> tag -->
<c:if test="${someCondition}">
    <h1 style="color:blue; text-align:center;">Welcome to the JSP and JSTL Page Demo.</h1>
</c:if>

<!-- Dynamic values for color and title -->
<h1 style="color:${colorValue}; text-align:center;">Welcome to the ${pageTitle}.</h1>

<!-- Multiple conditions for displaying title based on user roles -->
<c:choose>
    <c:when test="${role == 'admin'}">
        <h1 style="color:red; text-align:center;">Admin Dashboard</h1>
    </c:when>
    <c:when test="${role == 'user'}">
        <h1 style="color:blue; text-align:center;">User Homepage</h1>
    </c:when>
    <c:otherwise>
        <h1 style="color:gray; text-align:center;">Welcome!</h1>
    </c:otherwise>
</c:choose>

Hello, <c:out value="${name}" />!

</body>
</html>
