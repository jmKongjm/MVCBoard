<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Navigation
    ==========================================-->
<nav id="top-menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="/home.jsp"><img src="/img/logo-top.png" class="img-responsive"><span>홈페이지</span></a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> 
      
      <!--nav icon--> 
      <a id="nav-icon"> <span></span> <span></span> <span></span> </a> 
      <!--nav icon end-->
      <c:if test = "${empty userid}">
      <ul id="nav-top" class="nav navbar-nav navbar-right">
      <li> <a href = "/board/login.jsp" class = "page-scroll">로그인하기</a></li>
       <li> <a href = '<c:url value="/Board.do?action=write"/>' class = "page-scroll">게시글 작성</a></li>
       <li> <a href = '<c:url value="/Board.do?action=list"/>' class = "page-scroll">게시글 목록</a></li>
      </ul>
      </c:if>
      <c:if test = "${!empty userid}">
       <ul id="nav-top" class="nav navbar-nav navbar-right">
      <li> <a href = "/board/login.jsp" class = "page-scroll">로그아웃하기</a></li>
       <li> <a href = '<c:url value="/Board.do?action=write"/>' class = "page-scroll">게시글 작성</a></li>
       <li> <a href = '<c:url value="/Board.do?action=list"/>' class = "page-scroll">게시글 목록</a></li>
      </ul>
      </c:if>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>







