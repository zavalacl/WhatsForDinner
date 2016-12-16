<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Dinner Ninja</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Dinner Ninja</title>

	<!-- Bootstrap Core CSS -->
    		
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" />
    
    <!-- Custom Fonts -->
     
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css" type="text/css"/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS --> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.css" type="text/css"/>

    <!-- Theme CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/creative.min.css" type="text/css"/>
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/homepage.css" />
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link href="https://fonts.googleapis.com/css?family=Mirza" rel="stylesheet">

</head>

<body id="page-top">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
    
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="home">Dinner Ninja</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="Ninjas.jsp">Meet The Ninjas</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <header>
		<div class="header-content">
			<div class="bgVid">
			<video autoplay loop id="video-background" muted>
				<source
					src="${pageContext.request.contextPath}/resources/cooking.mp4"
					type="video/mp4">
			</video>
			</div>
			<div class="header-content-inner">
                <h1 id="homeHeading">Welcome to Dinner Ninja</h1>
                <hr>
                <p style="font-style: italic;">Slicing through your dinner dilemmas!</p>
                <form name="signIn" action="signIn" method="GET">
		
					<p class="loginInfo">Email:<br /><input type="text" name="eml"></p>
					<p class="loginInfo">Password:<br /><input type="password" name="pass"></p>
					
					<br><input class="btn btn-primary btn-xl" type="submit" value="Log In">
							
				</form>

				<p>
					Don't have an account?<a
						href="${pageContext.request.contextPath}/resources/NewCustomer.html">Sign
						Up!</a>
				</p>
			</div>
		</div>
	</header>


    <script src="vendor/jquery/jquery.min.js"></script> -->

	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>


	<!-- Bootstrap Core JavaScript 
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>-->

	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>


	<!-- Plugin JavaScript 
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script> 
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    -->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    

    <!-- Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/js/creative.min.js"></script>

</body>
</html>