<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign in to Dinner Ninja</title>
</head>
<body>
	<h1>${retry}</h1>
	<form name="signIn" action="signIn" method="GET">
		<br>Email:<input type="text" name="eml"> 
		<br>Password:<input type="password" name="pass"> 
		<br> <input type="submit" value="sign in">
	</form>
<br><a href="home">Back to Home</a>
</body>
</html>