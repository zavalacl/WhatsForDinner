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
<P> <a href="http://localhost:8080/whatsfordinner/signIn">Log In!</a> </P>
<br><P><a href="http://localhost:8080/whatsfordinner/resources/NewCustomer.html">Sign Up!</a></P> 
	<form name="login" action="login" onSubmit="return val()" method="GET">
		<br>Email:<input type="text" name="email"> <br>Password:<input
			type="password" name="pwd1"> <br>Re-Enter Password:<input
			type="password" name="pwd2"> <br> <input type="submit"
			value="submit">
	</form>


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