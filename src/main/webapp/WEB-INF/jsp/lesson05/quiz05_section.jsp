<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Core -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--Formatting-->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<h3>과거 날씨</h3>
<table class="table text-center">
	<thead>
		<tr>
			<th>날짜</th>
			<th>날씨</th>
			<th>기온</th>
			<th>강수량</th>
			<th>미세먼지</th>
			<th>풍속</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="wh" items="${wh}" varStatus="status">
			<tr>
				<td><fmt:formatDate value="${wh.date}" pattern="yyyy년 M월 d일" /></td>
				<td><c:choose>
						<c:when test="${wh.weather eq '맑음'}">
							<img alt="sunny" src="/img/lesson05/sunny.jpg">
						</c:when>
						<c:when test="${wh.weather eq '구름조금'}">
							<img alt="sunny" src="/img/lesson05/partlyCloudy.jpg">
						</c:when>
						<c:when test="${wh.weather eq '흐림'}">
							<img alt="sunny" src="/img/lesson05/cloudy.jpg">
						</c:when>
						<c:when test="${wh.weather eq '비'}">
							<img alt="sunny" src="/img/lesson05/rainy.jpg">
						</c:when>
					</c:choose></td>
				<td>${wh.temperatures}℃</td>
				<td>${wh.precipitation}mm</td>
				<td>${wh.microDust}</td>
				<td>${wh.windSpeed}km/h</td>
			</tr>
		</c:forEach>
	</tbody>

</table>