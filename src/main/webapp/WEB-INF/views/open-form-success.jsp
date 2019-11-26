<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@taglib prefix="ci" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="Header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
<link href="<ci:url value="/resources/css/OpenAccStyle.css" />"
 rel="stylesheet"> 

</head>
<body>
<div class="container display-middle" style="width:100%">
 
  <div class="card-4" style="width:100%">
    <header class="container w3-blue w3-text-black">
      <h2><em><center>Thank you for trusting us!!</center></em></h2>
    </header>

    <div class="container w3-white" >
    
      <br/><p><h4><center>
    Almost done, @SicuroBank!
    <br/>
    Your Account is under Verification :)
    <br/></center></h4><center>
<h6><em>As a part of our registration process we just need to verify your credentials.</em></h6>
    <br/>
<em>Please check your inbox for Account Details</em>
    <br/>
<h3><em>Happy banking to you!!.....</em></h3>
</center></p>
      <br/>
      <br/>

    </div>

<center>

    <div class="container" style="width:80%">
  <button class="btn block w3-blue"  onclick="location.href='/bankingproject/account/openhome'" ><em>Direct me to Homepage -></em></button>
    </div>
    </center>
  </div>
</div>

</body>
</html>
