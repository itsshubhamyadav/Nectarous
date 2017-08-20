<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div class-"container">
<h4><img alt="" src="${pageContext.request.contextPath}/resources/img/cart.png" style="width: 200px; height: 200px;">&nbsp; Your Cart</h4>
<table id="cart" class="table table-hover table-condensed">
<thead>
<tr>
<th>Product Name</th>
<th>Quantity</th>
<th>Price</th>
<th>Image</th>
<th>Total</th>
<th>Action</th>
</tr>
</thead>
<c:if test="${empty cartInfo}">
<tr>
<td colspan="9" align="center" >No Record Exist</td>
</tr>
</c:if>

<c:forEach var="c" varStatus="st" items="${cartInfo}">
<tr>
<td><c:out value="${c.cartProductName}"></c:out></td>
<td><c:out value="${c.cartPrice}"></c:out></td>
<td><img src="${pageContext.request.contextPath}/resources/${c.cartName} " width="50px" height="50px"></td>
<td><c:out value="${c.cartQuantity*c.cartPrice}"></c:out></td>
<td><a href="${pageContext.request.contextPath}/deletePCart/${c.cartId}"></a></td>
<td><c:set var="gtot" value="${gtot + c.cartPrice * c.cartQuantity }"></c:set></td>
<td><span class="col-lg-9" align="right"><label>Grand Total</label><c:out value="${gtot}"></c:out></td>
</tr>

</c:forEach>
</table>
</div>
</body>
</html>