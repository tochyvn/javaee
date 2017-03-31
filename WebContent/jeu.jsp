<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JEU</title>
	<link href="public/css/style.css" rel="stylesheet" type="text/css">
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	
</head>
<body>
	<section class="container">
		<div class="ma-marge">
			<ul class="nav nav-pills">
			  <li role="presentation" class="active"><a href="#">Home</a></li>
			  <li role="presentation"><a href="#">Profile</a></li>
			  <li role="presentation"><a href="#">Messages</a></li>
			</ul>
		</div>
		
		<form action="controller" method="post" class="ma-marge well">
			<div class="form-group row">
				<label for="usr" class="col-sm-4 col-form-label">Entrez le nombre secret:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="nombre" name="nombre" />
				</div>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-block">Primary</button>
			</div>
			</form>
			
			<div class="row">
				<table class="table table-inverse table-striped">
				  <thead class="thead-inverse">
				    <tr>
				      <th>Rapport sur la saisie</th>
				    </tr>
				  </thead>
				  <tbody>
				    <c:forEach items="${ model.historique }" var="story">
				    	<tr>
				    		<td><c:out value="${ story }">null</c:out></td>
				    	</tr>
				    </c:forEach>
				  </tbody>
				</table>
			</div>
	</section>
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>

