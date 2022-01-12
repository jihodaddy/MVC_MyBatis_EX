<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체 장비 목록</title>
	</head>
	<body>
		<h3>전체 장비 목록</h3>
		
		<table border="1" width="600" >
			<tr bgcolor="lightgray">
				<td>장비번호</td>
				<td>장비명</td>
				<td>장비메이커</td>
				<td>카테고리</td>
				<td>장비가격</td>
				<td>장비재고</td>
			</tr>
			
			<c:forEach items="${gearList}" var="gear" >
				<tr>
					<td><a href="<c:url value='/gear/gearDetailView/${gear.gearNo}'/>">${gear.gearNo}</td>
					<td>${gear.gearName}</td>
					<td>${gear.gearMaker}</td>
					<td>${gear.gearCtg}</td>
					<td>${gear.gearPrice}</td>
					<td>${gear.gearQty}</td>
				</tr>
			</c:forEach>
		</table><br><br>
		
		<a href="/gear/">메인 화면으로 이동</a>
	</body>
</html>