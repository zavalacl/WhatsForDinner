<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign in to Dinner Ninja</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/forms.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="${pageContext.request.contextPath}/resources/js/forms.js"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dinnerNinjaStylin.css" />

<link href="http://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet" type="text/css">

</head>

<body>

	<div class="header"></div>

	<div class="logo">
		<img src='<c:url value="resources/images/DinnerNinjaLogo.png"/>' />
	</div>

	<div class="navButtons">
		<a href="recipeSearchJC"> SEARCH </a> <a href="cookbook"> COOKBOOK
		</a> <a href="aboutUs"> NINJAS </a> <a href="logout"> LOGOUT </a>
	</div>

	<div class="mainBody">
		<h1>${retry}</h1>

		<form class="login" action="signIn" method="GET">

			<fieldset>

				<legend class="legend">Login</legend>

				<div class="input">
					<input type="email" placeholder="Email" required name="eml" /> <span><i
						class="fa fa-envelope-o"></i></span>
				</div>

				<div class="input">
					<input type="password" placeholder="Password" required name="pass" />
					<span><i class="fa fa-lock"></i></span>
				</div>

				<button type="submit" class="submit">
					<i class="fa fa-long-arrow-right"></i>
				</button>

			</fieldset>

			<div class="feedback">
				login successful <br /> redirecting...
			</div>

		</form>
		<br> <a href="home">Back to Home</a>
	</div>
</body>
</html>