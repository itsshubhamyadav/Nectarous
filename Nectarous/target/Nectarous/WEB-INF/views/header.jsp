<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Header</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"><img
				src="<c:url value="/resources/img/asceaairlines (1).png"></c:url>"
				alt="Logo" style="width: 100px; height: 50px;"></a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="index">Home</a></li>
			<li><a href="contactUs">Contact Us</a></li>
			<li><a href="aboutUs">About Us</a></li>
			<li><a href="${pageContext.request.contextPath }/admin/adding">Admin</a></li>
			<li><a
				href="${pageContext.request.contextPath }/admin/productList">Admin
					List</a></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">Categories <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<c:forEach var="catVal" items="${catList }">
						<li><a
							href="${pageContext.request.contextPath }/productCustList?cid=<c:out value="${catVal.cid}"></c:out>">${catVal.name}</a></li>
							
					</c:forEach>
				</ul></li>
			
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<c:if test="${pageContext.request.userPrincipal.name == null }">
				<li><a href="${pageContext.request.contextPath}/signUp"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="${pageContext.request.contextPath}/goTologin"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name != null }">
				<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
				<li><a href="<c:url value="/logout" />">Logout</a></li>

			</c:if>
		</ul>

		</nav>
</body>
</html>