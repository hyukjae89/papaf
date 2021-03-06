<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	
	<title>jQuery Mobile Web App</title>
	
	<link href="main.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
	
	<style type="text/css">
		center {
			padding-top: 10px;
			padding-bottom: 10px;
			font-size: 16px;
			font-family: "맑은 고딕";
		}
	</style>

</head>
<body>

	<div data-role="page" id="page" data-theme="d">
		<div data-role="header" data-theme="c" data-position="fixed">
			<center>
				<font color="red">F</font>ri<font color="#de5a0e">e</font>n<font color="gray">d</font>
			</center>
			<a href="Friends.jsp" rel="external" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div data-role="content">
			<ul data-role="listview" data-inset="false" data-filter="true" data-filter-theme="c" data-filter-placeholder="이름을 입력하세요.">
				<li><a href="#friendpopup" data-rel="popup">Adam Kinkaid</a></li>
				<li><a href="#friendpopup" data-rel="popup">Alex Wickerham</a></li>
				<li><a href="#friendpopup" data-rel="popup">Avery Johnson</a></li>
				<li><a href="#friendpopup" data-rel="popup">Bob Cabot</a></li>
				<li><a href="#friendpopup" data-rel="popup">Caleb Booth</a></li>
				<li><a href="#friendpopup" data-rel="popup">Christopher Adams</a></li>
				<li><a href="#friendpopup" data-rel="popup">Culver James</a></li>
				<li><a href="#friendpopup" data-rel="popup">David Walsh</a></li>
				<li><a href="#friendpopup" data-rel="popup">Drake Alfred</a></li>
				<li><a href="#friendpopup" data-rel="popup">Elizabeth Bacon</a></li>
				<li><a href="#friendpopup" data-rel="popup">Emery Parker</a></li>
				<li><a href="#friendpopup" data-rel="popup">Enid Voldon</a></li>
			</ul>
		</div>

		<!-- popup -->
		<div data-role="popup" id="friendpopup" data-theme="d">
			<ul data-role="listview" data-inset="true" style="min-width: 100px;" data-theme="d" data-shadow="false" data-icon="false">
				<li data-shadow="false"><a href="../06_Message/ReMessage.jsp" rel="external">메세지보내기</a></li>
				<li data-shadow="false"><a href="#">친구끊기</a></li>
				<li data-shadow="false"><a href="#">친구차단</a></li>
			</ul>
		</div>
		<!-- end -->
	</div>
</body>
</html>