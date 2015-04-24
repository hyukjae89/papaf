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
	</style>
</head>
<body>

	<div data-role="page" id="page" data-theme="d">
		<div data-role="header" data-theme="c" data-position="fixed">
			<center>
				<font color="red">A</font>lert <font color="#de5a0e">S</font>ettin<font color="gray">g</font>
			</center>
			<a href="Setting.jsp" rel="external" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div data-role="content">
			<form>
				<center>
					<div data-role="fieldcontain">
						<label for="alert1">메세지 알림</label> 
						<select name="alert1" id="alert1" data-role="slider">
							<option value="off">Off</option>
							<option value="on">On</option>
						</select> 
						<label for="alert2">내소식 알림</label> 
						<select name="alert2" id="alert2" data-role="slider">
							<option value="off">Off</option>
							<option value="on">On</option>
						</select>
					</div>
					<input type="submit" value="확인" data-inline="true" data-shadow="false" data-theme="a"> 
					<a data-rel="back" data-role="button" data-shadow="false" data-inline="true">취소</a>
				</center>
			</form>
		</div>
	</div>
</body>
</html>