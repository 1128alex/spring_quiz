<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기상청</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- jquery slim 제거-->
<!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="/css/lesson05/style.css">
</head>
<body>
	<div class="container">
		<section class="d-flex">
			<aside class="col-2">
				<jsp:include page="quiz05_menu.jsp" />
			</aside>
			<div class="col-10 h-100 mr-3 ml-3 mt-3">
				<jsp:include page="quiz05_section.jsp" />
				<jsp:include page="quiz05_insert.jsp" />
			</div>
		</section>
		<footer>
			<div class="d-flex">
				<img alt="logo" src="/img/lesson05/kmalogo.jpg" height="45"
					class="footerLogo ml-3 mt-3 mr-4" style="opacity: 0.5">
				<address class="mt-3 ml-4">
					(07062) 서울시 동작구 여의대방로16길 61 <br> Copyright@2020 KMA. All
					Rights RESERVED.
				</address>
			</div>

		</footer>
	</div>
</body>
</html>