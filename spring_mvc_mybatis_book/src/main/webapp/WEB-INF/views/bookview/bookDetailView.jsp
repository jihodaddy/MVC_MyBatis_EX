<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 상세 정보 조회</title>
	</head>
	<body>
				<h3>도서 상세 정보 조회</h3>
		
		<table border="1" width="300">
			<tr><td>도서번호</td><td>${book.bookNo}</td></tr>
			<tr><td>도서이름</td><td>${book.bookName} </td></tr>
			<tr><td>도서저자</td><td>${book.bookAuthor} </td></tr>
			<tr><td>도서가격</td><td>${book.bookPrice} </td></tr>
			<tr><td>출판사</td>	<td>${book.bookPublisher} </td></tr>
		</table>
		<!-- 상품 정보 수정화면으로 이동  -->		
		<a href="<c:url value='/bookview/updateBookForm/${book.bookNo}'/>">도서 정보 수정</a><br><br>
		<a href="javascript:deleteCheck();">상품 정보 삭제</a><br><br>
		<script type="text/javascript">
			function deleteCheck(){
				var answer = confirm("선택한 상품을 삭제 하시겠습니까?")
				if(answer == true){
					location.href = "/book/bookview/deleteBook/${book.bookNo}";
				}
			}
		</script>
		
		<a href='<c:url value="/" />'>메인화면으로 이동</a>
	</body>
</html>