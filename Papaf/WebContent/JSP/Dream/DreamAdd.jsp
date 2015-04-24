<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
	
	<link href="../framework/jquery.mobile-1.4.3.css" rel="stylesheet" type="text/css">
	<script src="../framework/jquery-1.11.1.js"></script>
	<script src="../framework/jquery.mobile-1.4.3.js"></script>
	
	<style>
		
	</style>
	<script>
		var num = 1;
		function addDetail(){
			if(num == 5){
				alert("Detail은 4개까지 가능");
			}
			else{
				var detailList = $("#detailList");
				var detailTable = $("#detailTable");
				detailTable.append("<tr><td><label for='detail'>Detail " + (num) + ":</label></td><td><input id='detail' type='text' name='detail_" + (num) + "'></td><td><a href='javascript:deleteDetail(" + '"'+ (num) +'"' + ")'>X</a></td></tr>");
				detailList.listview("refresh");
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
	<title>Dream Add</title>
</head>
<body>
	<div id="dreamAdd" data-role="page">
		<div data-role="header">
			<h1>Dream Add</h1>
		</div>
		<div data-role="content" id="contentDiv">
			<form name="postFrm" id="postFrm" method="post" action="DreamAddProc.jsp" enctype="multipart/form-data">
				<div data-role="fieldcontain">
					<label for="title" style="text-align: center">Title</label>
					<input id="title" type="text" name="title">
				</div>
				<div data-role="fieldcontain">
					<ul id="detailList" data-role="listview">
						<li>
							<table  id="detailTable" style="width: 100%">
							</table>
						</li>
					</ul>
				</div>
				<center>
					<input type="button" id="detailAddBtn" data-iconpos="notext" value="Detail추가" onclick="addDetail()"></a>
					<a href="javascript:submitDream()" data-role="button" id="submitBtn" data-iconpos="notext">등록</a>
					<a href="Dream.jsp" data-ajax="false" data-role="button" id="listBtn" data-iconpos="notext">리스트</a>
				</center>
			</form>
		</div>
	</div>
</body>
</html>