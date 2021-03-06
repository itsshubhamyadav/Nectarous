<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include><br>
<div class="container">
<c:url value="/productUpdate" var="pru"></c:url>
<form action="productUpdate" method="post" enctype="multipart/form-data">
<input type="hidden" name="pid" value="${prod.id}">
<label>Product Name</label>
<input type="text" name="pName" value="${prod.name }" required/>
<label>Product Price</label>
<input type="text" name="pPrice" value="${prod.price }" required/>
<label>Product Stock</label>
<input type="text" name="pStock" value="${prod.stock }" required/>
<label>Product Description</label>
<input type="text" name="pDesc" value="${prod.description }" required/>
<label>Product Category</label>
<select name="pCategory">
<option value="0">----Select Category----</option>
<c:forEach items="${catList }" var="cate">
<option value="${cate.cid }">${cate.name}
</option>
</c:forEach>
</select>
<select name="pSupplier">
<option value="0">----Product Supplier----</option>
<c:forEach items="${satList }" var="sate">
<option value="${sate.sid }">${sate.supplierName}
</option>
</c:forEach>
</select>
<div class="fileinput fileinput-new" dataprovides="fileInput">
<tr>
<td>Image</td>
<td><input class="form-control" type="file" name="file" accept="images/*"></td>
</tr>
</div>
<button class="btn btn-lg btn-primary" type="submit" >Update</button>
<button class="btn btn-lg btn-primary" type="reset" >Cancel</button>
</form>
</div>
</body>
</html>