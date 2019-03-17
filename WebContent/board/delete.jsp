
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 삭제 화면</title>
<%@ include file="/incl/staticheader.jsp" %>
</head>
<body class = "page">

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
      

<h3>글 삭제 비밀번호 입력</h3>
<form action='<c:url value="/Board.do"/>' method="post">
<input type = "hidden" name="action" value="${action}">
<input type ="hidden" name = "bbsno" value="${bbsno}">
<input type = "hidden" name = "replynumber" value="${replynumber}">
<input type = "password" name = "password">
<input type = "submit" value = "삭 제">
</form>
</div>
</div>
</div>
</div>
<div class="clearfix"></div>
<%@ include file = "/incl/footer.jsp" %>
</body>
</html>