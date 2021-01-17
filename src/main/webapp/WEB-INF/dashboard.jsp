<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="js/time.js"></script>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>Dashboard Page</title>
</head>
<body>
<h1>Welcome, <c:out value="${user.name}" />!</h1>
<p style="color: red;"><c:out value="${error}" /></p>
<table class="table table-dark">
	<thead>
	<tr>
		<th scope="col">Show</th>
		<th scope="col">Network</th>
		<th scope="col">AVG Rating</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${shows}" var="s">
		<tr>
			<td><a href="/shows/${s.id}">${s.title}</a></td>
			<td>${s.network}</td>
			<td>${s.avgRating}</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<p><a class="nav-link" href="/shows/new"><button class="btn-primary">Add Show</button></a></p>
<p><a class="nav-link" href="/logout"><button class="btn-primary">Log Out</button></a></p></p>

</body>
</html>