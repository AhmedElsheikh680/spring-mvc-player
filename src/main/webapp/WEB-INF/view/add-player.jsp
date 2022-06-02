<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Player</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>
<body>
	<div class="container">
	<form:form modelAttribute="player" method="post" action="save-player">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label>Name</label>
      <form:input path="name" placeholder="Name" class="form-control" />
    </div>
    <div class="form-group col-md-6">
      <label>Number</label>
      <form:input path="number" class="form-control" placeholder="Number" />
    </div>
  </div>
  <div class="form-group">
    <label>Address</label>
    <form:input path="address" class="form-control" placeholder="Address" />
  </div>
  <div class="form-group">
    <label>Phone</label>
    <form:input path="phone" class="form-control" placeholder="Phone" />
  </div>
  <button type="submit" class="btn btn-primary">Add</button>
 </div>
  
  
</form:form>
	</div>
</body>
</html>