<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 정보 등록</title>
	</head>
	<body>
		<h3>도서 정보 등록</h3>
		<form method="post" action="/book/bookview/insertBook">
			<table border="1">
				<tr><td>도서 번호</td><td><input type="text" name="bookNo"></td></tr>
				<tr><td>도서 이름</td><td><input type="text" name="bookName"></td></tr>
				<tr><td>도서 저자</td><td><input type="text" name="bookAuthor"></td></tr>
				<tr><td>도서 가격</td><td><input type="text" name="bookPrice"></td></tr>
				<tr><td>출판사</td><td><input type="text" name="bookPublisher"></td></tr>
				<tr><td colspan="2">
					<input type="submit" value="등록">
					<input type="reset" value="취소">
				</td></tr>
			</table>
		</form>
	</body>
</html>