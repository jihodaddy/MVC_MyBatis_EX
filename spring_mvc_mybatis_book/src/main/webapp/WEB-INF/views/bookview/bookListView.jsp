<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> 도서 전체 정보</title>
	</head>
	<body>
		<h3>도서 전체 정보</h3>
		
		<table border="1">
			<tr><td>도서번호</td><td>도서명</td><td>저 자</td><td>도서가격</td><td>출판사</td></tr>
			<c:forEach items="${bookList}" var= "book" >
				 <tr><td><a href="<c:url value='/bookview/detailViewBook/${book.bookNo}'/>">${book.bookNo }</td>
						<td>${book.bookName }</td>
						<td>${book.bookAuthor }</td>
						<td>${book.bookPrice }</td>
						<td>${book.bookPublisher }</td></tr>
			</c:forEach>
		</table>
		<a href="/book/">메인화면으로 이동</a>
	</body>
</html>