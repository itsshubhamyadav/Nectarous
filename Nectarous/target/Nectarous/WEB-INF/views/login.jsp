<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %> 
 <html>
    <head>
        <title>REGISTRATION FORM</title>
        <link rel="stylesheet" type="text/css" href="reg_css.css">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/SignUp.css"></c:url>">
    </head>
    <body>
    <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
        <h1 id="regis"><center> Login Here ! </center></h1>
        
              <div  class="form">
    		<form id="contactform" action="${pageContext.request.contextPath}/login" method="post"> 
    			<p class="contact"><label for="email">Email</label></p> 
    			<input id="email" name="username" placeholder="example@domain.com" required="" type="email"> 

                
                <p class="contact"><label for="password">Password</label></p> 
    			<input type="password" id="password" name="password" required="" type="text"> 
                <br>
                <center>
                <input class="buttom" name="submit" id="submit" tabindex="5" value="Login" type="submit"> 
                </center>
   </form> 
</div>
    </body>    
</html>