<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	
	<title>1:N Mentoring</title>
	
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
	
	<style type="text/css">
		.title {
			padding-top: 1%;
			padding-bottom: 1%;
		}
		
		.ui-li-content {
			color: red;
		}
		
		.ui-li-content2 {
			color: blue;
		}
		
		center {
			padding-top: 10px;
			padding-bottom: 10px;
			font-family: "���� ���";
		}
		
		label {
			color: #5B5B5B;
			font-family: "���� ���"
		}
	</style>
</head>
<body>

	<div data-role="page" id="page" data-theme="d">
		<div data-role="header" data-theme="c" data-position="fixed">
			<a href="Mento.jsp" rel="external" data-icon="back" data-iconpos="notext"></a>
			<center>
				<font color="red">1</font>:<font color="#de5a0e">N</font> <font color="gray">M</font>entoring
			</center>
		</div>
		<div data-role="content" data-theme="d">
			<form method="post" action="#">
				<label>����</label> <input type="text" name="title" id="title" data-clear-btn="true" data-shadow="false">

				<fieldset class="ui-field-contain">
					<label>ī�װ�</label>
					<br> 
					<select name="ct" id="ct" data-native-menu="false" data-shadow="false">
						<option>�����ϱ�</option>
						<option value="job">����</option>
						<option value="dev">����</option>
						<option value="etc">etc.</option>
					</select>
				</fieldset>
				<label for="cnt">����</label>
				<textarea name="cnt" id="cnt" data-clear-btn="true"></textarea>
				<!--style="height:250px"-->
				<div align="center">
					<input type="submit" value="Ȯ��" data-inline="true" data-shadow="false" data-theme="a"> 
					<a data-rel="back"><input type="reset" value="���" data-inline="true" data-shadow="false"></a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
