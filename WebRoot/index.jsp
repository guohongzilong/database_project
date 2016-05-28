<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="entity.*"%>
<%@ page import="dao.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
	<head>
		<title>Home</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Play-Offs Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!meta charset utf="8">
		<!--fonts-->
			<link href='http://fonts.useso.com/css?family=Monda:400,700' rel='stylesheet' type='text/css'>
			<link href='http://fonts.useso.com/css?family=Roboto+Slab:400,300,100,700' rel='stylesheet' type='text/css'>
		<!--fonts-->
		<!--owlcss-->
		<link href="css/owl.carousel.css" rel="stylesheet">
		<!--bootstrap-->
			<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<!--coustom css-->
			<link href="css/style.css" rel="stylesheet" type="text/css"/>
		<!--default-js-->
			<script src="js/jquery-2.1.4.min.js"></script>
		<!--bootstrap-js-->
			<script src="js/bootstrap.min.js"></script>
		<!--script-->
			<script type="text/javascript" src="js/move-top.js"></script>
			<script type="text/javascript" src="js/easing.js"></script>
		<!--script-->
	</head>
	<body>
		<div class="header" id="home">
			<div class="header-top">
				<div class="container">
					<p>Help those who need a transplant. Donate your organs.</p>
				</div>
			</div>
			<div class="header_nav" id="home">
				<nav class="navbar navbar-default chn-gd">
					<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand logo-st" href="index.html">HOLIC's Organ Donation System</a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li>
						<a href="#home" class="scroll">
						<span class="glyphicon glyphicon-home icn_pos hm" aria-hidden="true"></span><br>
						Home
						</a>
						</li>
						<!---->
						<li>
						<a href="#features" class="scroll">
						<span class="glyphicon glyphicon-cog icn_pos" aria-hidden="true"></span><br>
						Services
						</a>
						</li>
						<!---->
						<li>
						<a href="#doc" class="scroll">
						<span class="glyphicon glyphicon-briefcase icn_pos" aria-hidden="true"></span><br>
						Doctors
						</a>
						</li>
						<!---->
						<!---->
						<li>	
						<a href="#contact" class="scroll">
						<span class="glyphicon glyphicon-envelope icn_pos" aria-hidden="true"></span><br>
						Contact
						</a>
						</li>
						<!--script-->
						<script type="text/javascript">
						jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
						});
						});
						</script>
						<!--script-->
					</ul>
					</div><!-- /.navbar-collapse -->
					<div class="clearfix"></div>
					</div><!-- /.container-fluid -->
				</nav>
			</div>
			<div class="header_banner">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
					<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active  image-wid">
					<img src="./images/1a.jpg" alt="..." class="img-responsive">
					</div>

					<div class="item  image-wid">
					<img src="./images/1d.jpg" alt="..." class="img-responsive">
					
					</div>

					<div class="item  image-wid">
					<img src="./images/1g.jpg" alt="..." class="img-responsive">
					
					</div>
					<div class="item  image-wid">
					<img src="./images/1l.jpg" alt="..." class="img-responsive">
					</div>
				</div>
				<!-- Controls -->
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
				</a>
				</div>
			</div>
		</div>
		<div class="style-label">
			<div class="container">
				<ul class="box-shadow effect2">
					<li class="col-md-3">
						<span class="glyphicon glyphicon-leaf flt" aria-hidden="true"></span>
						<div class="label-text">
						<h3>WELCOME</h3>
						<p>JOIN OUR SYSTEM.</p>
						</div>
					</li>
					<li class="col-md-3">						
						<div class="label-text">
						<form action="doctor.jsp" target="_blank">
						<h3>Doctor id: </h3>
						<input type="text" name="doctor" />
						<input type="submit" value="Submit"/>
						</form>
						</div>
					</li>
					<li class="col-md-3">
						<div class="label-text">
						<form action="research.jsp" target="_blank">
						<h3>Research id:</h3> 
						<input type="text" name="research" />
						<input type="submit" value="Submit"/>
						</form>
						</div>
					</li>
					<li class="col-md-3">
						<div class="label-text">
						<form action="admin.jsp" target="_blank">
						<h3>Administrator id:</h3> 
						<input type="text" name="admin" />
						<input type="submit" value="Submit"/></a>
						</form>
						</div>
					</li>
					<div class="clearfix"></div>
				</ul>
			</div>
		</div>
		<div class="content">
			<div class="service_features" id="features">
				<div class="container">
					<div class="col-md-4 ser-fet">
						<h3>Our Services</h3>
						<p>We are good at</p>
						<span class="line"></span>
						<div class="services">
							<div class="menu-grid">
								<ul class="menu_drop">
									<li class="item1 plus"><a href="#" class="active">Organ Donation<span class="caret"></span></a>
										<ul>
											<li class="subitem1">
											</li>
										</ul>
									</li>
									<li class="item3 plus"><a href="#" class="active">Organ Transplantation<span class="caret"></span></a>
										<ul>
											<li class="subitem1">
											</li>
										</ul>
									</li>
									<li class="item4 plus"><a href="#" class="active">Physical Examination <span class="caret"></span></a>
										<ul>
											<li class="subitem1">
											</li>
										</ul>
									</li>
									<li class="item4 plus"><a href="#" class="active">Scientific Research<span class="caret"></span></a>
										<ul>
											<li class="subitem1">
											</li>
										</ul>
									</li>

								</ul>
								<!-- script for tabs -->
								<script type="text/javascript">
									$(function() {
										var menu_ul = $('.menu_drop > li > ul'),
											menu_a  = $('.menu_drop > li > a');
												menu_ul.hide();
													menu_a.click(function(e) {
													e.preventDefault();
													if(!$(this).hasClass('active')) {
													menu_a.removeClass('active');
													menu_ul.filter(':visible').slideUp('normal');
													$(this).addClass('active').next().stop(true,true).slideDown('normal');
													} else {
													$(this).removeClass('active');
												$(this).next().stop(true,true).slideUp('normal');
											}
										});
									});
								</script>
							<!-- script for tabs -->
						</div>
						</div>
					</div>
                    <div class="copyrights"></div>
					<div class="col-md-8 ser-fet">
						<h3>Our Features</h3>
						<p>Our Aim</p>
						<span class="line"></span>
						<div class="features">
							<div class="col-md-6 fet-pad">
								<div class="div-margin">
									<div class="col-md-3 fet-pad wid">
										<span class="glyphicon glyphicon-user aim-icn" aria-hidden="true"></span>
									</div>
									<div class="col-md-9 fet-pad wid2">
										<h4>Patient Profile</h4>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="div-margin">
									<div class="col-md-3 fet-pad wid">
										<span class="glyphicon glyphicon-screenshot aim-icn" aria-hidden="true"></span>
									</div>
									<div class="col-md-9 fet-pad wid2">
										<h4>Advanced Equipment</h4>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="div-margin">
									<div class="col-md-3 fet-pad wid">
										<span class="glyphicon glyphicon-ok aim-icn" aria-hidden="true"></span>
									</div>
									<div class="col-md-9 fet-pad wid2">
										<h4>Operations sucessed</h4>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="col-md-6 fet-pad">
								<div class="div-margin">
									<div class="col-md-3 fet-pad wid">
										<span class="glyphicon glyphicon-piggy-bank aim-icn" aria-hidden="true"></span>
									</div>
									<div class="col-md-9 fet-pad wid2">
										<h4>Health Insurance</h4>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="div-margin">
									<div class="col-md-3 fet-pad wid">
										<span class="glyphicon glyphicon-education aim-icn" aria-hidden="true"></span>
									</div>
									<div class="col-md-9 fet-pad wid2">
										<h4>Recognised Doctors</h4>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="div-margin">
									<div class="col-md-3 fet-pad wid">
										<span class="glyphicon glyphicon-heart aim-icn" aria-hidden="true"></span>
									</div>
									<div class="col-md-9 fet-pad wid2">
										<h4>Satisfaction</h4>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		
		</div>
		<div class="doctor-port" id="doc">
			<h3>Doctors</h3>
			<!-- requried-jsfiles-for owl -->
			<script src="js/owl.carousel.js"></script>
			<script>
				$(document).ready(function() {
					$("#owl-demo").owlCarousel({
						items : 4,
						lazyLoad : true,
						autoPlay : true,
						pagination : false,
					});
				});
			</script>
			<!-- //requried-jsfiles-for owl -->
			<div class="container">
				<div id="owl-demo" class="owl-carousel text-center">
					<div class="item g1">
						<img class="lazyOwl img-responsive" data-src="images/a2.jpg" alt="name">
						<div class="caption">
						<h4>Dr.David Warner</h4>
						<span>Neque porro quisquam est qui dolorem </span>
						</div>
					</div>
					<div class="item g1">
						<img class="lazyOwl img-responsive" data-src="images/a3.jpg" alt="name">
						<div class="caption">
						<h4>Dr.Angelina</h4>
						<span>Neque porro quisquam est qui dolorem </span>
						</div>
					</div>
					<div class="item g1">
						<img class="lazyOwl img-responsive" data-src="images/a5.jpg" alt="name">
						<div class="caption">
						<h4>Dr.Richard Harrison</h4>
						<span>Neque porro quisquam est qui dolorem </span>
						</div>
					</div>
					<div class="item g1">
						<img class="lazyOwl img-responsive" data-src="images/a1.jpg" alt="name">
						<div class="caption">
						<h4>Dr.Jane</h4>
						<span>Neque porro quisquam est qui dolorem </span>
						</div>
					</div>
					<div class="item g1">
						<img class="lazyOwl img-responsive" data-src="images/a4.jpg" alt="name">
						<div class="caption">
						<h4>Dr.Natallie</h4>
						<span>Neque porro quisquam est qui dolorem </span>
						</div>
					</div>
					<div class="item g1">
						<img class="lazyOwl img-responsive" data-src="images/a6.jpg" alt="name">
						<div class="caption ">
						<h4>Dr.Christiana</h4>
						<span>Neque porro quisquam est qui dolorem </span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="social-label" id="contact">
				<div class="col-md-4 text-label">
					<p>Follow, Like, Share us.</p>
				</div>
					<div class="col-md-8 social-icn">
						<ul>
							<li>
								<a href="#" class="face"></a>
							</li>
							<li>
								<a href="#" class="twit"></a>
							</li>
							<li>
								<a href="#" class="gplus"></a>
							</li>
							<li>
								<a href="#" class="inst"></a>
							</li>
							<li>
								<a href="#" class="drib"></a>
							</li>
							<li>
								<a href="#" class="in"></a>
							</li>
						</ul>
					</div>
				<div class="clearfix"></div>
		</div>
		<div class="contact">
			<div class="map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2784.2042667664155!2d126.63123631581662!3d45.747050722545524!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5e447f9d2dd87cd1%3A0xcb3b9952a10fed6c!2z5ZOI5bCU5ruo5bel5Lia5aSn5a2m!5e0!3m2!1szh-CN!2stw!4v1464160689684" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
			<div class="contact-form">
				<div class="container">
					<div class="col-md-3 pd adress">
						<h3>adress</h3>
						<ul>
							<li>Haebin</li>
							<li>HeiLongjiang</li>
							<li>China</li>
							<li>55, XiDaZhi Street</li>
						</ul>
					</div>
					<div class="col-md-3 pd news-letter">
						<h3>newsletter</h3>
						<p>Enter your e-mail to subscribe our newsletter</p>
						<form>
						<input class="mail" type="text" name="email" value="E-mail" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'E-mail';}">	
						<button type="button" class="btn btn-info sub1">Go</button>
						</form>
					</div>
					<div class="col-md-6 pd contact-us">
						<h3>contact us</h3>
						<form>
						<textarea value="Message:" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Message';}">Enter your text here...</textarea>
						<br>
						<input class="name" type="text" name="name" value="Your name" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Name';}">
						<input class="nuber" type="text" name="Phone number" value="Phone Number" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Number';}">
						<button type="button" class="btn btn-info sub1">Send</button>
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="container">
				<div class="footer-text">
				<h3><a href="index.html">HOLIC</a></h3>
				<p>Copyright &copy; 2016.HOLIC</p>
				</div>
			</div>
		</div>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</body>
</html>









