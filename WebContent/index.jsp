<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset = "UTF-8">
<link rel = "stylesheet" href = "./css/default.css" media = "screen">
<title>첫 화면</title>

</head>
<body>
<table class = "layout">
<tr height = "50"><td>
<jsp:include page = "/incl/header.jsp" />
</td></tr>
<tr height = "500" valign = "top"> <td>
<!-- 여기서부터 본문 -->
<jsp:include page = "${empty param.url ? '/home.jsp' : param.url }"/>
<br>
</td></tr>
<tr height = "50"><td>
<jsp:include page = "/incl/footer.jsp" />
</td></tr>


</table>

</body></html>