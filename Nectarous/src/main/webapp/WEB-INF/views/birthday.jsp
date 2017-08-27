<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Birthday party</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<div class="container" style="margin-top: 100px; margin-bottom: 100px;">
		<center>
			<b><h1 style="color: #ff3333;">SELECT THE CATEGORY</h1></b>
		</center>

<br><br>
<c:forEach var="catVal" items="${catList }">
<br>
	<li><a class="btn btn-warning btn-lg btn-block"
			href="${pageContext.request.contextPath}/productCustList?cid=<c:out value="${catVal.cid}"></c:out>">${catVal.name}</a></li>
</c:forEach>


	</div>

	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include><br>
</body>
</html>