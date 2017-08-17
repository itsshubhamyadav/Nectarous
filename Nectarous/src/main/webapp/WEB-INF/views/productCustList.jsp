<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<h2>Product List</h2>
	<table class="table table-hover" id="category" class="display" border="1" width="80" align="center">
	<tr>
	<th>Sr. No.</th><th>PID</th><th>Name</th><th>Supplier</th><th>Category</th>
	<th>Price</th><th style="width:15">Description</th><th>Image</th><th>View Details</th>
	<c:if test="${empty prodList}"><tr><td colspan="9" align="center">No record exists</td></tr></c:if>
	<c:forEach var="c" varStatus="st" items="${prodList}">
	<tr>
	<td><c:out value="${st.count}"></c:out></td>
	<td><c:out value="${c.id}"></c:out></td>
	<td><c:out value="${c.name}"></c:out></td>
	<td><c:out value="${c.supplier.supplierName}"></c:out></td>
	<td><c:out value="${c.category.name}"></c:out></td>
	<td><c:out value="${c.price}"></c:out></td>
	<td class="span2"><c:out value="${c.description}"></c:out></td>
	<td><img src="${pageContext.request.contextPath}/resources/${c.imgname} " width="50px" height="50px"></td>
	<td class="span4">
    <c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
    <a class="btn btn-info" role="button" href="<c:url value="/prodDetails/${c.id}"/>">Details</a>
	</td>
	</tr>
	</c:forEach>
	</table>
	</div>
</body>
</html>