<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/header.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/head.css"></c:url>">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<!-- Begin Navbar -->
	<div id="nav">
		<div class="navbar navbar-inverse navbar-fixed-top" data-spy="affix"
			data-offset-top="100">
			<div class="container">
				<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
					<a href="#" class="navbar-brand"><img
						src="${pageContext.request.contextPath}/resources/img/small-4654-5992e8352dc71.png"
						" height="80px" width="80px" style="margin-top: -30px;"></a>

				<a class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse"> <span
					class="glyphicon glyphicon-bar"></span> <span
					class="glyphicon glyphicon-bar"></span> <span
					class="glyphicon glyphicon-bar"></span>
				</a>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a href="${pageContext.request.contextPath }/index">Home</a></li>
						<li><a href="${pageContext.request.contextPath }/aboutUs">About Us</a></li>
						<li><a href="#" data-toggle="dropdown"
							class="dropdown-toggle">Admin<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a
									href="${pageContext.request.contextPath }/admin/adding">Admin
										</a></li>
								<li><a
									href="${pageContext.request.contextPath }/admin/productList">Admin
										List</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Categories <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<c:forEach var="catVal" items="${catList }">
									<li><a
										href="${pageContext.request.contextPath}/productCustList?cid=<c:out value="${catVal.cid}"></c:out>">${catVal.name}</a></li>
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
							<li><i class="fa fa-shopping-cart" aria-hidden="true"></i></li>
							<li><a href="${pageContext.request.contextPath }/goToCart">My
									Cart</a></li>
						</c:if>
						<li><a href="#"><span class="badge">2</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /.navbar -->
	</div>


</body>

</html>