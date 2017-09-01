<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="<c:url value="/resources/img/1.png"></c:url>" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Update List</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include><br>
<div class="container" style="margin-top:120px; margin-bottom:100px;">
<c:url value="/productUpdate" var="pru"></c:url>
<form class="form-horizontal" action="productUpdate" method="post" enctype="multipart/form-data">
<input type="hidden" name="pid" value="${prod.pid}">

<div class="form-group">
<label  class="control-label col-xs-2">Product Name</label>
<div class="col-xs-10">
<input type="text" class="form-control" name="pName" value="${prod.name }" required/>
</div>
</div>

<div class="form-group">
<label class="control-label col-xs-2">Product Price</label>
<div class="col-xs-10">
<input type="text" class="form-control" name="pPrice" value="${prod.price }" required/>
</div>
</div>

<div class="form-group">
<label class="control-label col-xs-2">Product Stock</label>
<div class="col-xs-10">
<input type="text" class="form-control" name="pStock" value="${prod.stock }" required/>
</div>
</div>

<div class="form-group">
<label class="control-label col-xs-2">Product Description</label>
<div class="col-xs-10">
<input type="text" class="form-control" name="pDesc" value="${prod.description }" required/>
</div></div>

<div class="form-group">
<label class="control-label col-xs-2">Product Category</label>
<div class="col-xs-10">
<select class="form-control" name="pCategory">
<option value="0">----Select Category----</option>
<c:forEach items="${catList }" var="cate">
<option value="${cate.cid }">${cate.name}
</option>
</c:forEach>
</select>
</div></div>

<div class="form-group">
<label class="control-label col-xs-2">Product Supplier</label>
<div class="col-xs-10">
<select class="form-control" name="pSupplier">
<option value="0">----Product Supplier----</option>
<c:forEach items="${satList }" var="sate">
<option value="${sate.sid }">${sate.supplierName}
</option>
</c:forEach>
</select>
</div></div>

<div class="fileinput fileinput-new" dataprovides="fileInput">
<div class="form-group">
<Label class="control-label col-xs-2">Image1</Label>
<div class="col-xs-10">
<input class="form-control" type="file" name="file1" accept="images/*">
</div></div>
<div class="form-group">
<Label class="control-label col-xs-2">Image2</Label>
<div class="col-xs-10">
<input class="form-control" type="file" name="file2" accept="images/*">
</div></div>
<div class="form-group">
<Label class="control-label col-xs-2">Image3</Label>
<div class="col-xs-10">
<input class="form-control" type="file" name="file3" accept="images/*">
</div></div>



</div>
<hr>
<center>
<button class="btn btn-lg btn-primary" type="submit" >Update</button>
<button class="btn btn-lg btn-primary" type="reset" >Cancel</button>
</center>
</form>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>