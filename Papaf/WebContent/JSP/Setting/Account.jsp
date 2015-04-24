<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	
	<title>:: �������� ::</title>
	
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
			font-family: "���� ���";
		}
	</style>
</head>
<body>
	<div data-role="page" id="page" data-theme="d">
		<div data-role="header" data-theme="c" data-position="fixed">
			<center>
				<font color="red">U</font>ser <font color="#de5a0e">A</font>ccoun<font color="gray">t</font>
			</center>
			<a href="Setting.jsp" rel="external" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div data-role="content">
			<ul data-role="listview">
				<li><a href="#changePw" data-transition="slide">��й�ȣ����</a></li>
				<li><a href="#remove" data-transition="slide">ȸ��Ż��</a></li>
			</ul>
		</div>
	</div>

	<!-- change password page -->
	<div data-role="page" id="changePw" data-theme="d">
		<div data-role="header" data-theme="c" data-position="fixed">
			<center>
				<font color="red">U</font>ser <font color="#de5a0e">A</font>ccoun<font color="gray">t</font>
			</center>
			<a data-rel="back" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div data-role="content">
			<form>
				<label for="cur_pw">���� ��й�ȣ</label> <input type="password" name="cur_pw" id="cur_pw" value="" data-clear-btn="true" /> 
				<label for="new_pw">�� ��й�ȣ</label> <input type="password" name="new_pw" id="new_pw" value="" data-clear-btn="true" /> 
				<label for="check_new_pw">�� ��й�ȣ Ȯ��</label> <input type="password" name="check_new_pw" id="check_new_pw" value="" data-clear-btn="true" />

				<center>
					<input type="submit" value="Ȯ��" data-inline="true" data-theme="a" data-icon="check" /> 
					<a href="Account.jsp" rel="external" data-role="button" data-icon="delete" data-inline="true">���</a>
				</center>
			</form>
		</div>
	</div>

	<!-- ȸ��Ż�� -->

	<div data-role="page" id="remove" data-theme="d">
		<div data-role="header" data-theme="c" data-position="fixed">
			<center>
				<font color="red">U</font>ser <font color="#de5a0e">A</font>ccoun<font color="gray">t</font>
			</center>
			<a data-rel="back" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div data-role="content">
			<center>
				<h3>ȸ��Ż�� ��û</h3>
			</center>
			<form>
				<label for="check_pw">��й�ȣ Ȯ��</label> <input type="password" name="check_pw" id="check_pw" value="" data-clear-btn="true" />

				<fieldset data-role="controlgroup">
					<legend>Ż�� ����</legend>
					<input type="radio" name="choice" id="choice1" value="on">
					<label for="choice1">ū ������ ���� �ʾƼ�</label> <input type="radio" name="choice" id="choice2" value="off"> 
					<label for="choice2">�� ��� �󵵼��� ���Ƽ�</label> <input type="radio" name="choice" id="choic3" value="off"> 
					<label for="choic3">IT�о߿��� ���� ���� �ʾƼ�</label> <input type="radio" name="choice" id="choice4" value="other"> 
					<label for="choice4">���������� ���� ���������</label><input type="radio" name="choice" id="choice5" value="other">
					<label for="choice5">��Ÿ</label>
				</fieldset>
				<center>
					<a href="#popup" data-rel="dialog" data-theme="a" data-icon="check" data-role="button" data-inline="true">Ȯ��</a> 
					<a href="Account.jsp" rel="external" data-role="button" data-icon="delete" data-inline="true">���</a>
				</center>
			</form>
		</div>
	</div>

	<!-- dialog -->
	<div data-role="page" id="popup" data-theme="d" data-overlay-theme="d">
		<div data-role="header" data-theme="c">
			<h1>�˸�</h1>
		</div>
		<div data-role="content">
			<center>
				<p>ȸ��Ż�� ���������� ó���Ǿ����ϴ�.</p>
				<p>�׵��� �̿����ּż� �����մϴ�.</p>
				<a href="../index.jsp" data-role="button" rel="external" data-theme="a" data-inline="true">�ݱ�</a>
			</center>
		</div>
	</div>
</body>
</html>