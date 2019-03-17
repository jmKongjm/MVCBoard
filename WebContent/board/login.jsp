<%@ page import = "java.io.IOException" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<%@ include file="/incl/staticheader.jsp" %>
</head>
<body class = "page">
<%@ include file = "/incl/header.jsp" %>
<!-- banner Page
    ==========================================-->
<div id="page-banner" style="background-image: url(img/photo-1478.jpg);">
  <div class="content  wow fdeInUp">
    <div class="container ">
      <h1>로그인 화면입니다.</h1>
    </div>
  </div>
</div>
 

<div id="page-body">
  <div class="container">
    <div class="row"> 
      <!--blog posts container-->
      <div class="col-md-offset-3 col-md-6 page-block">
      

<c:if test = "${empty userid}">
<c:out value = "${msg}" /> <br>
<h1>로그인 </h1>
<form action = "/login.do" method = "post">
아이디 : <input type = "text" name = "userid"><br>
비밀번호 : <input type = "password" name = "password"><br>
<input type="hidden" name = "action" value = "login">
<input type = "submit" value = "로그인">
<input type = "reset" value = "취 소">


</form>
<p>아이디가 없으면 <a href = "/board/newmember.jsp">회원가입</a>하세요.
</c:if>
<c:if test="${!empty userid}">
<!--  ${userid}님 환영합니다.<br> -->
<a href = "/home.jsp">홈으로 이동하기</a>
<br><br>
<% 

out.println("로그아웃하시겠습니까?");
%><br>
<form action = "/login.do" method = "post">
<input type = "submit" value = "네">
<input type = "hidden" value = "logout" name = "action"></form>
</c:if>
</div>
</div>
</div>
</div>
<div class="clearfix"></div>
<%@ include file = "/incl/footer.jsp" %>

</body>
</html> 