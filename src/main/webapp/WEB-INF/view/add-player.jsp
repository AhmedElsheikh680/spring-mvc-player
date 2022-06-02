<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<form>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label>Name</label>
      <input type="text" placeholder="Name" class="form-control">
    </div>
    <div class="form-group col-md-6">
      <label>Number</label>
      <input type="text" class="form-control" placeholder="Number" />
    </div>
  </div>
  <div class="form-group">
    <label>Address</label>
    <input type="text" class="form-control" placeholder="Address">
  </div>
  <div class="form-group">
    <label>Phone</label>
    <input type="text" class="form-control" placeholder="Phone">
  </div>
  <button type="submit" class="btn btn-primary">Add</button>
 </div>
  
  
</form>
	</div>
</body>
</html>