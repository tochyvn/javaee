<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JEU</title>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="public/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<section class="container">
		
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
			
			<table>
				
			
			</table>
	</section>
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>

