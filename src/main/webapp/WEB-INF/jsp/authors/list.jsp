<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Authors List</title>
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
        <h2>Authors</h2>
        <a href="/authors/new" class="btn">Add New Author</a>
        <table>
            <thead>
                <tr>
                    <th>ID</th><th>Name</th><th>Email</th><th>Country</th><th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${authors}" var="author">
                    <tr>
                        <td>${author.authorId}</td>
                        <td>${author.name}</td>
                        <td>${author.email}</td>
                        <td>${author.country}</td>
                        <td><a href="/authors/edit/${author.authorId}" class="btn btn-edit">Edit</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>