<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Form</title>
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
        <h2>${empty book.bookId ? 'Add New' : 'Edit'} Book</h2>
        <form:form action="/books/save" modelAttribute="book" method="POST">
            <form:hidden path="bookId"/>
            <div class="form-group">
                <label>Title:</label>
                <form:input path="title" />
                <form:errors path="title" cssClass="error"/>
            </div>
            <div class="form-group">
                <label>Genre:</label>
                <form:input path="genre" />
            </div>
            <div class="form-group">
                <label>Price:</label>
                <form:input path="price" type="number" step="0.01" />
                <form:errors path="price" cssClass="error"/>
            </div>
            <div class="form-group">
                <label>Published Date:</label>
                <form:input path="publishedDate" type="date" />
                <form:errors path="publishedDate" cssClass="error"/>
            </div>
            <div class="form-group">
                <label>Author:</label>
                <form:select path="author.authorId">
                    <form:option value="" label="--Select Author--"/>
                    <form:options items="${authors}" itemValue="authorId" itemLabel="name"/>
                </form:select>
                <form:errors path="author" cssClass="error"/>
            </div>
            <button type="submit" class="btn">Save</button>
        </form:form>
    </div>
</body>
</html>