<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<%--@elvariable id="boardVO" type=""--%>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
	<form:hidden path="seq" />
	<table id = "edit">
<tr><td>Category:</td><td><form:input path="category"/></td></tr>
	<tr><td>Title:</td><td><form:input path="title"/></td></tr>
	<tr><td>Writer:</td><td><form:input path="writer"/></td></tr>
	<tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
</table>
	<tr><td colspan="2">
	<input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</form:form>
</body>
</html>