<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체 상품 조회</title>
	</head>
	<body>
		<h3>전체 상품 조회</h3>
		
		<table border="1">
			<tr bgcolor="lightgrey"><td>상품번호</td><td>상품명</td><td>상품가격</td><td>제조사</td><td>상품재고</td>
				   <td>수정</td><td>삭제</td></tr>
			<c:forEach items="${prdList}" var="prd">
				<tr>
					<td><a href="<c:url value='/product/detailViewProduct/${prd.prdNo}'/>">${prd.prdNo}</a></td>
					<td>${prd.prdName} </td>
					<td>${prd.prdPrice} </td>
					<td>${prd.prdCompany} </td>
					<td>${prd.prdStock} </td>
					<td><a href="<c:url value='/product/updateProductForm/${prd.prdNo}'/>">수정</a></td>
					<td><a href="<c:url value='/product/deleteProduct/${prd.prdNo}'/>">삭제</a></td>
				</tr>
			</c:forEach>
		</table>
		
		<a href="/mybatis/"> 메인화면으로 이동</a>
	</body>
</html>