<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@taglib prefix="u" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="Header2.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<link href="<u:url value="/resources/css/Forgot.css" />" rel="stylesheet">
<script src="<u:url value="/resources/js/ForgotPassword.js" />"></script>

</head>
<h1>Forgot Password</h1>
  <body>
      <div class="center">
          <form name="ForgotPassword" action="/"  method="post">
        <label for="userid"><b>UserID</b></label>
        <input type="text" placeholder="Enter UserID" name="userid" path="" required="required"/>
      <br></br>
        <label for="otp"><b>OTP</b></label>
        <input type="text" placeholder="Enter OTP" name="otp" path=""  required="required"/>
        <br></br>
        <button type="submit" >Proceed</button>
        <button type="submit">Back</button>
        <br></br>

     
    </form>
  </div>
  
 </body>
</html>