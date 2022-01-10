<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 정보 수정</title>
	</head>
	<body>
			<h3>도서 정보 수정</h3>
		
		<form method="post" action="/book/bookview/updateBook">
			<table>
				<tr><td>도서번호 </td><td><input type="text" name="prdNo" value="${book.bookNo}" readonly></td></tr>
				<tr><td>도서이름 </td><td><input type="text" name="prdName" value="${book.bookName}"></td></tr>
				<tr><td>도서저자 </td><td><input type="text" name="prdPrice" value="${book.bookAuthor}"></td></tr>
				<tr><td>도서가격 </td><td><input type="text" name="prdCompany" value="${book.bookPrice}"></td></tr>
				<tr><td>출판사</td><td><input type="text" name="prdStock" value="${book.bookPublisher}"></td></tr>
				<tr><td colspan="2"><input type="submit" value="수정"><input type="reset" value="취소"></td></tr>
			</table>
		</form>
	</body>
</html>