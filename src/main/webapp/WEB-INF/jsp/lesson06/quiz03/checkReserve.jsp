<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="w-100">
	<div class="banner">
		<img alt="banner1" id="banner" src="/img/lesson06/test06_banner1.jpg"
			width="1110">
	</div>
	<div class="reserveCheck d-flex">
		<div
			class="col-4 infoPage d-flex justify-content-center align-items-center">
			<span class="display-4 text-white">실시간<br>예약하기
			</span>
		</div>
		<div class="col-4 reserveCheckForm">
			<h4 class="text-white ml-2 mt-3">예약 확인</h4>
			<div class="d-flex align-items-center mb-2">
				<div class=" d-flex justify-content-end align-items-center col-4">
					<label class="text-white">이름:</label>
				</div>
				<input type="text" id="name" name="name" class="form-control col-7">
			</div>
			<div class="d-flex align-items-center mb-2">
				<div class=" d-flex justify-content-end align-items-center col-4">
					<label class="text-white">전화번호:</label>
				</div>
				<input type="text" id="phoneNumber" name="phoneNumber"
					class="form-control col-7" placeholder="예) 010-0000-0000">
			</div>
			<div class="d-flex justify-content-end">
				<button type="button" id="checkBtn" class="btn btn-success">조회
					하기</button>
			</div>
		</div>
		<div
			class="col-4 infoPage d-flex justify-content-center align-items-center">
			<div>
				<h4 class="font-weight-bold text-white">예약문의:</h4>
				<h1 class="text-white">
					010-<br>0000-1111
				</h1>
			</div>
		</div>
	</div>
</div>