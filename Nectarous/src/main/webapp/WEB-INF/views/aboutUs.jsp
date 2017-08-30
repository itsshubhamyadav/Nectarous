<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>About Us</title>
<link rel="shortcut icon" href="<c:url value="/resources/img/1.png"></c:url>" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet'>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/aboutUs.css"></c:url>">
<script type="text/javascript"
	src="<c:url value="/resources/js/aboutUs.js"></c:url>"></script>

</head>
<body>

    <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<header id="full" style="background-image: url(<c:url value = "/resources/img/about1.jpeg" />">
<div class="abs-back"></div>
<div class="wel">
<div class="wel-info">

<h1>Nectarous, we provide the fresh Sweets</h1>
<span class="brk"></span>
<p>Our mission is to provide different Sweet products from different place and provide a fresh products.</p>

</div>
</div>
</header>

<div class="container who-we">

<div class="wel-info text-center">

<h2>Who Am I?</h2>
<span class="brk"></span>
<p>I am a student at JSS Academy of Technical Education, sector 62, Noida. I made this website using HTML5, CSS3, Bootstrap, Java, Spring, Hibernate, and H2 Database</p>

</div>
</div>

<div class="container-fluid cards-row">
<div class="container">
<div class="row">

  
  
    <div class="col-sm-3 col-md-6 col-md-offset-3" >
    <div class="thumbnail">
      <img src="<c:url value="/resources/img/back.jpg"></c:url>" alt="about us page design using bootstrap" style="height:235px;width:600px;">
        <img class="team-pic" src="<c:url value="/resources/img/shubham.jpg"></c:url>">
      <div class="caption">
        <h3>Shubham Yadav</h3>
        <p class="card-description">Web developer. Designed using Bootstrap, Java, Spring, Hibernate and H2-DB </p>
        <p class="social"><a href=""><i class="fa fa-facebook"></i></a> <a href=""><i class="fa fa-twitter"></i></a> <a href=""><i class="fa fa-linkedin"></i></a> <a href=""><i class="fa fa-google-plus"></i></a></p>
      </div>
    </div>
  </div>
  
 
  
</div>

</div>
</div>


<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>