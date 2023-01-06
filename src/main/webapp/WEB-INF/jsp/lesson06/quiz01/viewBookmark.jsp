<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Core -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
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
		<h1>즐겨찾기 목록</h1>
		<div class="d-flex justify-content-end">
			<a href="/lesson06/quiz01/add_bookmark_view">북마크 추가하기</a>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>No.</th>
					<th>이름</th>
					<th>주소</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bookmark" items="${bookmarks}" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${bookmark.name}</td>
						<td><a href="${bookmark.url}">${bookmark.url}</a></td>
						<td><button type="button" class="btn btn-danger delBtn"
								value="${bookmark.id}">삭제</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('.delBtn').on('click', function() {
				let delId = $(this).val();
				$.ajax({
					// request
					type : "delete",
					url : "/lesson06/quiz02/delete_row",
					data : {
						"delId" : delId
					},
					// response
					success : function(data) {
						if (data.successDel) {
							location.href = "/lesson06/quiz01/view_bookmark";
						}
					},
					error : function(e) {
						alert("에러 " + e);
					}
				});
			});

			// 2) data를 이용해서 태그에 임시 저장하기
			// 태그: data-favorite-id	data- 뒤에 우리가 이름을 정한다.(대문자 절대 안됨)
			// 스크립트: $(this).data('favorite-id')
			/* $('.delBtn').on('click', function() {
				let id = $(this).data;

				$.ajax({
					type : "delete",
					url : "/lesson06/quiz02/delete_row",
					data : {
						"delId" : delId
					}
				});
			}); */
		});
	</script>
</body>
</html>