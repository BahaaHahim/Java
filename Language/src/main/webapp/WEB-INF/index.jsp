<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head> LanguageAss</head>

<body>
<p>list of languages </p>
<table>
    <thead>
    <tr>
        <th>Name</th>
        <th>Creator</th>
        <th>Version</th>
        <th>Action</th>
    </tr>
    </thead>
    <c:forEach items="${languages}" var="language">
        <tr>
            <td><a href="/language/${language.id}/show"><c:out value="${language.name}"/></a></td>
            <td><c:out value="${language.creator}"/></td>
            <td><c:out value="${language.version}"/></td>
            <td>
                    <%--            <a href="/language/${language.id}/delete">delete</a>--%>
                <form:form action="/language/${language.id}" method="delete" >
                    <input type="hidden" value="delete">
                    <input type="submit" value="delete">
                </form:form>
                <a href="/languages/edit/${language.id}">edit</a></td>
            </td>
        </tr>
    </c:forEach>
</table>
<form:form action="/languages" method="post" modelAttribute="language">
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

