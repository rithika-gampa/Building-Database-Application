<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Author Form</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
    <nav>
        <div>Library System</div>
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/authors">Authors</a></li>
            <li><a href="/books">Books</a></li>
        </ul>
    </nav>
    <div class="container">
        <h2>${empty author.authorId ? 'Add New' : 'Edit'} Author</h2>

        <c:if test="${not empty error}">
            <div class="error" style="color: red; margin-bottom: 10px;">${error}</div>
        </c:if>

        <form:form action="/authors/save" modelAttribute="author" method="POST">
            <form:hidden path="authorId"/>

            <div class="form-group">
                <label>Name:</label>
                <form:input path="name" />
                <form:errors path="name" cssClass="error" style="color: red;"/>
            </div>

            <div class="form-group">
                <label>Email:</label>
                <form:input path="email" />
                <form:errors path="email" cssClass="error" style="color: red;"/>
            </div>

            <div class="form-group">
                <label>Country:</label>
                <form:input path="country" />
            </div>

            <button type="submit" class="btn">Save</button>
        </form:form>
    </div>
</body>
</html>