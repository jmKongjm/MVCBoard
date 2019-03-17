<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<!-- Basic Page Needs
    ================================================== -->
<meta charset="utf-8">
<!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:if test = "${empty userid}">
<title>홈페이지</title>
<meta name="description" content="">
<meta name="author" content="">
</c:if>

<c:if test = "${!empty userid}">
<title>환영합니다</title>
<meta name="description" content="">
<meta name="author" content="">
</c:if>
<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/css/font-awesome.css">

<!-- Slider
    ================================================== -->
<link href="/css/owl.carousel.css" rel="stylesheet" media="screen">
<link href="/css/owl.theme.css" rel="stylesheet" media="screen">
<link href="/css/animate.css" rel="stylesheet" media="screen">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="/style.css">
<link href='https://fonts.googleapis.com/css?family=PT+Serif:400,400i,700|Montserrat:100,200,300,300i,400,500,600,700,800,900' rel='stylesheet' type='text/css'>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>