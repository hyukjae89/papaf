<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	
	<title>jQuery Mobile Web App</title>
	
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
	<style type="text/css">
		center {
			padding-top: 10px;
			padding-bottom: 10px;
			vertical-align: middle;
		}
		
		body {
			font-family: "맑은 고딕";
		}
		
		#buttons {
			text-align: center;
		}
		
		table {
			border: 0;
			width: 100%;
		}
	</style>
</head>
<body>

	<div data-role="page" id="page" data-theme="d">
		<div data-role="header" data-theme="c" data-position="fixed">
			<center>
				<font color="red">M</font>es<font color="#de5a0e">s</font>ag<font color="gray">e</font>
			</center>
			<a data-rel="back" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div data-role="content">
			<form method="post" action="#">
				<label for="title">제목</label> <input type="text" name="title" id="title" data-clear-btn="true" data-shadow="false"> 
				<label>받는 사람</label>
				<p>//받는 사람//</p>
				<label for="cnt">내용</label>
				<textarea name="cnt" id="cnt" data-clear-btn="true"></textarea>
				<center>
					<input type="submit" value="확인" data-inline="true" data-shadow="false" data-theme="a"> 
					<a data-rel="back" data-role="button" data-shadow="false" data-inline="true">취소</a>
				</center>
			</form>
		</div>
	</div>
</body>
</html>