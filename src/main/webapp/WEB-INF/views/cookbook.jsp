<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cookbook</title>
</head>
<body>
<h1>My cookbook:</h1>

	<table border="1">
		<tr>
			<th>Image</th>
			<th>Label</th>
			<th>Source</th>
			<th>Recipe Url</th>
			<th>Ingredients</th>
		</tr>

		<c:forEach items="${cookbook}" var="cbk">
		<tr>
				<td><img src="${cbk.recImage}" height="100px" width="100px"></td>
				<td>${cbk.recLabel}</td>
				<td>${cbk.recSource}</td>
				<td><a href="${cbk.recURL}" target="_blank">View recipe instructions</a></td>
				<td>${cbk.recIngredients}</td>
			
		</tr>
		</c:forEach>
		
	</table>
	

</body>
</html>