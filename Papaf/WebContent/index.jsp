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
			font-family: "맑은 고딕"
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
				alert("이메일을 입력해 주세요.");
				document.loginFrm.id.focus();
				return;
			}
			if (document.loginFrm.pass.value == "") {
				alert("비밀번호를 입력해 주세요.");
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
					<input type="checkbox" name="checkboxEmail" id="checkboxEmail" data-theme="c"> <label for="checkboxEmail">e-mail 저장</label> 
					<input type="checkbox" name="checkboxAutoLogin" id="checkboxAutoLogin" data-theme="c"> <label for="checkboxAutoLogin">자동로그인</label>
				</fieldset>
				<br>
				<input type="submit" data-inline="true" data-theme="a" value="로그인">
				<br>
				<a href="JSP/Login/Join.jsp" rel="external">아직 회원이 아니신가요?</a> / <a href="JSP/Login/SearchPage.jsp" rel="external">e-mail 또는 비밀번호를 잊으셨나요?</a>
			</form>
		</div>
	</div>
</body>
</html>
