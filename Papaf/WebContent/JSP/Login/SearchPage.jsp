<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	
	<title>:: e-mail/비밀번호 찾기 ::</title>
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
	<!-- 이메일찾는 페이지 -->
	<div data-role="page" id="email" data-theme="d">
		<div data-role="navbar" id="nav">
			<ul>
				<li><a class="selected" data-icon="search">e-mail 찾기</a></li>
				<li><a href="#password" id="email" data-icon="search">비밀번호 찾기</a></li>
			</ul>
		</div>

		<div data-role="content">
			<form method="post" action="#">
				<div class="ui-field-contain">
					<label for="name">이름</label><input type="text" name="name" id="name" data-clear-btn="true"> 
					<label for="bday">생년월일</label><input type="date" name="bday" id="bday" value="">

				</div>
				<center>
					<input type="submit" value="확인" data-inline="true" data-theme="a" data-icon="check" /> 
					<a href="../index.jsp" rel="external" data-role="button" data-icon="delete" data-inline="true">취소</a>
				</center>
			</form>
			<div align="center">
				<p>확인 눌렀을때 이 부분에 뿌려뿌렷</p>
				<p>email****@naver.com</p>
				<p>likethat****@naver.com</p>
				<p>understand****@daum.com</p>
			</div>
		</div>
	</div>

	<!-- 비밀번호 찾는 페이지-->
	<div data-role="page" id="password" data-theme="d">
		<div data-role="navbar" id="nav">
			<ul>
				<li><a href="#email" data-icon="search" data-direction="reverse">e-mail 찾기</a></li>
				<li><a class="selected" id="email" data-icon="search">비밀번호 찾기</a></li>
			</ul>
		</div>
		<div data-role="content">
			<form method="post" action="#">
				<div class="ui-field-contain">
					<label for="name">이름</label> <input type="text" name="name" id="name" data-clear-btn="true"> <label for="email">e-mail</label>
					<input type="email" name="email" id="email" data-clear-btn="true">
				</div>
				<center>
					<a href="#alert-dialog" data-rel="dialog" data-transition="pop" data-role="button" data-inline="true" data-theme="a" data-icon="check">확인</a> 
					<a href="../index.jsp" rel="external" data-role="button" data-icon="delete" data-inline="true">취소</a>
				</center>
			</form>
		</div>
	</div>

	<!-- 다이얼로그 -->
	<div data-role="page" id="alert-dialog" data-theme="d">
		<div data-role="header" data-theme="c">
			<h1>알림</h1>
		</div>

		<div data-role="content">
			<p align="center">
				귀하의 이메일로 비밀번호가 전송되었습니다.<br /> 이메일을 확인해주세요.<br /> 아래의 확인 버튼을 누르면
				로그인 페이지로 이동합니다.
			</p>
			<a href="../index.jsp" rel="external" data-role="button" data-transition="fade" data-theme="c">확인</a>
		</div>
	</div>
</body>
</html>