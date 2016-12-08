<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy"%>
<%@page import="java.util.*"%>

<html>

<head>
<title>Dinner Ninja Search</title>
</head>

<body>

	<h1>Search now, Ninja!</h1>

	<form name="ingredients" action="list" method="GET">
		<br>Enter an ingredient you want to use: <br>
		<input type="text" name="food"> <br> <input type="submit"
			value="Add">
	</form>

	<p>
		Ingredients:
		<c:forEach items="${ing.display() }" var="item">
			<li>${item}</li>
		</c:forEach>
	</p>

	<p>
		Here are the the recipes that match your search:

		<br> ${WhatIsTheLabel0} 
		<br> ${WhatIsTheLabel1} 
		<br> ${WhatIsTheLabel2}
	</p>

</body>
</html>