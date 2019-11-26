<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@taglib prefix="ci" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel = "stylesheet"  type = "text/css"  href = "Forgot.css" />
<script type="text/javascript" src="BenValid.js"></script>

</head>
<h1>Add New Beneficiary</h1>
  <body>
      <div class="center">
            <form name="AddBeneficiary" action="/" onsubmit="return validateForm()" method="post">

          <label for="baccno"><b>Beneficiary Account No.</b></label>
          <c:input type="text" placeholder="Enter Account No." name="baccno" path="benAccNo" required=required/>
          <br></br>
          <label for="renterbaccno"><b>Re-Enter Account No.</b></label>
          <c:input type="text" placeholder="Re-Enter Account No." name="renterbaccno" path="" required=required/>
          <br></br>
        <label for="benname"><b>Beneficiary Name</b></label>
        <c:input type="text" placeholder="Enter Name" name="benname"  path="benName" required=required/>
      <br></br>
        <input type="checkbox">Save Beneficiary
        <br></br>
        <label for="nick"><b>Nickname</b></label>
        <c:input type="text" placeholder="Nickname" name="nick"  path="benNickName" required=required/>
        <br></br>
        <button type="submit" >Save as Beneficiary</button>  
        <br></br>
    </form>
  </div>
  
 </body>
</html>
