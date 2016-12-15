<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ninjas</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dinnerNinjaStylin.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/Ninjas.css" />
<link href="http://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet" type="text/css">

</head>

<body>
	<div class="header"></div>

	<div class="buttons">
		<a href="recipeSearchJC"> SEARCH </a> <a href="cookbook"> COOKBOOK
		</a> <a class="active" href="aboutUs"> NINJAS </a> <a href="logout">
			LOGOUT </a>
	</div>

	<div class="backgroundImage">
		<img src='<c:url value="resources/images/parchment.jpg"/>' />
	</div>

	<div class="mainBody">
		<h1>Ninjas</h1>
		<div class="box">
			<P1>Jacob Kander <br>
			<em>Java developer. <br>Additional skills in graphic
				design, video editing, and client management. <br>Passion for
				volunteerism and social justice.
			</em></P1>
		</div>
		<div class="white-box text-center">
			<img
				src="https://www.grandcircus.co/wp-content/uploads/2016/11/IMG_9357.jpg"
				class="img-responsive"></img>
		</div>
		<div class="box">
			<P1>David Trudel <br>
			<em>Java developer. <br>Avid hockey fan and player. <br>Excited
				for new opportunities in the world of development.
			</em></P1>
		</div>
		<div class="white-box text-center">
			<img
				src="https://www.grandcircus.co/wp-content/uploads/2016/11/IMG_9349.jpg"
				class="img-responsive"></img>
		</div>
		<div class="box">
			<P1>Claudia Zavala <br>
			<em>Aspiring Java developer and experienced Web Developer, <br>passionate
				for solving problems and building applications!
			</em></P1>
		</div>
		<div class="white-box text-center">
			<img
				src="https://www.grandcircus.co/wp-content/uploads/2016/11/IMG_9358.jpg"
				class="img-responsive"></img>
		</div>
		<div class="box">
			<P1>Taher Al-Shalby <br>
			<em>Hospitality industry veteran, <br>enjoys problem
				solving and working in a team environment.
			</em></P1>
		</div>
		<div class="white-box text-center">
			<img
				src="https://www.grandcircus.co/wp-content/uploads/2016/11/IMG_9371.jpg"
				class="img-responsive"></img>
		</div>
	</div>
</body>
</html>