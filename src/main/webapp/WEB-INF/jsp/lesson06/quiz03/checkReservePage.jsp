<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통나무 펜션</title>
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

<link rel="stylesheet" href="/css/lesson06/style.css">
</head>
<body>
	<div class="container">
		<header class="d-flex justify-content-center align-items-center">
			<jsp:include page="header.jsp" />
		</header>
		<nav>
			<jsp:include page="menu.jsp" />
		</nav>
		<section class="d-flex justify-content-center">
			<jsp:include page="checkReserve.jsp" />
		</section>
		<footer>
			<jsp:include page="footer.jsp" />
		</footer>
	</div>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							let bannerArr = [
									"/img/lesson06/test06_banner1.jpg",
									"/img/lesson06/test06_banner2.jpg",
									"/img/lesson06/test06_banner3.jpg",
									"/img/lesson06/test06_banner4.jpg" ];
							let index = 0;
							setInterval(function() {
								$('#banner').attr('src', bannerArr[index]);
								index++;
								if (index == 4) {
									index = 0;
								}
							}, 3000);

							$('#checkBtn')
									.on(
											'click',
											function() {
												let name = $('#name').val()
														.trim();
												let phoneNumber = $(
														'#phoneNumber').val()
														.trim();

												$
														.ajax({
															type : "get",
															url : "/lesson06/quiz03/check_reserve",
															data : {
																"name" : name,
																"phoneNumber" : phoneNumber
															},
															success : function(
																	data) {
																alert("이름: "
																		+ data.name
																		+ "\n날짜: "
																		+ data.date
																				.substring(
																						0,
																						10)
																		+ "\n일수: "
																		+ data.day
																		+ "\n인원: "
																		+ data.headcount
																		+ "\n상태: "
																		+ data.state
																		+ "\n\n*같은 명의로 2번 이상 예약했을시 가장 최근 예약 내역만 나옵니다.");
															},
															error : function(e) {
																alert("예약 내역이 없습니다.");
															}
														});
											});
						});
	</script>
</body>
</html>