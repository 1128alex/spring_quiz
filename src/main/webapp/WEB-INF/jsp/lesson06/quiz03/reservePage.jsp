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
<!-- datepicker -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
			<jsp:include page="reserve.jsp" />
		</section>
		<footer>
			<jsp:include page="footer.jsp" />
		</footer>
	</div>


	<script type="text/javascript">
		$(document).ready(function() {
			$("#date").datepicker({
				dateFormat : "yy년 mm월 dd일",
				dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
				changeMonth : true,
				changeYear : true,
			});

			$('#reserveBtn').on('click', function() {
				let name = $('#name').val().trim();
				if (name.length < 1) {
					alert("이름을 입력하세요.");
					return;
				}

				let date = $('#date').val().trim();
				if (date.length < 1) {
					alert("날짜를 입력하세요.");
					return;
				}

				let day = $('#day').val().trim();
				if (day.length < 1) {
					alert("숙박일수를 입력하세요.");
					return;
				}
				if (isNaN(day)) {
					alert("숫자를 입력하세요.");
					return;
				}

				let headcount = $('#headcount').val().trim();
				if (headcount.length < 1) {
					alert("숙박인원을 입력하세요.");
					return;
				}
				if (isNaN(headcount)) {
					alert("숫자를 입력하세요.");
					return;
				}

				let phoneNumber = $('#phoneNumber').val().trim();
				if (phoneNumber.length < 1) {
					alert("전화번호를 입력하세요.");
					return;
				}

				$.ajax({
					type : "post",
					url : "/lesson06/quiz03/reserve",
					data : {
						"name" : name,
						"date" : date,
						"day" : day,
						"headcount" : headcount,
						"phoneNumber" : phoneNumber
					},
					success : function(data) {
						if (data.isSuccess) {
							alert("예약되었습니다.");
							location.href = "/lesson06/quiz03/1";
						}
					},
					error : function(e) {
						alert("에러 " + e);
					}
				});
			})
		})
	</script>
</body>
</html>