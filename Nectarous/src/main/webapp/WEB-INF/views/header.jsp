<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %> 
<html>
    <head>
    <link rel="shortcut icon" href="<c:url value="/resources/img/1.png"></c:url>" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
  <script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/header.js"></script>
	<link rel="stylesheet" type="text/css"
		href="<c:url value="/resources/css/head.css"></c:url>">
		<script src="content/js/jquery.min.js"></script>
<script src="content/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    });
</script>

    </head>
    <body>
        <div class="navbar navbar-inverse navbar-fixed-top opaque-navbar">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navMain">
  <span class="glyphicon glyphicon-chevron-right" style="color:white;"></span>
    
  </button>
      <a class="navbar-brand" href="${pageContext.request.contextPath }/index"><img
						src="${pageContext.request.contextPath}/resources/img/1.png" style="margin-top:-15px; width:150px; height:50px"></a>
    </div>
    <div class="collapse navbar-collapse" id="navMain">
      <ul class="nav navbar-nav ">
        <li><a href="${pageContext.request.contextPath }/index"><p >Home</p></a></li>
        <li><a href="${pageContext.request.contextPath }/aboutUs">About Us</a></li>
        <li><a href="#" data-toggle="dropdown"
							class="dropdown-toggle">Admin<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li class="inli"><a
									href="${pageContext.request.contextPath }/admin/adding"><font color="white">Admin
										</font></a></li>
								<li ><a
									href="${pageContext.request.contextPath }/admin/productList"><font color="white">Admin
										List</font></a></li>
							</ul></li>
          <li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Categories <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<c:forEach var="catVal" items="${catList }">
									<li><a
										href="${pageContext.request.contextPath}/productCustList?cid=<c:out value="${catVal.cid}"></c:out>"><font color="white">${catVal.name}</font></a></li>
								</c:forEach>
							</ul></li>
							</ul>
          <ul class="nav pull-right navbar-nav">
						<c:if test="${pageContext.request.userPrincipal.name == null }">
							<li><a href="${pageContext.request.contextPath}/signUp"><span
									class="glyphicon glyphicon-user"></span> Sign Up</a></li>
							<li><a href="${pageContext.request.contextPath}/goTologin"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
						</c:if>
						<c:if test="${pageContext.request.userPrincipal.name != null }">
							<li><a>Welcome:
									${pageContext.request.userPrincipal.name}</a></li>
							<li><a href="<c:url value="/logout" />">Logout</a></li>
							<li><span class="glyphicon glyphicon-shopping-cart" style="margin-top:16px;"></span></li>
							<li><a href="${pageContext.request.contextPath }/goToCart">My
									Cart</a></li>
						</c:if>
						
					</ul>
					
      
    </div>
  </div>
</div>

    </body>
</html>