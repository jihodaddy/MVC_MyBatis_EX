<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 정보 수정</title>
	</head>
	<body>
			<h3>상품 정보 수정</h3>
		
		<form method="post" action="/mybatis/product/updateProduct">
			<input type="hidden" name="prdNo" value="${prdNo}" >
			<table>
				<tr><td colspan="2"> 수정할 상품번호: ${prdNo}</tr>
				<tr><td>상품명 </td><td><input type="text" name="prdName"></td></tr>
				<tr><td>가 격 </td><td><input type="text" name="prdPrice"></td></tr>
				<tr><td>제조회사 </td><td><input type="text" name="prdCompany"></td></tr>
				<tr><td>재 고 </td><td><input type="text" name="prdStock"></td></tr>
				<tr><td colspan="2"><input type="submit" value="등록"><input type="reset" value="취소"></td></tr>
			</table>
		</form>
	</body>
</html>