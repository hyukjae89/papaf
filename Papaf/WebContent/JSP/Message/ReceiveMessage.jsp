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
			<a href="Message.jsp" rel="external" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div data-role="content">
			<table>
				<tr>
					<th>제목</th>
					<td colspan="3">//제목제목제목//</td>
				</tr>
				<tr>
					<th width="25%">보낸 사람</th>
					<td width="25%">//보낸 사람//</td>
					<th width="25%">날짜</th>
					<td width="25%">//날짜//</td>
				</tr>
				<tr>
					<td colspan="4">
						<hr>
						<p id="user_content">데이터 받아올곳</p>
						<hr>
					</td>
				</tr>
			</table>
		</div>
		<div data-role="footer" data-theme="d" data-position="fixed">
			<div data-role="controlgroup" data-type="horizontal" id="buttons">
				<a href="ReMessage.jsp" rel="external" data-role="button" data-icon="edit">답장</a> 
				<a href="Message.jsp" rel="external" data-role="button" data-icon="check">확인</a> 
				<a href="#del" data-rel="popup" data-role="button" data-transition="pop" data-icon="delete">삭제</a>
			</div>
		</div>

		<!-- popup -->
		<div data-role="popup" id="del" data-theme="d">
			<ul data-role="listview" data-inset="true" style="min-width: 100px;" data-theme="d" data-shadow="false" data-icon="false">
				<li data-shadow="false"><a href="#">Yes</a></li>
				<li data-shadow="false"><a href="#">No</a></li>
			</ul>
		</div>
	</div>
</body>
</html>