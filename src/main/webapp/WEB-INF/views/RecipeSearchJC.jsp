<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.zavala.whatsfordinner.Ingredients"%>
<%@page import="java.util.*"%>

<html>

<head>
<title>Dinner Ninja</title>
</head>
<body>
	<h1>Welcome to the Dinner Ninja App</h1>

	<form name="ingredients" action="list" method="GET">
		<br>Enter an ingredient you want to use:<input type="text"
			name="food"> <br>
		<input type="submit" value="Add">
	</form>

	<p>
		Ingredients:
		<c:forEach items="${ing.display() }" var="item">
			<li>${item}</li>
		</c:forEach>
	</p>

	<p>
		-The label(s) for this recipe search:<br> ${WhatIsTheLabel}
	</p>



</body>
</html>