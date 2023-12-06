<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
<form name="userForm">
<h1>게시물 목록</h1>
<table>
 <thead>
  <tr>
  <th scope="col">번호</th>
  <th scope="col">제목</th>
  <th scope="col">내용</th>
  <th scope="col">작성일</th>
  </tr>
 </thead>
 
 <tbody>
	 <c:forEach items="${boardList}" var="boardList">
	 <tr>
            <td class="text_ct">${boardList.no}&nbsp;</td>
            <td class="text_ct">${boardList.title}&nbsp;</td>
            <td class="text_ct">${boardList.contents}&nbsp;</td>
            <td class="text_ct"><fmt:formatDate value="${boardList.date}" pattern="yyyy/MM/dd" /></td>
	 </tr>
	</c:forEach>
 </tbody> 
</table>
</form>
</body>
</html>