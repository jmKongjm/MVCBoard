<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세 내용 화면</title>
<%@ include file="/incl/staticheader.jsp" %>
</head>
<body class = "page">
<%@ include file="/incl/header.jsp" %>
<!-- banner Page
    ==========================================-->
<div id="page-banner" style="background-image: url(img/photo-typo.jpg);">
  <div class="content  wow fdeInUp">
    <div class="container ">
      <h1>게시판 목록입니다.</h1>
    </div>
  </div>
</div>
 

<div id="page-body">
  <div class="container">
    <div class="row"> 
      <!--blog posts container-->
      <div class="col-md-offset-3 col-md-6 page-block">
      

<c:if test="${empty userid}">
<h3>로그인하셔야 이용이 가능합니다!</h3><br>
<a href = "/board/login.jsp">로그인하기</a>
</c:if>

<c:if test="${!empty userid}">
<h3> ${message}</h3>
<table class = "board">
<tr>
	<th width = "80">작성자 이름</th>
	<td> ${board.name} </td>
</tr>
<tr>
	<th>제목</th>
	<td> ${board.subject} </td>
</tr>
<tr>
	<th>내용</th>
	<td> ${board.content} </td>
</tr>
<tr>
	<td colspan = "2"><br><br>
		<a href = '<c:url value ="/Board.do?action=list"/>'>목록</a>
		<a href = '<c:url value ="/Board.do?action=reply&bbsno=${board.bbsno}"/>'>댓글</a>
		<a href = '<c:url value ="/Board.do?action=update&bbsno=${board.bbsno}"/>'>수정</a>
		<a href = '<c:url value ="/Board.do?action=delete&bbsno=${board.bbsno}&replynumber=${board.replynumber}"/>'>삭제</a>
	</td>
</tr>
</table>
</c:if>
</div>
</div>
</div>
</div>
<div class="clearfix"></div>
<%@ include file = "/incl/footer.jsp" %>

</body>
</html>
