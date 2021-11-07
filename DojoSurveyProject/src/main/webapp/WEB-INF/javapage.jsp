<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" href="/css/main.css"/>
		<!-- For any Bootstrap that uses JS or jQuery-->
		<script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
		<title>Dojo Survey</title>
	</head>
	<body>
		<c:set var="result" value="${ result }"/>
		<div class="container pt-3 ">
		<div class="w-50 shadow-none p-3 mb-5 bg-light rounded" align="center">
			<br>
			<h3>Java is your favorite language!</h3>
			<br>
		</div>
		</div>
		<c:set var="result" value="${ result }"/>
		<div class="container pt-3 ">
		<div class="w-50 shadow-none p-3 mb-5 bg-light rounded">
			<h2>Submitted Info</h2>
			<br>
			<p><strong>Name:</strong> <c:out value="${ result.getName() }"/></p>
			<p><strong>Dojo Location:</strong> <c:out value="${ result.getLocation() }"/></p>
			<p><strong>Favorite Language:</strong> <c:out value="${ result.getLanguage() }"/></p>
			<p><strong>Comment:</strong> <c:out value="${ result.getComment() }"/></p>
			<br>
			<a href="/" class="btn btn-outline-primary">Go Back</a>
		</div>
		</div>
	</body>
</html>