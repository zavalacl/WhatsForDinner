<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.zavala.whatsfordinner.IngredientsToBuy"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Dinner Ninja</title>
<<<<<<< HEAD

 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dinner Ninja</title>

    <!-- Bootstrap Core CSS 
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
    		
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" />
    
    <!-- Custom Fonts 
     <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> -->
     
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css" type="text/css"/>
    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS 
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet"> -->
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.css" type="text/css"/>

    <!-- Theme CSS 
    <link href="css/creative.min.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/creative.min.css" type="text/css"/>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/DinnerNinjaStylin.css" />
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style>
	    body {
		  margin: 0;
		  padding: 0;
		  background: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/148422/screencap-wheel.png) #fff;
		  background-attachment: fixed;
		  background-size: cover;
		}

		#video-background {
		  position: fixed;
		  right: 0; 
		  bottom: 0;
		  min-width: 100%; 
		  min-height: 100%;
		  width: auto; 
		  height: auto;
		  z-index: -100;
		}
		
		article {
		  position: absolute;
		  top: 0;
		  left: 0;
		  right: 0;
		  bottom: 0;
		}
		
		h1 {
		  position: absolute;
		  top: 30%;
		  width: 100%;
		  font-size: 3.6rem;
		  letter-spacing: 3px;
		  color: #fff;
		  text-shadow: 1px 1px 1px #16a085, 1px 1px 4px #2980b9;
		  text-align: center;
		}
		
		button {
		  position: relative;
		  border-radius: 5px;
		  border: 0;
		  font-size: 1.5rem;
		  font-family: Oswald, sans-serif;
		  color: #fff;
		  background-color: #2980b9;
		  padding: .4em;
		  margin-left: auto;
		  margin-right: auto;
		  display: block;
		}
		
		button:hover {
		  background-color: #3498db;
		}
		
		@font-face {
		    font-family: 'vtks_lombrigaregular';
		    src: url('vtks-lombriga.regular-webfont.woff2') format('woff2'),
		         url('vtks-lombriga.regular-webfont.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;

		}
		
		#homeHeading { 
			font-family: 'vtks_lombrigaregular', Arial, sans-serif; 
		}
		
    </style>
   
=======
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/forms.css" />
	<link rel="stylesheet" 
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="${pageContext.request.contextPath}/resources/js/forms.js"></script>
>>>>>>> c2a2c933c994d27584b88488ea57a2c660a2329e
</head>

<body id="page-top">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
    
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Dinner Ninja</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">Services</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#portfolio">Portfolio</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <header>
        <div class="header-content">

			<video autoplay loop id="video-background" muted>
				<source
					src="${pageContext.request.contextPath}/resources/cooking.mp4"
					type="video/mp4">
			</video>
			
			<div class="header-content-inner">
       
                <h1 id="homeHeading">Welcome to Dinner Ninja</h1>
                <hr>
                <p>Start Bootstrap can help you build better websites using the Bootstrap CSS framework! Just download your template and start going, no strings attached!</p>
                <form name="signIn" action="signIn" method="GET">
		
					<br>Email:<input type="text" name="eml"> 
					<br>Password:<input type="password" name="pass"> 
					
					<br><input class="btn btn-primary btn-xl" type="submit" value="sign in">
					
					<!-- <br>  <a class="btn btn-primary btn-xl page-scroll">-->
		
				</form>
                                
                <p>Don't have an account?<a href="${pageContext.request.contextPath}/resources/NewCustomer.html">Sign Up!</a></p>
            </div>
        </div>
    </header>

	<section class="bg-primary" id="about">
				<div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">We've got what you need!</h2>
                    <hr class="light">
                    <p class="text-faded">Start Bootstrap has everything you need to get your new website up and running in no time! All of the templates and themes on Start Bootstrap are open source, free to download, and easy to use. No strings attached!</p>
                    <a href="#services"
								class="page-scroll btn btn-default btn-xl sr-button">Get Started!</a>
                </div>
            </div>
        </div>
    </section>

    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">At Your Service</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i
									class="fa fa-4x fa-diamond text-primary sr-icons"></i>
                        <h3>Sturdy Templates</h3>
                        <p class="text-muted">Our templates are updated regularly so they don't break.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i
									class="fa fa-4x fa-paper-plane text-primary sr-icons"></i>
                        <h3>Ready to Ship</h3>
                        <p class="text-muted">You can use this theme as is, or you can make changes!</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i
									class="fa fa-4x fa-newspaper-o text-primary sr-icons"></i>
                        <h3>Up to Date</h3>
                        <p class="text-muted">We update dependencies to keep things fresh.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i
									class="fa fa-4x fa-heart text-primary sr-icons"></i>
                        <h3>Made with Love</h3>
                        <p class="text-muted">You have to make your websites with love these days!</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="no-padding" id="portfolio">
        <div class="container-fluid">
            <div class="row no-gutter popup-gallery">
                <div class="col-lg-4 col-sm-6">
                    <a
								href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/1.jpg"
								class="portfolio-box">
                        <img
								src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/1.jpg"
								class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/2.jpg"
								class="portfolio-box">
                        <img
								src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/2.jpg"
								class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/3.jpg"
								class="portfolio-box">
                        <img
								src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/3.jpg"
								class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/4.jpg"
								class="portfolio-box">
                        <img
								src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/4.jpg"
								class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/5.jpg"
								class="portfolio-box">
                        <img
								src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/5.jpg"
								class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/6.jpg"
								class="portfolio-box">
                        <img
								src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/6.jpg"
								class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <aside class="bg-dark">
        <div class="container text-center">
            <div class="call-to-action">
                <h2>Free Download at Start Bootstrap!</h2>
                <a
							href="http://startbootstrap.com/template-overviews/creative/"
							class="btn btn-default btn-xl sr-button">Download Now!</a>
            </div>
        </div>
    </aside>

    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Let's Get In Touch!</h2>
                    <hr class="primary">
                    <p>Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x sr-contact"></i>
                    <p>123-456-6789</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x sr-contact"></i>
                    <p>
								<a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a>
							</p>
                </div>
            </div>
        </div>
    </section>

    <!-- jQuery 
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
    <script
				src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script
				src="${pageContext.request.contextPath}/resources/vendor/scrollreveal/scrollreveal.min.js"></script>
    <script
				src="${pageContext.request.contextPath}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    

<<<<<<< HEAD
    <!-- Theme JavaScript 
    <script src="js/creative.min.js"></script>
    -->
    <script
				src="${pageContext.request.contextPath}/resources/js/creative.min.js"></script>

=======
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
>>>>>>> c2a2c933c994d27584b88488ea57a2c660a2329e

		</body>
</html>