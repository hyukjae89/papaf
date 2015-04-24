<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	
	<title>:: IT News ::</title>
	
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
				<font color="red">I</font>T news <font color="#de5a0e">＆</font> <font color="gray">J</font>ob-search site
			</center>
			<a data-rel="back" data-icon="back" data-iconpos="notext"></a>
		</div>
		<div data-role="content">
			<div data-role="collapsible-set" data-theme="c" data-content-theme="d">
				<div data-role="collapsible" data-collapsed-icon="arrow-d" data-expanded-icon="arrow-u">
					<h3>IT news</h3>
					<ul data-role="listview" data-filter="true" data-filter-placeholder="Search for website">
						<li>
							<a href="http://www.itworld.co.kr/">
								<h3>IT월드</h3>
								<p>모바일 지원</p>
							</a>
						</li>
						<li>
							<a href="http://www.zdnet.co.kr/">
								<h3>ZDnet코리아</h3>
								<p>모바일 지원</p>
							</a>
						</li>
						<li>
							<a href="http://www.etnews.com/">
								<h3>전자신문</h3>
								<p>모바일 지원</p>
							</a>
						</li>
						<li>
							<a href="http://bit.ly/1rScLK7">
								<h3>네이버IT뉴스</h3>
								<p>모바일 지원</p>
							</a>
						</li>
						<li>
							<a href="http://www.itnews.or.kr/">
								<h3>IT뉴스</h3>
								<p>모바일 지원</p>
							</a>
						</li>
						<li>
							<a href="http://www.ddaily.co.kr/">
								<h3>디지털데일리</h3>
								<p>모바일 지원</p>
							</a>
						</li>
						<li>
							<a href="http://www.betanews.net/">
								<h3>베타뉴스</h3>
								<p>모바일 지원</p>
							</a>
						</li>
						<li>
							<a href="http://www.ciokorea.com/">
								<h3>CIO코리아</h3>
								<p>모바일 미지원</p>
							</a>
						</li>
						<li>
							<a href="http://www.ciobiz.co.kr/">
								<h3>CIOBIZ</h3>
								<p>모바일 미지원</p>
							</a>
						</li>
						<li>
							<a href="https://www.inews24.com/">
								<h3>아이뉴스24</h3>
								<p>모바일 지원</p>
							</a>
						</li>
					</ul>
				</div>
				<div data-role="collapsible" data-collapsed-icon="arrow-d" data-expanded-icon="arrow-u">
					<h3>Job-search site</h3>
					<ul data-role="listview" data-filter="true" data-filter-placeholder="Search for website">
						<li>
							<a href="http://job.incruit.com/jobdb_list/searchjob.asp?ct=1&ty=1&cd=150&pco=107&utm_source=google&utm_medium=cpc&gclid=CPG4-LX4o8ACFVZwvAod51MAfQ">
								<h3>인크루트</h3>
								<p>취업포털사이트</p>
							</a>
						</li>
						<li>
							<a href="http://www.engjob.co.kr/">
								<h3>이엔지잡</h3>
								<p>취업포털사이트</p>
							</a>
						</li>
						<li>
							<a href="http://www.saramin.co.kr/zf_user/">
								<h3>사람인</h3>
								<p>취업포털사이트</p>
							</a>
						</li>
						<li>
							<a href="http://www.career.co.kr/">
								<h3>커리어</h3>
								<p>취업포털사이트</p>
							</a>
						</li>
						<li>
							<a href="http://www.itcareer.co.kr/">
								<h3>아이티커리어</h3>
								<p>IT전문취업포털사이트</p>
							</a>
						</li>
						<li>
							<a href="http://www.metro.seoul.kr/kor/infobank/job/200.html">
								<h3>서울인력은행 구인정보</h3>
								<p>서울지역 구인</p>
							</a>
						</li>
						<li>
							<a href="http://www.gemcom.co.kr">
								<h3>갬콤</h3>
								<p>대구지역 구인</p>
							</a>
						</li>
						<li>
							<a href="http://www.rndjob.or.kr/">
								<h3>알앤디잡</h3>
								<p>이공계인력중개센터</p>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
