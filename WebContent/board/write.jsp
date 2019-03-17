<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성 화면</title>
<%@ include file="/incl/staticheader.jsp" %>
</head>
<body class = "page">
<%@ include file = "/incl/header.jsp" %>
<!-- banner Page
    ==========================================-->
<div id="page-banner" style="background-image: url(img/photo-typo.jpg);">
  <div class="content  wow fdeInUp">
    <div class="container ">
      <h1>글 입력</h1>
    </div>
  </div>
</div>
 
<div id="page-body">
  <div class="container">
    <div class="row"> 
      <!--blog posts container-->
      <div class="col-md-offset-3 col-md-6 page-block">
      
<h3> ${message}</h3>
<form action='<c:url value ="/Board.do"/>' method = "post">     

<c:if test="${empty userid}">
<h3>로그인하셔야 이용이 가능합니다!</h3><br>
<a href = "/board/login.jsp">로그인하기</a>
</c:if>

<c:if test = "${!empty userid}">

<table class = "table table-striped table-borderd">
<tr>
	<td>이름</td>
	<td><input type = "text" name = "name" value = "${userid}" readonly = "true"></td>
</tr>
<tr>
	<td>이메일</td>
	<td><input type = "text" name = "email" value = "${email}" readonly = "true"></td>
</tr>
<tr>
	<td>비밀번호</td>
	<td><input type = "pass
	word" name = "password" value = "${board.password}"></td>
</tr>
<tr>
	<td>제목</td>
	<td><input type = "text" name = "subject" size = "20" value = "${board.subject}"></td>
</tr>
<tr>
	<td>내용</td>
	<td><textarea cols = "30" rows = "5" name = "content">${board.content}</textarea></td>
</tr>

<tr>
	<td colspan = "2">
	<input type = "hidden" name = "action" value = "${action}">
	<input type = "hidden" name = "bbsno" value = "${board.bbsno}">
	<input type = "hidden" name = "masterid" value = "${board.masterid}">
	<input type = "hidden" name = "replynumber" value = "${board.replynumber}">
	<input type = "hidden" name = "replystep" value = "${board.replystep}">
	<input type = "submit" value = "저 장">
	<input type = "reset" value = "취 소">
	</td>
</tr>

</table>
</c:if>
</form>
	</div>
	</div>
	</div>
	</div>
	<div class="clearfix"></div>
<%@ include file = "/incl/footer.jsp" %>

</body>
</html>