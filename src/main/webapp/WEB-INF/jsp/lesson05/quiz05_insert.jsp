<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<h3>날씨 입력</h3>
<div>
	<div class="d-flex justify-content-between insertContainer">
		<div class="d-flex align-items-center justify-content-end col-5">
			<label>날짜 </label><input type="text" class="form-control ml-2 col-8">
		</div>
		<div class="d-flex align-items-center justify-content-end insertBox">
			<label>날씨</label> <select class="form-control ml-2 col-7">
				<option>맑음</option>
				<option>구름조금</option>
				<option>흐림</option>
				<option>비</option>
			</select>
		</div>
		<div class="d-flex align-items-center justify-content-end insertBox">
			<label>미세먼지</label> <select class="form-control ml-2 col-6">
				<option>좋음</option>
				<option>보통</option>
				<option>나쁨</option>
				<option>최악</option>
			</select>
		</div>
	</div>
	<div class="d-flex justify-content-between insertContainer">
		<div class="d-flex align-items-center justify-content-end pr-0 col-4">
			<label>기온</label> <input type="text" class="form-control ml-2 col-7">
		</div>
		<div class="d-flex align-items-center justify-content-end pr-0 col-4">
			<label>강수량</label> <input type="text" class="form-control ml-2 col-7">
		</div>
		<div class="d-flex align-items-center justify-content-end pr-0 col-4">
			<label>풍속</label> <input type="text" class="form-control ml-2 col-7">
		</div>
	</div>
	<div class="d-flex justify-content-end">
		<button type="submit" class="btn btn-success">저장</button>
	</div>
</div>
