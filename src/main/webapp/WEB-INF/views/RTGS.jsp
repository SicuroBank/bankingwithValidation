<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@taglib prefix="ci" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet"  type = "text/css"  href = "Forgot.css" />
<script type="text/javascript" src="RTGS.js"></script>
</head>
<h1>Initiate RTGS Payment</h1>
  <body>
        <div class="center">
                <form name="RTGS" action="/" onsubmit="return validateForm()" method="post">
            <label for="faccno"><b>From Account No.</b></label>
            <c:input type="text" placeholder="From Account No." name="accno" path="" required="required"/>
            <br></br>
            <label for="taccno"><b>To Account No.</b></label>
             <c:select name="toaccno" path="" required="required">  
                    <c:option value=""></c:option>
                   
                    </c:select>
        <button type="submit" >Add New</button>
    <br></br>
        <label for="amt"><b>Amount</b></label>
        <c:input type="text" placeholder="Amount" name="amt" path="" required="required"/>
        <br></br>
        <label for="transd"><b>Transaction Date</b></label>
        <c:input type="date" placeholder="Transaction Date" name="transd" path="" required="required"/>
        <br></br>
        <label for="mi"><b>Maturity Instructions</b></label>
        <c:input type="text" placeholder="Maturity Instructions" name="mi" path="" required="required"/>
        <br></br>
        
        
        <label for="rmk"><b>Remark</b></label>
        <c:input type="text" placeholder="Remark" name="rmk" path="" required="required"/>
        <br/>
        <button type="submit" >Save</button>
        <button type="reset">Reset</button>
        <button type="submit" >Save as Template</button>
        <button type="submit">Continue</button>
        <br/>
     
    </form>
</div>
 </body>
</html>