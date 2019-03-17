<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 성공 여부</title>
<%@ include file="/incl/staticheader.jsp" %>
</head>
<body class = "page">
<%@ include file = "/incl/header.jsp" %>
<!-- banner Page
    ==========================================-->
<div id="page-banner" style="background-image: url(img/photo-typo.jpg);">
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
      

<h1><%=request.getAttribute("message") %></h1>

</div>
</div>
</div>
</div>
<div class="clearfix"></div>
<%@ include file = "/incl/footer.jsp" %>
</body>
</html>