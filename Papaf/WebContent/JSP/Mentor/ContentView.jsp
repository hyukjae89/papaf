<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>1:N Mentoring</title>
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
	<style type="text/css">
		table {
			width: 100%;
			border: 0;
		}
		
		th {
			text-align: left;
			padding: 3px;
		}
		
		center {
			padding-top: 10px;
			padding-bottom: 10px;
			font-family: "맑은 고딕";
		}
		
		.comment_name {
			font-size: 12px;
			width: 13%;
			font-weight: bold;
			padding-right: 3px;
			text-align: center;
		}
		
		.comment_content {
			padding-right: 4px;
			color: black;
		}
		
		.comment_date {
			font-size: 10px;
			color: gray;
		}
		
		#comment {
			text-align: center;
			padding-top: 3px;
			float: left;
		}
		
		a {
			text-decoration: none;
			color: black;
		}
	</style>
</head>
<body>

	<div data-role="page" id="page" data-theme="d">
		<div data-role="header" data-theme="c">
			<a href="mento.html" rel="external" data-icon="back"
				data-iconpos="notext"></a>
			<center>
				<font color="red">1</font>:<font color="#de5a0e">N</font> <font color="gray">M</font>entoring
			</center>
		</div>
		<div data-role="content" data-theme="d">
			<table>
				<tr>
					<th>제목</th>
					<td colspan="3">//제목들어갈곳//</td>
				</tr>
				<tr>
					<th>글쓴이</th>
					<td><a href="#click_name" data-rel="popup">//글쓴이//</a></td>
					<th>날짜</th>
					<td>//글쓴날짜//</td>
				</tr>
				<tr>
					<th>카테고리</th>
					<td>//카테고리//</td>
					<th>조회수</th>
					<td>//조회수//</td>
				</tr>
				<tr>
					<td colspan="4">
						<hr>
						<p>데이터 받아올곳</p>
						<hr>
					</td>
				</tr>
			</table>
			<table>
				<tr>
					<td class="comment_name"><a href="#click_name"
						data-rel="popup">김다혜</a></td>
					<td><span class="comment_content"><a href="#myPopup" data-rel="popup">댓글</a></span><span class="comment_date">20140828</span></td>
				</tr>
			</table>
			<table>
				<tr>
					<td width="95%"><input type="text" data-inline="true" data-clear-btn="true" placeholder="댓글을 입력하세요." data-theme="d"></td>
					<td><input type="button" value="등록" data-inline="true" data-theme="c"></td>
				</tr>
			</table>
			<!-- 채택여부 확인 팝업 -->
			<div data-role="popup" id="myPopup" class="ui-content" style="min-width: 200px;" data-theme="d">
				<div data-role="main" class="ui-content">
					<center>
						<form method="post" action="#">
							<fieldset data-role="controlgroup">
								<legend>채택하시겠습니까?</legend>
								<br> 
								<label for="yes">Yes</label> <input type="radio" name="selected" id="yes" value="yes"> <label for="no">No</label>
								<input type="radio" name="selected" id="no" value="no">
							</fieldset>
							<input type="submit" data-inline="true" value="확인">
						</form>
					</center>
				</div>
			</div>
			<!-- 사용자 이름클릭했을때 메뉴 -->
			<div data-role="popup" id="click_name" data-theme="d">
				<ul data-role="listview" data-inset="true" style="min-width: 150px;" data-theme="d" data-shadow="false">
					<li><a href="#">쪽지보내기</a></li>
					<li><a href="#">친구신청</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
