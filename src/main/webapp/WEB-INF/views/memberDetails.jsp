<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REGISTRATION </title>
<link href="style.css" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/respond.js"/>"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
   
</head>

<body>
<%@ include file="/WEB-INF/views/navi.jsp"%>
	<div class="content">
			<fieldset>
				<legend>Register Here</legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				
				
				<sf:form modelAttribute="newuser"><br />
				<div>
					<sf:label path="fname">Name:</sf:label>
					<sf:input path="fname" placeholder="enter the name" required="true"/><br />
					<!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('fname')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /><hr></div>
					
					<div>
					<sf:label path="email">Email : </sf:label>
					<sf:input type="email" path="email" placeholder="enter the email" required="true"/><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('email')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /><hr></div>

					<sf:label path="age">Age: </sf:label>
					<sf:input path="age" type="number" min="18" placeholder="enter the age" required="true"/><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('age')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /><hr>

                                        <sf:label path="username">USERNAME: </sf:label>
					<sf:input type="email" path="username" placeholder="enter the email id" required="true"/><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /><hr>

					<sf:label path="password">Password: </sf:label>
					<sf:input type="password" path="password" placeholder="enter the password" required="true"/><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /><hr>
					
					<sf:label path="cPassword">Conformtion Password: </sf:label>
					<sf:input type="password" path="cPassword" placeholder="reenter password" required="true"/><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('cPassword')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /><hr>
					
					<sf:label path="phnumber">Phone Number: </sf:label>
					<sf:input path="phnumber" pattern="[789][0-9]{9}" placeholder="ph no must be 10 digit" required="true"/><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('phnumber')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /><hr>
					
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					 <input name="_eventId_submit" type="submit" value="Submit" /><br />
				</sf:form>
			</fieldset>
		</div>
		
	<%@include file="footer.jsp"%>
</body>
</html>