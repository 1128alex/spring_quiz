<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- Core -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--Formatting-->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<h3>날씨 입력</h3>
<div>
	<form method="post" action="/lesson05/quiz05_insert">
		<div class="d-flex justify-content-between insertContainer">
			<div class="d-flex align-items-center justify-content-end col-5">
				<label>날짜 </label><input type="text" id="datePicker" name="date1"
					class="form-control ml-2 col-8">
			</div>
			<div class="d-flex align-items-center justify-content-end insertBox">
				<label>날씨</label> <select name="weather"
					class="form-control ml-2 col-7">
					<option value="맑음">맑음</option>
					<option value="구름조금">구름조금</option>
					<option value="흐림">흐림</option>
					<option value="비">비</option>
				</select>
			</div>
			<div class="d-flex align-items-center justify-content-end insertBox">
				<label>미세먼지</label> <select name="microDust"
					class="form-control ml-2 col-6">
					<option value="좋음">좋음</option>
					<option value="보통">보통</option>
					<option value="나쁨">나쁨</option>
					<option value="최악">최악</option>
				</select>
			</div>
		</div>
		<div class="d-flex justify-content-between insertContainer">
			<div class="d-flex align-items-center justify-content-end pr-0 col-4">
				<label>기온</label> <input name="temperatures" type="text"
					class="form-control ml-2 col-7">
			</div>
			<div class="d-flex align-items-center justify-content-end pr-0 col-4">
				<label>강수량</label> <input name="precipitation" type="text"
					class="form-control ml-2 col-7">
			</div>
			<div class="d-flex align-items-center justify-content-end pr-0 col-4">
				<label>풍속</label> <input name="windSpeed" type="text"
					class="form-control ml-2 col-7">
			</div>
		</div>
		<div class="d-flex justify-content-end">
			<button type="submit" class="btn btn-success">저장</button>
		</div>
	</form>
</div>

<script type="text/javascript">
	$("#datePicker").datepicker({
		dateFormat : "yy년 mm월 dd일",
		dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
		changeMonth : true,
		changeYear : true,
	});
</script>
