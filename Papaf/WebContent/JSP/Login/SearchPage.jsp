<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	
	<title>:: e-mail/��й�ȣ ã�� ::</title>
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
	<style type="text/css">
		center {
			padding-top: 10px;
			padding-bottom: 10px;
			font-size: 16px;
			font-family: "���� ���";
		}
		
		navbar {
			height: 93px;
			margin: 0;
			padding: 0;
			background-color: white;
		}
		
		.selected {
			border-bottom: 4px solid #de5a0e;
		}
		
		a {
			text-decoration: none;
			color: black;
		}
		
		#nav {
			background-color: #f0d6c7;
		}
	</style>
</head>

<body>
	<!-- �̸���ã�� ������ -->
	<div data-role="page" id="email" data-theme="d">
		<div data-role="navbar" id="nav">
			<ul>
				<li><a class="selected" data-icon="search">e-mail ã��</a></li>
				<li><a href="#password" id="email" data-icon="search">��й�ȣ ã��</a></li>
			</ul>
		</div>

		<div data-role="content">
			<form method="post" action="#">
				<div class="ui-field-contain">
					<label for="name">�̸�</label><input type="text" name="name" id="name" data-clear-btn="true"> 
					<label for="bday">�������</label><input type="date" name="bday" id="bday" value="">

				</div>
				<center>
					<input type="submit" value="Ȯ��" data-inline="true" data-theme="a" data-icon="check" /> 
					<a href="../index.jsp" rel="external" data-role="button" data-icon="delete" data-inline="true">���</a>
				</center>
			</form>
			<div align="center">
				<p>Ȯ�� �������� �� �κп� �ѷ��ѷ�</p>
				<p>email****@naver.com</p>
				<p>likethat****@naver.com</p>
				<p>understand****@daum.com</p>
			</div>
		</div>
	</div>

	<!-- ��й�ȣ ã�� ������-->
	<div data-role="page" id="password" data-theme="d">
		<div data-role="navbar" id="nav">
			<ul>
				<li><a href="#email" data-icon="search" data-direction="reverse">e-mail ã��</a></li>
				<li><a class="selected" id="email" data-icon="search">��й�ȣ ã��</a></li>
			</ul>
		</div>
		<div data-role="content">
			<form method="post" action="#">
				<div class="ui-field-contain">
					<label for="name">�̸�</label> <input type="text" name="name" id="name" data-clear-btn="true"> <label for="email">e-mail</label>
					<input type="email" name="email" id="email" data-clear-btn="true">
				</div>
				<center>
					<a href="#alert-dialog" data-rel="dialog" data-transition="pop" data-role="button" data-inline="true" data-theme="a" data-icon="check">Ȯ��</a> 
					<a href="../index.jsp" rel="external" data-role="button" data-icon="delete" data-inline="true">���</a>
				</center>
			</form>
		</div>
	</div>

	<!-- ���̾�α� -->
	<div data-role="page" id="alert-dialog" data-theme="d">
		<div data-role="header" data-theme="c">
			<h1>�˸�</h1>
		</div>

		<div data-role="content">
			<p align="center">
				������ �̸��Ϸ� ��й�ȣ�� ���۵Ǿ����ϴ�.<br /> �̸����� Ȯ�����ּ���.<br /> �Ʒ��� Ȯ�� ��ư�� ������
				�α��� �������� �̵��մϴ�.
			</p>
			<a href="../index.jsp" rel="external" data-role="button" data-transition="fade" data-theme="c">Ȯ��</a>
		</div>
	</div>
</body>
</html>