<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Books List</title>
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
        <h2>Books Directory</h2>
        <a href="/books/new" class="btn">Add New Book</a>
        <table>
            <thead>
                <tr>
                    <th>ID</th><th>Title</th><th>Genre</th><th>Price</th><th>Author</th><th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${books}" var="book">
                    <tr>
                        <td>${book.bookId}</td>
                        <td>${book.title}</td>
                        <td>${book.genre}</td>
                        <td>${book.price}</td>
                        <td>${book.author.name}</td>
                        <td><a href="/books/edit/${book.bookId}" class="btn btn-edit">Edit</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>