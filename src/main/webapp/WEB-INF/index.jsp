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
    <title>Index Page</title>
</head>
<body>
	<div class="container mt-5">
		<div class="row">
			<div class="col-xs-6 col-md-6">
			
				<h1>Register</h1>
			    <p style="color: red;"><form:errors path="user.*"/></p>
			    
			    <form:form method="POST" action="/users" modelAttribute="user">
			        <p>
			            <form:label path="name">Name:</form:label>
			            <form:input type="text" path="name"/>
			        </p>
			        <p>
			            <form:label path="email">Email:</form:label>
			            <form:input type="email" path="email"/>
			        </p>
			        <p>
			            <form:label path="password">Password:</form:label>
			            <form:password path="password"/>
			        </p>
			        <p>
			            <form:label path="passwordConfirmation">Password Confirmation:</form:label>
			            <form:password path="passwordConfirmation"/>
			        </p>
			        <input type="submit" value="Register!"/>
			    </form:form>
			</div>
		
		
			<div class="col-xs-6 col-md-6">
			    <h1>Log In</h1>
			    <p style="color: red;"><c:out value="${error}" /></p>
			    
			    <form method="post" action="/login">
			        <p>
			            <label for="email">Email</label>
			            <input type="text" id="email" name="email"/>
			        </p>
			        <p>
			            <label for="password">Password</label>
			            <input type="password" id="password" name="password"/>
			        </p>
			        <input type="submit" value="Login!"/>
			    </form>
			</div>
		</div>
    </div>

</body>
</html>