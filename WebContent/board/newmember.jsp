<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 입력</title>
<%@ include file="/incl/staticheader.jsp" %>
</head>
<body class = "page">
<%@ include file = "/incl/header.jsp" %>
<!-- banner Page
    ==========================================-->
<div id="page-banner" style="background-image: url(img/photo-typo.jpg);">
  <div class="content  wow fdeInUp">
    <div class="container ">
      <h1>회원 가입 화면입니다.</h1>
    </div>
  </div>
</div>
 

<div id="page-body">
  <div class="container">
    <div class="row"> 
      <!--blog posts container-->
      <div class="col-md-offset-3 col-md-6 page-block">

<h1>회원 정보 입력</h1>
<form action="/Member.do" method="post">
<fieldset>
<legend>회원정보</legend>
<table>
<tr>
<td>아이디</td>
	<td><input type = "text" name = "userid" value = "${member.userid}"></td>
</tr>
<tr>
<td>이름</td>
	<td><input type = "text" name = "name" value = "${member.name}"></td>
</tr>
<tr>
<td>비밀번호</td>
	<td><input type = "password" name = "password" value = "${member.password}"></td>
</tr>

<tr>
<td>이메일</td>
	<td><input type = "text" name = "email" value = "${member.email}"></td>
</tr>
<tr>
<td>주소</td>
	<td><input type = "text" name = "address" value = "${member.address}"></td>
</tr>

<tr>
	<td><input type = "submit" value = "저 장">
	<input type = "reset" value = "취 소">
	</td>
</tr>
</table>

</fieldset>
</form>
</div>
</div>
</div>
</div>
<div class="clearfix"></div>
<%@ include file = "/incl/footer.jsp" %>
</body>
</html>
