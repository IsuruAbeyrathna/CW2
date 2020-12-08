<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CW2.HomePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml">
	 <head runat="server">
	<title>XYZ Laundry</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />

	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Meta tag Keywords -->
	<!-- Custom-Files -->
	<link href="Styles/bootstrap.css" rel="stylesheet" />    
	<!-- Bootstrap-Core-CSS -->
	<link href="Styles/style_xyz.css" rel="stylesheet" />
	<!-- Style-CSS -->
	<link href="Styles/font-awesome.min.css" rel="stylesheet" />
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom-Files -->
	<!-- Web-Fonts -->
	<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i&amp;subset=latin-ext,vietnamese"
		  rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Assistant:200,300,400,600,700,800&amp;subset=hebrew" rel="stylesheet">
	<!-- //Web-Fonts -->
</head>
<body>
<div class="main-banner" id="home">
		<!-- header -->
		<header>
			<div class="container">
				<div class="header d-lg-flex justify-content-between align-items-center py-3">
					<!-- logo -->
					<h1 class="logo-resp text-center">
						<a class="logo" href="index.html">
							XYZ Laundry
						</a>
					</h1>
					<!-- //logo -->
					<!-- nav -->
					<div class="nav_w3ls">
						<nav>
							<label for="drop" class="toggle">Menu</label>
							<input type="checkbox" id="drop" />
							<ul class="menu">
								<li class="active"><a href="index.html">Home</a></li>
								<li class="mx-lg-4 my-md-0 my-2"><a href="#services">Services</a></li>
								<li class="mx-lg-4 my-md-0 my-2"><a href="#blog">Sign Up</a></li>
								<li class="mx-lg-4 my-md-0 my-2"><a href="Login.aspx">Login</a></li>
								<li class="mx-lg-4 my-md-0 my-2"><a href="#about">About Us</a></li>
								<li><a href="#contact">Contact Us</a></li>
							</ul>
						</nav>
					</div>
					<!-- //nav -->
				</div>
			</div>
		</header>
		<!-- //header -->
		<!-- banner -->
		<div class="w3layouts-banner-info">
			<div class="container">
				<div class="style-banner text-center">
					<p class="text-li mb-2">Wash, Dry & Fold</p>
					<h3 class="text-wh font-weight-bold text-uppercase">We Are Expert Cleaner</h3>
				</div>
			</div>
		</div>
		<!-- //banner -->
	</div>
	<!-- //main -->
	<!-- services -->
	<div class="serives-agile pb-5" id="services">
		<div class="container pb-xl-5 pb-lg-3">
			<br>
			<br>
			<br>
			<h3 class="w3ls-title text-center font-weight-bold text-da mb-5 pb-lg-4">
				<span class="let mb-1">What we offer?</span>
				Our Services
			</h3>
			<div class="row text-center">
				<div class="col-sm-4 services-w3ls-grid">
					<img src="Pic/s1.png" alt="" class="img-fluid" />                    
					<h4 class="mt-lg-5 mt-4 mb-sm-3 mb-2 text-da">Dry</h4>
					<p>Ut enim ad minima veniam, quis nostrum ullam corporis suscipit laboriosam.</p>
				</div>

				<div class="col-sm-4 services-w3ls-grid">
					<img src="Pic/s2.png" alt="" class="img-fluid" />
					<h4 class="mt-lg-5 mt-4 mb-sm-3 mb-2 text-da">Wash</h4>
					<p>Ut enim ad minima veniam, quis nostrum ullam corporis suscipit laboriosam.</p>
				</div>
				<div class="col-sm-4 services-w3ls-grid">
					<img src="Pic/s3.png" alt="" class="img-fluid" />
					<h4 class="mt-lg-5 mt-4 mb-sm-3 mb-2 text-da">Fold</h4>
					<p>Ut enim ad minima veniam, quis nostrum ullam corporis suscipit laboriosam.</p>
				</div>
			</div>
		</div>
	</div>
	<!-- //services -->
	<!-- middle section 2 -->
	<section class="middle-2 py-3" id="what">
		<div class="row no-gutters">
			<div class="col-xl-6 who-left-w3pvt pt-xl-3">
				<h3 class="w3ls-title font-weight-bold text-da mb-sm-5 mb-4">
					<span class="let mb-3">Wash, Dry & Fold</span>
					Launderette is a service you can trust.
				</h3>
				<p>
					Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
					exercitation.
				</p>
				<p class="mt-3">
					Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut
					aliquid ex ea
					commodi consequatur? Quis autem vel eum iure.
				</p>
				<div class="row support-bottom mt-5 pt-xl-3 text-center">
					<div class="col-sm-4 services-w3ls-grid-2">
						<i class="fa fa-modx"></i>
						<h4 class="mt-md-4 mt-3 text-da">Expert Cleaner</h4>
					</div>
					<div class="col-sm-4 services-w3ls-grid-2 my-sm-0 my-4">
						<i class="fa fa-money"></i>
						<h4 class="mt-md-4 mt-3 text-da">Affordable Price</h4>
					</div>
					<div class="col-sm-4 services-w3ls-grid-2">
						<i class="fa fa-truck"></i>
						<h4 class="mt-md-4 mt-3 text-da">Express Delivery</h4>
					</div>
				</div>
			</div>
			<div class="col-xl-6 mt-xl-0 mt-5 text-xl-right text-center">
				<img class="img-fluid rounded" src="Pic/m1.jpg" alt="">
			</div>
		</div>
	</section>
	<!-- //middle section 2 -->
	<!-- contact -->
	<div class="contact-wthree pb-5" id="contact">
		<div class="container pb-xl-5 pb-lg-3">

			<h3>Contact Us</h3>
			<!--  //register form grid ends here -->
			<div class="w3_pvt-contact-top mt-5">
				<h4>get in touch </h4>
				<ul class="d-flex list-unstyled header-wthreelayouts pt-0 flex-column">
					<li>
						<span class="fa fa-home mr-2"></span>
						<p class="d-inline">1234k Avenue,Block-4,Canada.</p>
					</li>
					<li class="my-3">
						<span class="fa fa-envelope-open mr-2"></span>
						<a href="mailto:example@email.com" class="text-secondary">info@example.com</a>
					</li>
					<li>
						<span class="fa fa-phone mr-2"></span>
						<p class="d-inline">+456 123 7890</p>
					</li>
				</ul>
			</div>			
		</div>
	</div>


	<!-- footer -->
	<footer class="text-center py-5">
		<div class="container pt-xl-5 pt-4">
			<p class="footer-para mb-2 pt-3">Thanks for visiting our Site.</p>
			<h2 class="text-wh text-uppercase font-weight-bold">We Hope to See you Again</h2>
			<!-- social icons -->
			<div class="footercopy-social">
				<ul>
					<li>
						<a href="#" class="face">
							<span class="fa fa-facebook-f"></span>
						</a>
					</li>
					<li class="mx-2">
						<a href="#" class="twi">
							<span class="fa fa-twitter"></span>
						</a>
					</li>
					<li>
						<a href="#" class="rss">
							<span class="fa fa-rss"></span>
						</a>
					</li>
					<li class="ml-2">
						<a href="#" class="vk">
							<span class="fa fa-vk"></span>
						</a>
					</li>
				</ul>
			</div>
			<!-- //social icons -->
			<!-- copyright -->
			<div class="w3l-copy text-center mt-sm-5 mt-4">
				<p>
					© 2020 XYZ Laundry. All rights reserved | Design by
					<a>XYZ Laundry</a>
				</p>
			</div>
			<!-- //copyright -->
			<a href="#home" class="move-top text-center mt-4"></a>
		</div>
	</footer>
	<!-- //footer -->
</body>
</html>
