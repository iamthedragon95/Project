<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="includes.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>conform</title>
<jsp:include page="includes.jsp" />
</head>
<body >
<%@include file="navi.jsp"%>
<style>
.body{
margin-bottom:600px;
font-size:23px;
}
</style>

<div class="container">
<div class="row">
<div class="colmd-12">
<center><H1>SHIPPING DETAILS</H1></center>
<br>
<form:form modelAttribute="shippingdetails" class="form" role="form">

<table>
<tr>
<td><h4>NAME:</h4></td>
<td>${shippingdetails.sname}</td>
</tr>
<tr>
<td><h4>ADDRESS:</h4></td>
</tr>
<tr>
<td>${shippingdetails.addr1}</td>
</tr>
<tr>
<td>${shippingdetails.addr2}</td>
</tr>
<tr>
<td>${shippingdetails.addr3}</td>
</tr>
<tr>
<td>${shippingdetails.phoneNumber}</td>
</tr>
</table>


<input name="_eventId_edit" class="btn btn-warning btn-md" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" class="btn btn-success btn-md" value="Confirm Details" />
</form:form>
</div>
</div>
</div>
<%@include file="footer.jsp"%>