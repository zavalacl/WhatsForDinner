<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>
<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Grocery List</title>
</head>
<body>

<h1>Your Grocery List:</h1>
<!-- <table border ="1">
	<tr>
		<th>Ingredients</th>
	<tr>
	<c:forEach items="${addedIng}" var="added">
	<tr>
		<td>${added}</td>
	</tr>
</c:forEach>
</table> -->

<ul>
<c:forEach var="ai" items="${addedIng}">
	<li>${ai}</li>
</c:forEach>
</ul>
</body>
</html>