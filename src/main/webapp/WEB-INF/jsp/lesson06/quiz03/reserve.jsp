<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="col-6">
	<h3 class="text-center font-weight-bold mt-3 mb-3">예약 하기</h3>
	<div>
		<label class="pt-2 font-weight-bold">이름</label> <input type="text"
			name="name" id="name" class="form-control">
	</div>
	<div>
		<label class="pt-2 font-weight-bold">예약날짜</label> <input type="text"
			name="date" id="date" class="form-control" autocomplete="off">
	</div>
	<div>
		<label class="pt-2 font-weight-bold">숙박일수</label> <input type="text"
			name="day" id="day" class="form-control">
	</div>
	<div>
		<label class="pt-2 font-weight-bold">숙박인원</label> <input type="text"
			name="headcount" id="headcount" class="form-control">
	</div>
	<div>
		<label class="pt-2 font-weight-bold">전화번호</label> <input type="text"
			name="phoneNumber" id="phoneNumber" class="form-control"
			placeholder="예) 010-0000-0000">
	</div>
	<button type="button" id="reserveBtn"
		class="btn btn-warning col-12 mt-3">예약하기</button>
</div>