<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		  rel="stylesheet"
		  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		  crossorigin="anonymous">
	<style>
		.user-form {
			display: inline-block;
			width: 45%;
			vertical-align: top;
			margin: 20px;
		}
		.event-details-side {
			display: inline-block;
			width: 45%;
			vertical-align: top;
			margin: 20px;
		}
		.messages{
			border: solid black;
			min-height: 10px;
			max-height: 200px;
			overflow-y: scroll;
		}
		.delete-form {
			display: inline-block;
		}
	</style>
	<meta charset="ISO-8859-1">
	<title>Event Planner</title>
</head>
<body>
<h2>Register</h2>

<div class="container">
	<form:form class="user-form" action="/users" method="post" modelAttribute="user">
		<div class="form-group">
			<form:label path="name"> Name</form:label>
			<form:errors path="name"/>
			<form:input class="form-control" path="name" />
		</div>

		<div class="form-group">
			<form:label path="email">Email</form:label>
			<form:errors path="email"/>
			<form:input type="email" class="form-control" path="email" />
		</div>

		<div class="form-group">
			<form:label path="password">Password</form:label>
			<form:errors path="password"/>
			<form:password class="form-control" path="password" />
		</div>
		<div class="form-group">
			<form:label path="passwordConfirmation">Confirm Password</form:label>
			<form:errors path="passwordConfirmation"/>
			<form:password class="form-control" path="passwordConfirmation" />
		</div>
		<input type="submit" value="Register!"/>
	</form:form>
	<form action="/login" class="user-form" method="post">
		<h2>Login</h2>
		<p style="color: red;"><c:out value="${error}" /></p>
		<div class="form-group">
			<label for="email">Email</label>
			<input type="email" name="email" id="email" class="form-control" />
		</div>
		<div class="form-group">
			<label for="password">Password</label>
			<input type="password" name="password" id="password" class="form-control" />
		</div>
		<input type="submit" value="Login!"/>
	</form>
</div>
</body>
</html>
