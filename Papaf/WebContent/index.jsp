<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<link rel="apple-touch-icon-precomposed" href="Appicon.png" />
	
	<title>LOGIN</title>
	
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
	
	<style type="text/css">
		h1 {
			letter-spacing: 5px;
			font-family: "���� ���"
		}
		
		body {
			text-align: center;
		}
		
		a {
			text-decoration: none;
			color: black;
		}
	</style>
	
	<script type="text/javascript">
		function loginCheck() {
			if (document.loginFrm.email.value == "") {
				alert("�̸����� �Է��� �ּ���.");
				document.loginFrm.id.focus();
				return;
			}
			if (document.loginFrm.pass.value == "") {
				alert("��й�ȣ�� �Է��� �ּ���.");
				document.loginFrm.pass.focus();
				return;
			}
			document.loginFrm.submit();
		}
	</script>
</head>

<body>
	<div data-role="page" id="page" data-theme="d">
		<div data-role="header" data-theme="c">
			<h1>WELCOME</h1>
		</div>
		<div data-role="content">
			<br>
			<form name="loginFrm" method="post" action="JSP/Login/loginProc.jsp">
				<div data-role="fieldcontain">
					<label for="email">e-mail</label> <input type="email" name="email" id="email" data-clear-btn="true">
				</div>
				<div data-role="fieldcontain">
					<label for="passwordinput">Password</label> <input type="password" name="passwordinput" id="passwordinput" value="" data-clear-btn="true" />
				</div>
				<br>
				<fieldset data-role="controlgroup" data-type="horizontal" data-mini="true">
					<input type="checkbox" name="checkboxEmail" id="checkboxEmail" data-theme="c"> <label for="checkboxEmail">e-mail ����</label> 
					<input type="checkbox" name="checkboxAutoLogin" id="checkboxAutoLogin" data-theme="c"> <label for="checkboxAutoLogin">�ڵ��α���</label>
				</fieldset>
				<br>
				<input type="submit" data-inline="true" data-theme="a" value="�α���">
				<br>
				<a href="JSP/Login/Join.jsp" rel="external">���� ȸ���� �ƴϽŰ���?</a> / <a href="JSP/Login/SearchPage.jsp" rel="external">e-mail �Ǵ� ��й�ȣ�� �����̳���?</a>
			</form>
		</div>
	</div>
</body>
</html>
