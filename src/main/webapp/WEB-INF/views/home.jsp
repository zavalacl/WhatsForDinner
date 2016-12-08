<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy"%>
<%@page import="java.util.*"%>

<html>

<head>
<title>Dinner Ninja</title>
</head>

<body>

	<h1>Welcome to Dinner Ninja</h1>

	<form name="signIn" action="signIn" method="GET">
		<fieldset>
			<legend>Log In!</legend>
			<br>Email:<input type="text" name="eml"> 
			<br>Password:<input type="password" name="pass"> 
			<br> <input type="submit" value="sign in">
		</fieldset>
	</form>

	<br>
	<P>
		<a href="http://localhost:8080/whatsfordinner/resources/NewCustomer.html">Sign Up!</a>
	</P>

</body>
</html>