<%--
  Created by IntelliJ IDEA.
  User: ES
  Date: 1/12/2021
  Time: 10:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/languages">Dashboard</a>

<h1><c:out value="${language.name}"/></h1>
<h1><c:out value="${language.creator}"/></h1>
<h1><c:out value="${language.version}"/></h1>
<p><a href="/languages/edit/${language.id}">edit</a></p>
<form action="/language/${language.id}" method="post" >
    <input type="submit" name="_method" value="Delete">
</form>


</body>
</html>
