<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Core -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--Formatting-->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<div class="col-12">
	<h3 class="text-center font-weight-bold mt-3 mb-3">예약 목록 보기</h3>
	<table class="table text-center">
		<thead>
			<tr>
				<th>이름</th>
				<th>예약날짜</th>
				<th>숙박일수</th>
				<th>숙박인원</th>
				<th>전화번호</th>
				<th>예약상태</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="booking" items="${bookings}" varStatus="status">
				<c:choose>
					<c:when test="${booking.state eq '대기중' or booking.state eq '확정'}">
						<tr>
							<td>${booking.name}</td>
							<td><fmt:formatDate value="${booking.date}"
									pattern="yyyy년 M월 dd일" /></td>
							<td>${booking.day}</td>
							<td>${booking.headcount}</td>
							<td>${booking.phoneNumber}</td>
							<td><c:choose>
									<c:when test="${booking.state eq '대기중'}">
										<span class="text-info">${booking.state }</span>
									</c:when>
									<c:when test="${booking.state eq '확정'}">
										<span class="text-success">${booking.state }</span>
									</c:when>
								</c:choose></td>
							<td><button type="button" class="btn btn-danger delBtn"
									value="${booking.id }">삭제</button></td>
						</tr>
					</c:when>
				</c:choose>
			</c:forEach>
		</tbody>
	</table>
</div>