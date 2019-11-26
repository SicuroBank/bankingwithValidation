<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@taglib prefix="ci" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@taglib prefix="u" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="<u:url value="/resources/css/dash-form.css" />" rel="stylesheet">
<link href="<u:url value="/resources/css/ben-form.css" />" rel="stylesheet">



</head>

            
    <div class="header">
   
           
    </div>   
            <nav>
                <div class="topnav">
                        <a class="active" href="#home">Home</a>
                        <a href="#logout">Logout</a>
                   
                      </div>
             </nav>
             

    <div class="content">
    <div class="sidenav">
            <a  href="#about">Funds Transfer</a>
            <a class="active" href="#ben">Add Beneficiary</a>
            <a href="#statement">Account Statement</a>
            <a href="#summary">Account Summary</a>
            <a href="#details">Account Details</a>
          </div>
          
    </div>


  <body>
      <div class="center">
            <c:form name="AddBeneficiary" action="savebenform" modelAttribute="bene" method="post">

          <label for="baccno"><b>Beneficiary Account No.</b></label>
          <c:input type="text" placeholder="Enter Account No." name="baccno" path="benAccNo" required="required"/>
          <br></br>
          <label for="renterbaccno"><b>Re-Enter Account No.</b></label>
          <c:input type="text" placeholder="Re-Enter Account No." name="renterbaccno" path="benAccNo" required="required"/>
          <br></br>
        <label for="benname"><b>Beneficiary Name</b></label>
        <c:input type="text" placeholder="Enter Name" name="benname"  path="benName" required="required"/>
      <br></br>
        <input type="checkbox">Save Beneficiary
        <br></br>
        <label for="nick"><b>Nickname</b></label>
        <c:input type="text" placeholder="Nickname" name="nick"  path="benNickName"  required="required"/>
        <br></br>
        
        <button type="submit">Save as Beneficiary</button>  
        <br></br>
    </c:form>
  </div>
  
    <div class="fixed-footer">
        <div class="container">Copyright &copy; Sicuro Bank 2019</div>        
    </div>
  
 </body>
</html>
