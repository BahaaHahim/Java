<%@ page isErrorPage="true" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/language/${language.id}" method="post" >
    <input type="submit" name="_method" value="Delete">
</form>
    <a href="/languages">DashBoard</a>

    <h1>Edit Language</h1>
    <form:form action="/languages/${language.id}" method="post" modelAttribute="language">
    <input type="hidden" name="_method" value="put">
        <p>
            <form:label path="name">Name</form:label>
            <form:errors path="name"/>
            <form:input path="name"/>
        </p>
        <p>
            <form:label path="creator">Creatir</form:label>
            <form:errors path="creator"/>
            <form:input path="creator"/>
        </p>
        <p>
            <form:label path="version">Version</form:label>
            <form:errors path="version"/>
            <form:input path="version"/>
        </p>
    <input type="submit" value="Submit"/>
    </form:form>

</body>
</html>
