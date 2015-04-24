<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	
	<title>회원가입</title>
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
	
	<style type="text/css">
		h1 {
			font-family: "맑은 고딕";
		}
	</style>
</head>
<body>
	<div data-role="page" id="page" data-theme="d">
		<div data-role="header" data-theme="c">
			<h1>회원가입</h1>
		</div>
		<div data-role="content" class="ui-content">
			<form method="post" action="JoinProc.jsp">
				<div class="ui-field-contain">
					<label for="name">이름</label><input type="text" name="name" id="name"> 
					<label for="email">e-mail</label><input type="email" name="email" id="email"> 
					<label for="pw">비밀번호</label><input type="password" name="pass" id="pass">
					<label for="bday">생년월일</label><input type="date" name="bday" id="bday">
				</div>
				<center>
					<input type="submit" data-inline="true" value="가입" data-theme="a" data-icon="check"> 
					<a data-rel="back"><input name="reset" type="button" onClick="javascript:history.go(-1)" value="취소" data-icon="delete" data-inline="true"></a>
				</center>
			</form>
		</div>
	</div>
</body>
</html>
