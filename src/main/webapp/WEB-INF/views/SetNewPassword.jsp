<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@taglib prefix="ci" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel = "stylesheet"  type = "text/css"  href = "Forgot.css" />
<script type="text/javascript" src="SetNewPassword.js"></script>
</head>
<h1>Set New Password</h1>
  <body>
      <div class="center">
        <form name="NewPassword" action="/" onsubmit="return validateForm()" method="post">
        <label for="pwd"><b>Login Password</b></label>
        <c:input type="text" placeholder="Enter Login Password" name="pwd" path="" required="required"/>
      <br></br>
        <label for="cpwd"><b>Confirm Password</b></label>
        <c:input type="text" placeholder="Enter Confirm Password" name="cpwd" path="" required="required"/>
        <br></br>
        <button type="submit" >Submit</button>
       
        <br></br>


  
      
    </form>
  </div>
  
 </body>
</html>
