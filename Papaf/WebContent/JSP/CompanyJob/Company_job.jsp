<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>Company ＆ Job</title>
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
	<!-- company page -->
	<div data-role="page" id="company" data-theme="d">
		<div data-role="header" data-theme="c" data-position="fixed">
			<center>
				<font color="red">C</font>ompany <font color="#de5a0e">＆</font>&nbsp;<font color="gray">J</font>ob
			</center>
			<a href="../00_Main/Main.jsp" rel="external" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div data-role="navbar" id="nav">
			<ul>
				<li><a class="selected">COMPANY</a></span></li>
				<li><a href="#job" data-direction="reverse">JOB</a></li>
			</ul>
		</div>
		<div data-role="content" data-theme="d">
			<ul data-role="listview" data-inset="true" data-divider-theme="c" data-content-theme="d" data-filter="true" data-filter-theme="d" data-filter-placeholder="회사명을 입력하세요. ">
				<li data-role="list-divider">A~G</li>
				<li><a href="#">Amazon</a></li>
				<li><a href="#">CDNetWorks</a></li>
				<li><a href="#">CJ시스템즈</a></li>
				<li><a href="#">DKUNC</a></li>
				<li><a href="#">Google</a></li>
				<li><a href="#">GSITM</a></li>
				<li data-role="list-divider">H~N</li>
				<li data-role="list-divider">O~U</li>
				<li data-role="list-divider">H~N</li>
				<li data-role="list-divider">V~Z</li>
				<li data-role="list-divider">ㄱ~ㅅ</li>
				<li data-role="list-divider">ㅇ~ㅎ</li>
			</ul>
		</div>
	</div>
	</div>


	<!-- job page -->
	<div data-role="page" id="job" data-theme="d">
		<div data-role="header" data-theme="c">
			<center>
				<font color="red">C</font>ompany <font color="#de5a0e">＆</font><font color="gray">J</font>ob
			</center>
			<a href="main.html" rel="external" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div data-role="navbar" id="nav">
			<ul>
				<li><a href="#company">COMPANY</a></span></li>
				<li><a class="selected">JOB</a></li>
			</ul>
		</div>
		<div data-role="content" data-theme="d">
			<ul data-role="listview" data-inset="true" data-shadow="false" data-filter="true" data-filter-placeholder="직업을 입력하세요." data-filter-theme="d" data-divider-theme="c" data-content-theme="d">
				<li data-role="list-divider">A~G</li>
				<li data-role="list-divider">H~N</li>
				<li data-role="list-divider">O~U</li>
				<li data-role="list-divider">H~N</li>
				<li data-role="list-divider">V~Z</li>
				<li data-role="list-divider">ㄱ~ㅅ</li>
				<li data-role="list-divider">ㅇ~ㅎ</li>
			</ul>
		</div>
	</div>
</body>
</html>
