<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	
	<title>:: �޼��� �ۼ� ::</title>
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
	</head>
	<style type="text/css">
		center {
			padding-top: 10px;
			padding-bottom: 10px;
			vertical-align: middle;
		}
		
		body {
			font-family: "���� ���";
		}
	</style>
</head>
<body>

	<div data-role="page" id="page" data-theme="d">
		<div data-role="header" data-theme="c" data-position="fixed">
			<center>
				<font color="red">N</font>ew <font color="#de5a0e">M</font>essag<font color="gray">e</font>
			</center>
			<a href="message.html" rel="external" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div data-role="content">
			<form method="post" action="#">
				<label for="title">����</label> <input type="text" name="title" id="title" data-clear-btn="true" data-shadow="false">

				<fieldset class="ui-field-contain">
					<label for="selectFriends" class="select">�޴� ���</label> 
					<select name="selectFriends" id="selectFriends" multiple="multiple" data-native-menu="false" data-icon="arrow-d" data-iconpos="right">
						<option>�޴� ����� �����ϼ���.</option>
						<option value="friend1">ģ��1</option>
						<option value="friend2">ģ��2</option>
						<option value="friend3">ģ��3</option>
						<option value="friend4">ģ��4</option>
					</select>
				</fieldset>
				<label for="cnt">����</label>
				<textarea name="cnt" id="cnt" data-clear-btn="true"></textarea>
				<!--style="height:250px"-->


				<div align="center">
					<input type="submit" value="Ȯ��" data-inline="true" data-shadow="false" data-theme="a"> 
					<a data-rel="back" data-role="button" data-shadow="false" data-inline="true">���</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>