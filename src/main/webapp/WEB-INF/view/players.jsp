<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Players</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Players</h1>
		<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Number</th>
      <th scope="col">Address</th>
       <th scope="col">Phone</th>
        <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="player" items="${players}">
  	<tr>
      <th scope="row">${player.id }</th>
      <td>${player.name }</td>
      <td>${player.number }</td>
      <td>${player.address }</td>
      <td>${player.phone }</td>
      <td>
      <c:url var="editPlayer" value="${pageContext.request.contextPath}/fifa/edit-player">
      	<c:param name="playerId" value="${player.id }"></c:param>
      </c:url>
      	<a href="${pageContext.request.contextPath}/fifa/edit-player?playerId=${player.id }" type="button" class="btn btn-success">Edit</a>
      	
      	<c:url var="deletePlayer" value="${pageContext.request.contextPath}/fifa/delete-player">
      		<c:param name="playerId" value="${player.id}"></c:param>
      	</c:url>
      	<a href="${pageContext.request.contextPath}/fifa/delete-player?playerId=${player.id}" type="button" class="btn btn-danger">Delete</a>
      </td>
    </tr>
  </c:forEach>
    
   
  </tbody>
</table>
<a type="button" class="btn btn-primary" href="${pageContext.request.contextPath}/fifa/add-player">Add</a>
	</div>
	
</body>
</html>