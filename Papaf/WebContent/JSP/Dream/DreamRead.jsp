<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
	
	<link href="../framework/jquery.mobile-1.4.3.css" rel="stylesheet" type="text/css">
	<script src="../framework/jquery-1.11.1.js"></script>
	<script src="../framework/jquery.mobile-1.4.3.js"></script>

	<%@page import="papaf_bean.DreamBean" %>
	<jsp:useBean id="dMgr" class="papaf_mgr.DreamMgr"></jsp:useBean>
	
	<%
		  request.setCharacterEncoding("EUC-KR");
		  int number = Integer.parseInt(request.getParameter("number"));
		  String id = (String)session.getAttribute("idKey");
		  
		  DreamBean bean = dMgr.getDream(number);	//게시물 가져오기
		  String title = bean.getTitle();
		  String closing_date = bean.getClosing_date();
		  String create_date = bean.getCreate_date();
	      String detail_1 = bean.getDetail_1();
	      String detail_2 = bean.getDetail_2();
	      String detail_3 = bean.getDetail_3();
	      String detail_4 = bean.getDetail_4();
		  session.setAttribute("bean", bean);	//게시물을 세션에 저장
	%>
	
	<title>Dream Read</title>
</head>
<body>
	<div id="dreamRead" data-role="page">
		<div data-role="header">
			<h1>Dream Read</h1>
		</div>
		<div data-role="content" id="contentDiv">
			<div data-role="fieldcontain">
				<label for="title" style="text-align: center">Title</label>
				<label for="title" style="text-align: center"><%=title %></label>
			</div>
			<div data-role="fieldcontain">
				<label for="detail_1" style="text-align: center">detail 1</label>
				<label for="detail_1" style="text-align: center"><%=detail_1 %></label>
				<label for="detail_2" style="text-align: center">detail 2</label>
				<label for="detail_2" style="text-align: center"><%=detail_2 %></label>
				<label for="detail_3" style="text-align: center">detail 3</label>
				<label for="detail_3" style="text-align: center"><%=detail_3 %></label>
				<label for="detail_4" style="text-align: center">detail 4</label>
				<label for="detail_4" style="text-align: center"><%=detail_4 %></label>
			</div>
		</div>
	</div>
</body>
</html>