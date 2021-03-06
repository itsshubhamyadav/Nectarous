<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>footer</title>
<link rel="shortcut icon"
	href="<c:url value="/resources/img/1.png"></c:url>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/footer.css"></c:url>">
</head>
<body>
	<link
		href="https://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css"
		rel="stylesheet">
	<!--footer start from here-->
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-8 footer-col">
				<div class="logofooter">
					<img src="${pageContext.request.contextPath}/resources/img/1.png">
				</div>
				<br>
				<p>
					This is a site where you would get an exciting flavours of Sweets.<br>Hope
					you would get all neccessary products.
				</p>



			</div>
			<div class="col-md-4 col-sm-8 footer-col">
				<h6 class="heading7">GENERAL LINKS</h6>
				<ul class="footer-ul">
					<li><a href="#"> Career</a></li>
					<li><a href="#"> Privacy Policy</a></li>
					<li><a href="#"> Terms & Conditions</a></li>
					<li><a href="#"> Client Gateway</a></li>
					<li><a href="#"> Ranking</a></li>
					<li><a href="#"> Case Studies</a></li>
					<li><a href="#"> Frequently Ask Questions</a></li>
				</ul>
			</div>

			<div class="col-md-4 col-sm-8 footer-col">
				<h6 class="heading7">Social Media</h6>
				<ul class="footer-social">
					<li><a href="https://www.linkedin.com/"><i
							class="fa fa-linkedin social-icon linked-in" aria-hidden="true"></i></a></li>
					<li><a href="https://www.facebook.com/"><i
							class="fa fa-facebook social-icon facebook" aria-hidden="true"></i></a></li>
					<li><a href="https://twitter.com/"><i
							class="fa fa-twitter social-icon twitter" aria-hidden="true"></i></a></li>
					<li><a href="https://www.google.co.in/"><i
							class="fa fa-google-plus social-icon google" aria-hidden="true"></i></a></li>
				</ul>
				<br>
				<br>
				<br>
				<br>
				<p>
					<i class="fa fa-map-pin"></i> JSS Acedemy of Technical Education,
					Sector-62, Noida, India
				</p>
				<p>
					<i class="fa fa-phone"></i> Phone (India) : +91 8960-462-045
				</p>
				<p>
					<i class="fa fa-envelope"></i> E-mail :
					shubhamyadav03.2011@gmail.com
				</p>
			</div>
		</div>
	</div>
	</footer>
	<!--footer start from here-->

	<div class="copyright">
		<div class="container">
			<div class="col-md-6">
				<p>� 2016 - All Rights with Shubham-developer</p>
			</div>
			<div class="col-md-6">
				<ul class="bottom_ul">
					<li><a href="#">shubhamdeveloper.com</a></li>
					<li><a href="aboutUs">About us</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">Faq's</a></li>
					<li><a href="contactUs">Contact us</a></li>
					<li><a href="#">Site Map</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>