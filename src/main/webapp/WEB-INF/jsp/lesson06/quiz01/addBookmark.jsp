<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가하기</title>
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
</head>
<body>
	<div class="container">
		<h1>즐겨찾기 추가하기</h1>
		<div>
			<label>제목</label> <input type="text" name="name" id="name"
				class="form-control">
		</div>
		<br>
		<div class="form-group">
			<label>주소</label>
			<div class="d-flex">
				<input type="text" name="url" id="url" class="form-control">
				<button type="button" id="duplicateCheckBtn" class="btn btn-info">중복확인</button>
			</div>
		</div>
		<small id="urlStatusArea"></small> <br>
		<button type="button" id="join" class="btn btn-success col-12">추가</button>
	</div>

	<script>
		$(document).ready(function() {
			$('#duplicateCheckBtn').on('click', function() {
				$('#urlStatusArea').empty();

				let url = $('#url').val().trim();

				$.ajax({
					//request
					type : "get",
					url : "/lesson06/quiz02/url_duplicate_check",
					data : {
						"url" : url
					},

					//response
					success : function(data) {
						if (data.is_duplicate){
							$('#urlStatusArea').append('<span class="text-danger">중복된 url 입니다.</span>');
						} else{
							$('#urlStatusArea').append('<span class="text-danger">저장 가능한 url 입니다.</span>');
						}
					},
					error : function(e){
						alert("에러 " + e);
					}

				});

			});
			$('#join').on('click', function() {
				let name = $('#name').val().trim();
				if (name.length < 1) {
					alert("제목을 입력하세요");
					return;
				}

				let url = $('#url').val();
				if (url.length < 1) {
					alert("주소를 입력하세요");
					return;
				}
				if ((url.startsWith('https://') == false)&&(url.startsWith('http://') == false)) {
					alert("유효한 주소가 아닙니다." + url);
					return;
				}

				$.ajax({
					// request
					type : "POST",
					url : "/lesson06/quiz01/adding_bookmark",
					data : {
						"name" : name,
						"url" : url
					},

					// response
					success : function(data) {
						if (data.result == '성공') {
							location.href = "/lesson06/quiz01/view_bookmark";
						}
					},
					error : function(e) {
						alert("에러" + e);
					}
				});
			});
		});
	</script>
</body>
</html>