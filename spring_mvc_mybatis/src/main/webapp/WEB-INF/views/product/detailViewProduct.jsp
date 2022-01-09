<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상세 상품 조회</title>
	</head>
	<body>
		<h3>상세 상품 조회</h3>
		
		<table border="2">
			<tr><td>상품번호</td><td>상품명</td><td>상품가격</td><td>제조사</td><td>상품재고</td></tr>
			
				<tr>
					<td>${prdNo}</td>
					<td>${prdName} </td>
					<td>${prdPrice} </td>
					<td>${prdCompany} </td>
					<td>${prdStock} </td>
				</tr>
				<tr>
					<td colspan="5" align="center">
						<a href="<c:url value='/product/updateProductForm/${prdNo}'/>">수정</a>
						<a href="<c:url value='/product/deleteProduct/${prdNo}'/>">삭제</a>
					</td>
				</tr>
			
		</table>
		
		<a href="/mybatis/"> 메인화면으로 이동</a>
	</body>
</html>