<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	
	<title>Setting and help</title>
	
	<link href="../CSS/main.css" rel="stylesheet" type="text/css" />
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
				<font color="red">S</font>etting <font color="#de5a0e">＆</font> <font color="gray">H</font>elp
			</center>
			<a href="../00_Main/Main.jsp" rel="external" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div id="content">
			<table>
				<tr>
					<td class="right"><a href="Account.jsp" rel="external"><img src="../Slice/setting/account.png"></a></td>
					<td><a href="Alert.jsp" rel="external"><img src="../Slice/setting/alert.png"></a></td>
				</tr>
				<tr>
					<td class="right"><a href="Friends.jsp" rel="external"><img src="../Slice/setting/friend.png"></a></td>
					<td><a href="Question.jsp" rel="external"><img src="../Slice/setting/qna.png"></a></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
