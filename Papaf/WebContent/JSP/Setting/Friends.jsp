<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	
	<title>jQuery Mobile Web App</title>
	
	<link href="main.css" rel="stylesheet" type="text/css" />
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
	</style>
</head>
<body>
	<div data-role="page" id="page" data-theme="d">
		<div data-role="header" data-theme="c" data-position="fixed">
			<center>
				<font color="red">F</font>ri<font color="#de5a0e">e</font>n<font color="gray">d</font>
			</center>
			<a href="Setting.jsp" rel="external" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div data-role="content">
			<ul data-role="listview">
				<li data-icon="search"><a href="#searchFriend" data-rel="popup" data-position-to="window" data-transition="pop">e-mail로 친구 찾기</a></li>
				<li data-icon="bars"><a href="FriendsList.jsp" rel="external">친구 목록 보기</a></li>
				<li data-icon="delete"><a href="#page4">차단 친구 관리</a></li>
			</ul>
		</div>

		<!-- popup form -->
		<div data-role="popup" id="search" data-theme="d">
			<div data-role="popup" id="searchFriend" data-theme="c" class="ui-corner-all">
				<form>
					<div style="padding: 10px 10px;">
						<h3>e-mail을 입력하세요.</h3>
						<label for="friendEmail" class="ui-hidden-accessible">e-mail</label>
						<input type="email" name="friendEmail" id="friendEmail" value="" placeholder="e-mail" data-theme="d"> <a href="#result" data-role="button" data-theme="a" data-icon="search">찾기</a>
					</div>
				</form>
			</div>
		</div>
		<!-- end -->
	</div>


	<!-- new page(e-mail로 친구찾기 결과) -->
	<div data-role="page" id="result" data-theme="d">
		<div data-role="header" data-theme="c" data-position="fixed">
			<center>
				<font color="red">F</font>ri<font color="#de5a0e">e</font>n<font color="gray">d</font>
			</center>
			<a href="Friends.jsp" rel="external" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div data-role="content">
			<ul data-role="listview">
				<li>
					<a href="#"><h3>friend name</h3><p>e-mail address</p></a> 
					<a data-icon="plus" href="#okpopup" data-rel="popup" data-theme="d">친구신청</a>
				</li>
			</ul>
		</div>
		<!-- popup start -->
		<div data-role="popup" id="okpopup" data-theme="c" data-position-to="window">
			<p>친구신청이 완료되었습니다.</p>
		</div>
		<!-- popup end-->
	</div>
</body>
</html>