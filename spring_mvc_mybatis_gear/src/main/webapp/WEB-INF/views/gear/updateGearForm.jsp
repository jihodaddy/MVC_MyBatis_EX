<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>장비 수정 폼</title>
	</head>
	<body>
		<h3>장비 수정</h3>
		<form method="post" action="/gear/gear/updateGear">
			<table border="1" width="300">
				<tr><td>장비번호</td><td><input type="text" name="gearNo" value="${gear.gearNo}" ></td></tr>
				<tr><td>장비명</td><td><input type="text" name="gearName" value="${gear.gearName}"></td></tr>
				<tr><td>장비메이커</td><td><input type="text" name="gearMaker" value="${gear.gearMaker}"></td></tr>
				<tr><td>카테고리</td><td><input type="text" name="gearCtg" value="${gear.gearCtg}"></td></tr>
				<tr><td>장비가격</td><td><input type="text" name="gearPrice" value="${gear.gearPrice}"></td></tr>
				<tr><td>장비재고</td><td><input type="text" name="gearQty" value="${gear.gearQty}"></td></tr>
				<tr><td colspan="2">
						<input type="submit" value="수정">
						<input type="reset" value="취소">
				</td></tr>
			</table>
		</form>
	</body>
</html>