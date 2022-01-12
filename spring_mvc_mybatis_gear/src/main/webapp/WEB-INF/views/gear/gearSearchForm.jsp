<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>장비 검색 폼</title>
<script src="<c:url value='/js/jquery-3.6.0.min.js' />"></script>
<script src="<c:url value='/js/gearSearch.js' />"></script>
	</head>
	<body>
		<h2> 장비 검색</h2>
		
		<form id="gearSearchForm">
			<select id="type" name="type">
				<option value="">검색 조건 선택</option>
				<option value="gearName">장비명</option>
				<option value="gearCtg">카테고리</option>
			</select>
			<input type="text" name="keyword">
			<input type="submit" name="검색">
		</form>
		
		<div id="searchResultBox"></div>
	</body>
</html>