<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>

<head>
<title>Dinner Ninja</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/forms.css" />
	<link rel="stylesheet" 
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="${pageContext.request.contextPath}/resources/js/forms.js"></script>
</head>

<body>

	<h1>Welcome to Dinner Ninja</h1>

	<form class="login" action="signIn" method="GET">
  
  <fieldset>
    
  	<legend class="legend">Login</legend>
    
    <div class="input">
    	<input type="email" placeholder="Email" required name="eml"/>
      <span><i class="fa fa-envelope-o"></i></span>
    </div>
    
    <div class="input">
    	<input type="password" placeholder="Password" required name="pass"/>
      <span><i class="fa fa-lock"></i></span>
    </div>
    
    <button type="submit" class="submit"><i class="fa fa-long-arrow-right"></i></button>
    
  </fieldset>
  
  <div class="feedback">
  	login successful <br />
    redirecting...
  </div>
  
</form>

	<br>
	<P>
		<a
			href="${pageContext.request.contextPath}/resources/NewCustomer.html">Sign Up!</a>
	</P>

</body>
</html>