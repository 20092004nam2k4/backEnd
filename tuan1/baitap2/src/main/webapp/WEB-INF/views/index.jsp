<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary App</title>
</head>
<body>
<h2>Dictionary App</h2>

<form action="/search" method="get">
    Word: <input type="text" name="word" required/>
    <input type="submit" value="Search"/>
</form>
<c:if test="${not empty vietnameseMeaning}">
    <h3>Search Result for "${searchedWord}":</h3>
    <p>Vietnamese Meaning: ${vietnameseMeaning}</p>
</c:if>

</body>
</html>
