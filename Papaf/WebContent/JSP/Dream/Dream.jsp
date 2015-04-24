<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
	
	<%@page import="papaf_bean.DreamBean" %>
	<%@page import="java.util.Vector" %>
	<jsp:useBean id="dMgr" class="papaf_mgr.DreamMgr"></jsp:useBean>
	
	<link href="../framework/jquery.mobile-1.4.3.css" rel="stylesheet" type="text/css">
	<script src="../framework/jquery-1.11.1.js"></script>
	<script src="../framework/jquery.mobile-1.4.3.js"></script>
	
	<title>Insert title here</title>
	
	<%
		request.setCharacterEncoding("EUC-KR");
		
		int listSize = 0;		
		
		Vector<DreamBean> vList;
		vList = dMgr.getDreamList();
		listSize = vList.size();	
	%>
	
	<style>
		body{
			height: 100%;
		}
		center {
			padding-top:8px;
			padding-bottom:8px;
			font-size:16px;	
		}
		#dream{
			height: 100%;
		}
		#header{
		}
		.table{
			display: table;
			width: 100%;
			height: 91%;
		}
		.tr1{
			display: table-row;
			height: 10%;
			margin: 0;
			
		}
		.tr2{
			display: table-row;
			height: 80%;
		}
		.tr3{
			display: table-row;
			height: 10%;
		}
		.td{
			display: table-cell;
			vertical-align: middle;
		}
		#dreamTitle{
			text-align: center;
			padding-top: 0;
			padding-bottom: 0;
			margin: 0;
		}
		#dreamContent{
			text-align: center;
		}
		#dreamContent > #dreamList{
			margin-top: 10%;
			margin-bottom: 10%;
		}
		#start{
			text-align: center;
			padding-top: 0;
			padding-bottom: 0;
		}
		
		#dreamAddPopup{
			width: 250px;
			height: 300px;
			padding-bottom:20px; 
			padding-left: 20px;
			padding-right: 20px;
			padding-top: 50px;
		}
	</style>
	<script>
		var divStart = document.getElementById("start");
		var divDreamContent = document.getElementById("dreamContent");
		window.onload = function(){
		};
		
		function read(number){
			document.readFrm.number.value = number;
			document.readFrm.submit();
			
		}
		
		var num = 1;
		function addDetail(){
			if(num == 5){
				alert("Detail은 4개까지");
			}
			else{
				var detailList = $("#detailList");
				var detailTable = $("#detailTable");
				var dreamAddPopup = $("#dreamAddPopup");
				
				detailTable.append("<tr><td><label for='detail'>Detail " + (num) + ":</label></td><td><input id='detail' type='text' style='width:160px' name='detail_" + (num) + "'></td><td><a href='javascript:deleteDetail(" + '"'+ (num) +'"' + ")'>X</a></td></tr>");
				detailList.listview("refresh");
				dreamAddPopup.css("height", 300+num*30+"px");
				num++;
			}
		}
		
		function deleteDetail(num){
			alert(num);
		}
		
		function submitDream(){
			document.postFrm.submit();
		}
	</script>
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js"></script>
	<script src="../JS/jquery.ui.touch-punch.min.js"></script>
	<script>	
		$(document).bind('pageinit', function() {
			$("#dreamList").sortable();
			$("#dreamList").disableSelection();
			<!-- Refresh list to the end of sort to have a correct display -->
			$("#dreamList" ).bind("sortstop", function(event, ui) {
				$('#dreamList').listview('refresh');
			});
		});
	</script>
</head>
<body>
	
	<div id="dream" data-role="page">
		<div id="header" data-role="header">
			<a href="#myPanel" rel="external" data-icon="grid" data-iconpos="notext"></a>
			<center>
     			Dream
    		</center>
    		<a href="#dreamAddPopup" data-rel="popup" data-role="button" data-icon="plus" data-iconpos="notext" data-transition="pop" data-position-to="window"></a>
		</div>
		<div class="table">
			<div class="tr1">
				<div id="dreamTitle" class="td" data-role="content">
					<ul data-role="listview" data-inset="true">
						<li onclick="" style="text-align: center" data-icon="">Destination</li>
					</ul>
				</div>
			</div>
			<div class="tr2">
				<div id="dreamContent" class="td" data-role="content">
					<ul id="dreamList" data-role="listview" data-inset="true">
					<%
						for(int i=0; i<listSize; i++){
							DreamBean bean = vList.get(i);
							int number = bean.getNum();
							String title = bean.getTitle();
					%>
							<li onclick="read('<%=number %>')" style="text-align: center"><%= title %></li>
					<%}	// for臾�%>
					</ul>
				</div>
			</div>
			<div class="tr3">
				<div id="start" class="td" data-role="content">
					<ul data-role="listview" data-inset="true">
						<li onclick="" style="text-align: center" data-icon="">Start</li>
					</ul>
				</div>
			</div>
		</div>
		
		<div id="dreamAdd" data-role="popup">
			<div id="dreamAddPopup" data-role="popup">
				<form name="postFrm" id="postFrm" method="post" action="DreamAddProc.jsp" enctype="multipart/form-data">
					<div>
						<label for="title" style="text-align: center">Title</label>
						<input id="title" type="text" name="title">
					</div>
					<div>
						<ul id="detailList" data-role="listview">
							<li style="padding-left: 0px;">
								<table id="detailTable" style="width: 100%"></table>
							</li>
						</ul>
					</div>
						<a href="javascript:addDetail()" data-role="button" id="detailAddBtn" data-iconpos="notext">Detail</a>
						<a href="javascript:submitDream()" data-role="button" id="submitBtn" data-iconpos="notext">Submit</a>
						<a href="Dream.jsp" data-ajax="false" data-role="button" id="listBtn" data-iconpos="notext">List</a>
				</form>
			</div>
		</div>
	</div>
	
	<form name="readFrm" method="get" action="DreamRead.jsp">
		<input type="hidden" name="number">
	</form>
	
	
</body>
</html>