<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>:: ÀÚÁÖ¹¯´ÂÁú¹® ::</title>
	
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
	
	<style type="text/css">
		center {
			padding-top: 10px;
			padding-bottom: 10px;
			font-size: 16px;
			font-family: "¸¼Àº °íµñ";
		}
		
		.date {
			font-size: 11px;
			color: gray;
			text-align: right;
		}
	</style>
</head>
<body>
	<div data-role="page" id="page" data-theme="d">
		<div data-role="header" data-position="fixed" data-theme="c">
			<center>
				<font color="red">Q</font> <font color="#de5a0e">£¦</font> <font color="gray">A</font>
			</center>
			<a data-rel="back" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div data-role="content">
			<div data-role="collapsible-set" data-corners="false" data-theme="c" data-content-theme="d" data-collapsed-icon="arrow-r" data-expanded-icon="arrow-d">
				<div data-role="collapsible">
					<h3>Section 1</h3>
					<p>Collapsible content</p>
					<p class="date">2014.09.15</p>
				</div>
				<div data-role="collapsible">
					<h3>Section 2</h3>
					<p>Collapsible content</p>
					<p class="date">2014.09.15</p>
				</div>
				<div data-role="collapsible">
					<h3>Section 3</h3>
					<p>Collapsible content</p>
					<p class="date">2014.09.15</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>