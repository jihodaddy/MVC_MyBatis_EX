<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>장비 등록 폼</title>
				<script src="<c:url value='/js/jquery-3.6.0.min.js'/>" ></script>
		<script src="<c:url value='/js/gearNoCheck.js'/>"></script>
	</head>
	<body>
		<h3>장비 등록 하기</h3>
		
		<form method="post" action="/gear/gear/insertGear">
			<table width="400">
				<tr><td>장비번호</td><td><input type="text" id="gearNo" name="gearNo">
					  <button id="gearNoCheckBtn" >중복확인</button></td></tr>
				<tr><td>장비명</td><td><input type="text" name="gearName"></td></tr>
				<tr><td>장비메이커</td><td><input type="text" name="gearMaker"></td></tr>
				<tr><td>카테고리</td><td><input type="text" name="gearCtg"></td></tr>
				<tr><td>장비가격</td><td><input type="text" name="gearPrice"></td></tr>
				<tr><td>장비재고</td><td><input type="text" name="gearQty"></td></tr>
				<tr><td colspan="2" align="center">
						<input type="submit" value="등록">
						<input type="reset" value="취소">
				</td></tr>
			</table>
		</form>
		
	</body>
</html>