<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<!-- for Bootstrap CSS -->
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
		<!-- YOUR own local CSS -->
		<link rel="stylesheet" href="/css/main.css"/>
		<!-- For any Bootstrap that uses JS or jQuery-->
		<script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
		<title>Dojo Survey</title>
	</head>
	<body>
		<div class="container pt-3">
		<form class="w-25 shadow-none p-3 mb-5 bg-light rounded" action="/result" method="post">
			<h2>Dojo Survey</h2>
			<br>
			<div class="shadow-sm p-3 mb-5 bg-white rounded">
				<label class="form-label" for="name">Your Name:</label>
				<input class="form-control" type="text" name="name" id="name" />
			</div>
			<div class="shadow-sm p-3 mb-5 bg-white rounded">
				<label for="location">Dojo Location:</label>
				<select name="location" id="location">
				<c:forEach items="${ locations }" var="loc">
					<option value="<c:out value='${ loc }'/>"><c:out value='${ loc }'/></option>
				</c:forEach>
				</select>
			</div>
			<div class="shadow-sm p-3 mb-5 bg-white rounded">
				<label for="language">Favorite Language:</label>
				<select name="language" id="location">
				<c:forEach items="${ languages }" var="lang">
					<option value="<c:out value='${ lang }'/>"><c:out value='${ lang }'/></option>
				</c:forEach>
				</select>
			</div>
			<div class="shadow-sm p-3 mb-5 bg-white rounded">
				<label for="comment">Comment (optional):</label>
				<textarea name="comment" id="comment" cols="30" rows="5"></textarea>
			</div>
			<button class="btn btn-outline-primary">Send</button>
		</form>
		</div>
	</body>
</html>