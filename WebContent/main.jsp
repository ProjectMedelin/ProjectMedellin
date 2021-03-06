<%@page import="users.Employer"%>
<%@page import="users.Developer"%>
<%@page import="users.User"%>
<%@page import="ads.Ads"%>
<%@page import="java.util.ArrayList"%>
<%@page import="platform.AdsDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Landing Page - Start Bootstrap Theme</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/landing-page.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top topnav"
		role="navigation">
	<div class="container topnav">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand topnav"
				href="http://localhost:8080/ProjectMedelin/index.html">Sign out</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
			<% session = request.getSession();%>
			<% User user = (User)session.getAttribute("currentSessionUser");%>
			
				<li><a href="http://localhost:8080/ProjectMedelin/main.jsp">Home</a></li>
				<% if(user instanceof Developer) {%>
				<li><a href="http://localhost:8080/ProjectMedelin/devProfile.jsp">My Account</a></li>
				<%} %>
				<% if(user instanceof Employer) {%>
				<li><a href="http://localhost:8080/ProjectMedelin/compProfile.jsp">My Account</a></li>
				<%} %>
				<li><a href="#contact">Contact</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>



	<!-- Header -->
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<form action="#" method="get">
					<div class="input-group">
						<input class="form-control" id="system-search" name="q"
							placeholder="Search for" required> <span
							class="input-group-btn">
							<button type="submit" class="btn btn-default">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</span>
					</div>
				</form>
			</div>
			<div class="col-md-9">
				<table class="table table-list-search">
					<thead>
						<tr>
							<th><i>Employer's email</i></th>
							<th><i>Title</i></th>

							<th><i>Select Ad</i></th>
						</tr>
					</thead>
					<%
						ArrayList<Ads> ads = AdsDao.getAllAds();
					%>
					<%
						for (int i = 0; i < ads.size(); i++) {
					%>
					<tbody>
						<tr>
							<td><%=AdsDao.getOwnerName(ads.get(i))%></td>
							<td><%=ads.get(i).getTitle()%></td>

							<td><button style="height: 25px"
									href="http://localhost:8080/ProjectMedelin/ad.jsp"
									class="label label-info">Open ad</button></td>

						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- /.intro-header -->

	<!-- Page Content -->


	<a name="services"></a>
	<div class="content-section-a">

		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-sm-6">
					<hr class="section-heading-spacer">
					<div class="clearfix"></div>
					<h2 class="section-heading">For Developers:</h2>
					<p class="lead">Medellin gives developers options to create
						their profiles and be contacted by companies or private employers
						interested in their experience. In addiotion, they can search
						among hundreds of job ads and find what suits them best.</p>
				</div>
				<div class="col-lg-5 col-lg-offset-2 col-sm-6">
					<img class="img-responsive" src="img/ipad.png" alt="">
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>

	<!-- /.content-section-a -->

	<div class="content-section-b">

		<div class="container">

			<div class="row">
				<div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
					<hr class="section-heading-spacer">
					<div class="clearfix"></div>
					<h2 class="section-heading">For Companies:</h2>
					<p class="lead">Our partners can proactively search the
						database of IT gurus and get in direct contact with them.
						Companies can post job ads with available positions.</p>
				</div>
				<div class="col-lg-5 col-sm-pull-6  col-sm-6">
					<img class="img-responsive" src="img/dog.png" alt="">
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.content-section-b -->

	<div class="content-section-a">

		<div class="container">

			<div class="row">
				<div class="col-lg-5 col-sm-6">
					<hr class="section-heading-spacer">
					<div class="clearfix"></div>
					<h2 class="section-heading">For Private Employers:</h2>
					<p class="lead">Here, in Medellin, we know that programming is
						not just working on high budget projects and in big offices. Some
						people prefer start- ups, smaller projects, and even creating
						something on their own. This is why we are welcoming private
						employers to search and find devs with whom they think alike.</p>
				</div>
				<div class="col-lg-5 col-lg-offset-2 col-sm-6">
					<img class="img-responsive" src="img/phones.png" alt="">
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.content-section-a -->

	<a name="contact"></a>
	<div class="banner">

		<div class="container">

			<div class="row">
				<div class="col-lg-6">
					<h2>Connect to Project Medellin:</h2>
				</div>
				<div class="col-lg-6">
					<ul class="list-inline banner-social-buttons">
						<li><a href="https://twitter.com/"
							class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i>
								<span class="network-name">Twitter</span></a></li>
						<li><a
							href="https://github.com/ProjectMedelin/ProjectMedellin"
							class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i>
								<span class="network-name">Github</span></a></li>
						<li><a href="https://facebook.com/"
							class="btn btn-default btn-lg"><i class="fa fa-facebook"
								aria-hidden="true"></i> <span class="network-name">Facebook</span></a>
						</li>
					</ul>
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.banner -->

	<!-- Footer -->
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="list-inline">
					<li><a href="#">Home</a></li>
					<li class="footer-menu-divider">&sdot;</li>
					<li><a href="#about">About</a></li>
					<li class="footer-menu-divider">&sdot;</li>
					<li><a href="#services">Services</a></li>
					<li class="footer-menu-divider">&sdot;</li>
					<li><a href="#contact">Contact</a></li>
				</ul>
				<p class="copyright text-muted small">Copyright &copy; Krum
					Krumov & Alexander Karamanov. All Rights Reserved</p>
			</div>
		</div>
	</div>
	</footer>

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>
