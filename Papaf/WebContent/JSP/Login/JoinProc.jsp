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

	<!-- ��Ŭ���� ���� -->
	<jsp:useBean id="mbean" class="papaf_bean.MemberBean" />
	<jsp:useBean id="mMgr" class="papaf_mgr.MemberMgr"></jsp:useBean>
	<!-- ��Ŭ������ �����͸� �߰� -->
	<jsp:setProperty property="*" name="mbean" />

	<!-- �����͸� �߰� -->
	<%
		// ȸ�������� ������ DB�� �����ϱ� ���� �޼ҵ� ȣ��
		mMgr.insertMember(mbean);

		response.sendRedirect("../index.jsp");
	%>

</body>
</html>