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


 <div class="container" style="margin-top:120px; margin-bottom:100px;">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                <c:if test="${empty cartInfo}">
                <tr>
                <td colspan="9" align="center" >No Record Exist</td>
                </tr>
                </c:if>
                    <c:forEach var="c" varStatus="st" items="${cartInfo}">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="${pageContext.request.contextPath}/resources/${c.cartImage}" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#"><c:out value="${c.cartProductName}"></c:out></a></h4>
                                <h5 class="media-heading"> by <a href="#">Brand name</a></h5>
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <c:out value="${c.cartQuantity}"></c:out>
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>&#x20b9; <c:out value="${c.cartPrice}"></c:out></strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>&#x20b9; <c:out value="${c.cartQuantity*c.cartPrice}"></c:out></strong></td>
                        
                        <td><a class="btn btn-danger" role="button" href="${pageContext.request.contextPath}/deletePCart/${c.cartId}"><span class="glyphicon glyphicon-remove"></span> Remove</a></td>
                    </tr>
                    <td><c:set var="gtot" value="${gtot + c.cartPrice * c.cartQuantity }"></c:set></td>
                    </c:forEach>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><h5>Subtotal</h5></td>
                        <td class="text-right"><h5><strong>&#x20b9; <c:out value="${gtot}"></c:out></span></strong></h5></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><h5>Estimated shipping</h5></td>
                        <td class="text-right"><h5><strong>&#x20b9; 50.0</strong></h5></td>
                        <td><c:set var="gtot" value="${gtot + 50}"></c:set></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>&#x20b9; <c:out value="${gtot}"></c:out></span></strong></h3></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <form  action="${pageContext.request.contextPath}/checkout" method="post">
     <td><a href="${pageContext.request.contextPath}/index" class="btn btn-default"><span class="glyphicon glyphicon-shopping-cart"></span>Continue Shopping</a></td>
     <td><button type="submit" class="btn btn-success">Checkout<span class="glyphicon glyphicon-play"></span></button></td>  
    </form>
                    
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include><br>
</body>
</html>