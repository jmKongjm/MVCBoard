
<%@ page import = "java.io.IOException" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
<%@ include file="/incl/staticheader.jsp" %>
</head>
<body class = "page">
<%@ include file = "/incl/header.jsp" %>
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
      


<table>
<c:forEach var = "board" items = "${lists}">
<tr>
<td>${board.name}</td>
<td><a href = '<c:url value = "/Board.do?action=view&bbsno=${board.bbsno}&page=${page}"/>'>${board.subject}</a>
</td>
<td>${board.readcount}</td> 
</tr>
</c:forEach>
<tr>
<td>&nbsp;</td>
<td>
<%

Integer tempTotalPageCount = (Integer)pageContext.getAttribute("totalPageCount",PageContext.REQUEST_SCOPE);
if(tempTotalPageCount == null) tempTotalPageCount = new Integer(1);
Integer tempNowPage = (Integer)pageContext.getAttribute("page",PageContext.REQUEST_SCOPE);
if(tempNowPage == null) tempNowPage = new Integer(1);
int totalPageCount = tempTotalPageCount.intValue();
int nowPage = tempNowPage.intValue();
int totalPageBlock = (int) (Math.ceil(totalPageCount/10.0));
int nowPageBlock = (int) Math.ceil(nowPage/10.0);
int startPage = (nowPageBlock-1)*10 + 1;
int endPage = 0;


if(totalPageCount > nowPageBlock*10)
{
	endPage = nowPageBlock * 10;
}
else
{
	endPage = totalPageCount;
}
try
{
	if(nowPageBlock>1)
	{
		out.print("<a href=\"/Board.do?page=" + (startPage-1)+"&action=list\">");
		out.print("◀</a>");
		
	}
	for(int i = startPage; i<= endPage; i++)
	{
		out.print(" [");
		out.print("<a href = \"/Board.do?page=" + (i)+"&action=list\">");
		out.print(i);
		out.print("</a>] ");
	}
	if(nowPageBlock<totalPageBlock)
	{
		out.print("<a href=\"/Board.do?page="+(endPage+1)+"&action=list\">");
		out.print("▶</a>");
	}
}catch(IOException ioe)
{
	throw new JspException(ioe);
}finally{}
%></td>
<td>&nbsp;</td>
</tr>

</table>
</div>
</div>
</div>
</div>
<div class="clearfix"></div>
<%@ include file = "/incl/footer.jsp" %>
</body>
</html>