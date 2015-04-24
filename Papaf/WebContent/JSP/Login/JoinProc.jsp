<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>

	<%
		request.setCharacterEncoding("euc-kr");
	%>

	<!-- 빈클래스 생성 -->
	<jsp:useBean id="mbean" class="papaf_bean.MemberBean" />
	<jsp:useBean id="mMgr" class="papaf_mgr.MemberMgr"></jsp:useBean>
	<!-- 빈클래스에 데이터를 추가 -->
	<jsp:setProperty property="*" name="mbean" />

	<!-- 데이터를 추가 -->
	<%
		// 회원가입한 정보를 DB에 저장하기 위한 메소드 호출
		mMgr.insertMember(mbean);

		response.sendRedirect("../index.jsp");
	%>

</body>
</html>