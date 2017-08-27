<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>   
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/blocks.css"></c:url>">
</head>
<body>
<header>
    <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
  </header>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" style="margin-top:0px">
      <div class="item active">
        <img src="<c:url value="/resources/img/397301.jpg"></c:url>" alt="Los Angeles" style="width:100%;height:800px;">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/img/210989.jpg"></c:url>" alt="Chicago" style="width:100%;height:800px;">
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/img/123456.jpg"></c:url>" alt="New york" style="width:100%;height:800px;">
      </div>
      
      <div class="item">
        <img src="<c:url value="/resources/img/654123.jpg"></c:url>" alt="New york" style="width:100%;height:800px;">
      </div>
    </div>
    
    </div>
    

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<br>

<center><h1 style="color:#59b300;background-color:#ff9966;">Our Most Sold Product</h1></center>

<div class="Row">
            <div class="Column">
            
    <div class="container" style="height: 500px;width: 400px;">
	<form class="form" action="https://www.google.co.in/">
	<center><p style="margin-top:-15px; background-color:#F3AB25;"><b>Gulab Jamun</b></p></center>
	    <div class="header">
	        <img src="<c:url value="/resources/img/images1.jpeg"></c:url>" alt="none" height="200px" width="200px"/>
	        <p style="background-color:#F3AB25; margin-top:5px;"><b>Get 10% Discount</b></p>
        </div>
	    <a class="btn btn-primary btn-lg btn-block" role="button" href="<c:url value="/prodDetail/260"/>">Add to cart</a>
	</form>
</div>
            </div>
            
            <div class="Column">
        <div class="container" style="height: 500px;width: 400px;">
	<form class="form" action="https://www.google.co.in/">
	<center><p style="margin-top:-15px; background-color:#F3AB25;"><b>Orange Burfee</b></p></center>
	    <div class="header">
	        <img src="<c:url value="/resources/img/sweea697_2.jpg"></c:url>" alt="none" height="200px" width="200px"/>
	        <p style="background-color:#F3AB25; margin-top:5px;"><b>Get 25% Discount</b></p>
        </div>
	    <a class="btn btn-primary btn-lg btn-block" role="button" href="<c:url value="/prodDetail/258"/>">Add to cart</a>
	</form>
</div>
            </div>
            <div class="Column">
        <div class="container" style="height: 500px;width: 400px;">
	<form class="form" action="https://www.google.co.in/">
	<center><p style="margin-top:-15px; background-color:#F3AB25;"><b>Kaaju Katri</b></p></center>
	    <div class="header">
	        <img src="<c:url value="/resources/img/oetqpEfeehfag_bigger.jpg"></c:url>" alt="none" height="200px" width="200px"/>
	        <p style="background-color:#F3AB25; margin-top:5px;"><b>Get 35% Discount</b></p>
        </div>
        <a class="btn btn-primary btn-lg btn-block" role="button" href="<c:url value="/prodDetail/129"/>">Add to cart</a>
	</form>
</div>
            </div>
        </div>
        
        <div class="Row1">        
            <div class="Column1">
            <center><h3 style="color:#59b300;">Arrange sweets for Your Birthday</h3></center>
            <center><marquee bgcolor=#ffb3b3 width=60% height=50px><h2 style="margin-top:8px;"> Avail Sweets at 18% discount.<b style="color: #ff0000;"> HURRY UP !!! </b></h2></marquee></center>
            <center><h3><span class="blink_text">*** Offer Limited ***</span></h3></center>
    <div class="container" style="height: 500px;width: 100%;">
	<form class="form1 action="https://www.google.co.in/">
	<center><p style="margin-top:-15px; background-color:#59b300;"><b> Sweets for Your Birthday</b></p></center>
	    <div class="header">
	        <img src="<c:url value="/resources/img/birthday.jpg"></c:url>" 
	        alt="none" height="200px" width="800px">
        </div>
        <a class="btn btn-primary btn-lg btn-block" role="button" href="<c:url value="/birthday"/>">Click to get Arranged</a>

	</form>
</div>
            </div>
            
            
            </div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>
