<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>장비 상세 페이지</title>
	</head>
	<body>
		<h3>장비 상세 정보</h3>
		
		<table border="1" width="300">
				<tr><td>장비번호</td><td>${gear.gearNo}</td></tr>
				<tr><td>장비명</td><td>${gear.gearName}</td></tr>
				<tr><td>장비메이커</td><td>${gear.gearMaker}</td></tr>
				<tr><td>카테고리</td><td>${gear.gearCtg}</td></tr>
				<tr><td>장비가격</td><td>${gear.gearPrice}</td></tr>
				<tr><td>장비재고</td><td>${gear.gearQty}</td></tr>
		</table>
		<br>
			<!-- 장비 정보 수정 -->
	<a href="<c:url value='/gear/updateGearForm/${gear.gearNo }' />">장비 정보 수정</a> <br>
	<!-- 도서 정보 삭제 -->
	<a href="javascript:deleteCheck();">도서 정보 삭제</a> <br>
	<script type="text/javascript">
		function deleteCheck(){
			var answer = confirm("삭제하시겠습니까?");
			
			if(answer==true){
				location.href="/gear/gear/deleteGear/${gear.gearNo}";
			}
		}
	</script>
	<a href="<c:url value='/' />">메인 화면으로 이동</a>
	</body>
</html>