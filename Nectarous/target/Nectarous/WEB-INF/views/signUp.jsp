<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <title>REGISTRATION FORM</title>
        <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/SignUp.css"></c:url>">
    </head>
    <body>
    
        <h1 id="regis"><center> Registration Here ! </center></h1>
              <div  class="form">
    		<form id="contactform" action="saveregister" method="post"> 
    			<p class="contact"><label for="name">Name</label></p> 
    			<input id="name" name="username" placeholder="First and last name" required="" tabindex="1" type="text"> 
    			
    			
    			<p class="contact"><label for="email">Email</label></p> 
    			<input id="email" name="email" placeholder="example@domain.com" required="" type="email"> 

                <p class="contact"><label for="address">Address</label></p> 
    			<input id="address" name="address" placeholder="Address " required="" tabindex="2" type="text"> 

                <p class="contact"><label for="password">Create a password</label></p> 
    			<input type="password" id="password" name="password" required="" type="text"> 
                

            <p class="contact"><label for="gender">Gender</label></p>   
            <select class="select-style gender" name="gender">
            <option value="select">i am..</option>
            <option value="m">Male</option>
            <option value="f">Female</option>
            <option value="others">Other</option>
            </select><br><br>

            <p class="contact"><label for="phone">Mobile phone</label></p> 
            <input id="phone" name="phone" placeholder="phone number" required="" type="text"> <br>
            <center>
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Sign up!" type="submit">
            </center>
   </form> 
</div>
</body>
</html>