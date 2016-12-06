<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.zavala.whatsfordinner.Ingredients" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipe Ingredients</title>
</head>
<body>

<h1>Recipe Ingredients</h1>
<p>This recipe has these ingredients:</p>

<form name="added" action="added" method="get">
<table border="1">
	<tr>
		<th>Ingredient</th>
		<th>I don't have this ingredient</th>
	</tr>
	<c:forEach items="${recipeIng}" var="ingredient">
	<tr>
		<td>${ingredient}</td>
		<td><input type="checkbox" name="missingIngredient" value="${ingredient}">check me</td>
		<!--<td><a href="added?add=${ingredient}"><input type="checkbox" name="missingIngredient" value="${ingredient}">I don't have this ingredient</a></td> -->
	</tr>
</c:forEach>
</table>
<input type="submit" value="I don't have these items">
</form>
</body>
</html>