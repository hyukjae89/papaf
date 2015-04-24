<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		center {
			padding-top: 10px;
			padding-bottom: 10px;
			font-size: 16px;
			font-family: "맑은 고딕";
		}
		
		#myPanel {
			background-color: #fff;
			width: 65%;
		}
		
		.div_t {
			text-align: center;
			font-family: "나눔고딕";
			padding-top: 0;
			padding-bottom: 10px;
			margin: 0;
			font-size: 13px;
		}
		
		.done {
			color: red;
		}
		
		.doing {
			color: blue;
		}
		
		.cl {
			font-weight: bold;
			padding-right: 3px;
		}
	</style>
</head>
<body>
	<!-- 전체보기 -->
	<div data-role="page" id="all" data-theme="d">
		<div data-role="panel" id="myPanel" data-theme="d" data-display="overlay">
			<ul data-role="listview" data-theme="d">
				<li data-icon="false"><a href="#all" data-rel="close">전체보기</a></li>
				<li><a href="#job">구직</a></li>
				<li><a href="#dev">개발</a></li>
				<li><a href="#etc">etc.</a></li>
				<li data-icon="false" data-theme="a"><a href="../00_Main/Main.jsp" rel="external">메인으로 이동</a></li>
			</ul>
		</div>

		<div data-role="header" data-theme="c" data-position="fixed">
			<a href="#myPanel" rel="external" data-icon="bars" data-iconpos="notext"></a>
			<center>
				<font color="red">1</font>:<font color="#de5a0e">N</font> <font color="gray">M</font>entoring
			</center>
			<a href="Write.jsp" rel="external" data-icon="plus" data-iconpos="notext"></a><!-- 글쓰기 버튼-->
		</div>
		<div data-role="main" class="ui-content" data-theme="d">
			<ul data-role="listview" data-filter="true" data-filter-placeholder="검색" data-shadow="false" data-theme="d">
				<li data-icon="false"><a href="ContentView.jsp" rel="external">
						<h3>제목</h3>
						<p>내용내용내용내용</p>
						<p class="ui-li-count">11</p>
						<p>
							<span class="cl">개발</span><span class="done">채택완료</span>
						</p>
				</a></li>
				<li data-icon="false"><a href="ContentView.jsp" rel="external">
						<h3>제목</h3>
						<p>내용내용내용</p>
						<p class="ui-li-count">121</p>
						<p>
							<span class="cl">구직</span><span class="done">채택완료</span>
						</p>
				</a></li>
				<li data-icon="false">
					<a href="ContentView.jsp" rel="external">
						<h3>제목</h3>
						<p>내용내용내용</p>
						<p class="ui-li-count">11</p>
						<p>
							<span class="cl">etc.</span><span class="doing">채택미완료</span>
						</p>
					</a>
				</li>
			</ul>
		</div>
	</div>

	<!--구직-->
	<div data-role="page" id="job" data-theme="d">
		<div data-role="panel" id="myPanel" data-theme="d" data-display="overlay">
			<ul data-role="listview" data-theme="d">
				<li data-icon="false"><a href="#all">전체보기</a></li>
				<li><a href="#job" data-rel="close">구직</a></li>
				<li><a href="#dev">개발</a></li>
				<li><a href="#etc">etc.</a></li>
				<li data-icon="false" data-theme="a"><a href="../00_Main/Main.jsp" rel="external">메인으로 이동</a></li>
			</ul>
		</div>

		<div data-role="header" data-theme="c" data-position="fixed">
			<a href="#myPanel" rel="external" data-icon="bars" data-iconpos="notext"></a>
			<center>
				<font color="red">1</font>:<font color="#de5a0e">N</font> <font color="gray">M</font>entoring
			</center>
			<a href="Write.jsp" rel="external" data-icon="plus" data-iconpos="notext"></a>
			<!-- 글쓰기 버튼-->

		</div>
		<div data-role="main" class="ui-content" data-theme="d">
			<ul data-role="listview" data-filter="true" data-filter-placeholder="검색" data-shadow="false" data-theme="d">
				<li data-icon="false"><a href="ContentView.jsp" rel="external">
						<h3>제목</h3>
						<p>내용내용내용</p>
						<p class="ui-li-count">121</p>
						<p>
							<span class="cl">구직</span><span class="done">채택완료</span>
						</p>
				</a></li>
			</ul>

		</div>
	</div>

	<!-- 개발-->
	<div data-role="page" id="dev" data-theme="d">
		<div data-role="panel" id="myPanel" data-theme="d" data-display="overlay">
			<ul data-role="listview" data-theme="d">
				<li data-icon="false"><a href="#all">전체보기</a></li>
				<li><a href="#job">구직</a></li>
				<li><a href="#dev" data-rel="close">개발</a></li>
				<li><a href="#etc">etc.</a></li>
				<li data-icon="false" data-theme="a"><a href="../00_Main/Main.jsp" rel="external">메인으로 이동</a></li>
			</ul>
		</div>

		<div data-role="header" data-theme="c" data-position="fixed">
			<a href="#myPanel" rel="external" data-icon="bars" data-iconpos="notext"></a>
			<center>
				<font color="red">1</font>:<font color="#de5a0e">N</font> <font color="gray">M</font>entoring
			</center>
			<a href="Write.jsp" rel="external" data-icon="plus" data-iconpos="notext"></a>
			<!-- 글쓰기 버튼-->

		</div>
		<div data-role="main" class="ui-content" data-theme="d">
			<ul data-role="listview" data-filter="true" data-filter-placeholder="검색" data-shadow="false" data-theme="d">
				<li data-icon="false">
					<a href="ContentView.jsp" rel="external">
						<h3>제목</h3>
						<p>내용내용내용내용</p>
						<p class="ui-li-count">11</p>
						<p>
							<span class="cl">개발</span><span class="done">채택완료</span>
						</p>
					</a>
				</li>
			</ul>
		</div>
	</div>


	<!-- etc -->
	<div data-role="page" id="etc" data-theme="d">
		<div data-role="panel" id="myPanel" data-theme="d" data-display="overlay">
			<ul data-role="listview" data-theme="d">
				<li data-icon="false"><a href="#all">전체보기</a></li>
				<li><a href="#job">구직</a></li>
				<li><a href="#dev">개발</a></li>
				<li><a href="#etc" data-rel="close">etc.</a></li>
				<li data-icon="false" data-theme="a"><a href="../00_Main/Main.jsp" rel="external">메인으로 이동</a></li>
			</ul>
		</div>

		<div data-role="header" data-theme="c" data-position="fixed">
			<a href="#myPanel" rel="external" data-icon="bars" data-iconpos="notext"></a>
			<center>
				<font color="red">1</font>:<font color="#de5a0e">N</font> <font color="gray">M</font>entoring
			</center>
			<a href="Write.jsp" rel="external" data-icon="plus" data-iconpos="notext"></a><!-- 글쓰기 버튼-->
		</div>
		<div data-role="main" class="ui-content" data-theme="d">
			<ul data-role="listview" data-filter="true" data-filter-placeholder="검색" data-shadow="false" data-theme="d">
				<li data-icon="false">
					<a href="ContentView.jsp" rel="external">
						<h3>제목</h3>
						<p>내용내용내용내용</p>
						<p class="ui-li-count">11</p>
						<p>
							<span class="cl">etc.</span><span class="done">채택완료</span>
						</p>
					</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>