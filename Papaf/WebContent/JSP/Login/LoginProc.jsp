<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="mMgr" class="papaf_mgr.MemberMgr"></jsp:useBean>
	<%@page import="papaf_bean.MemberBean"%>
	<%
		request.setCharacterEncoding("EUC-KR");
	
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		String url = "../Main/Main.jsp";
		
		boolean result = mMgr.loginMember(id, pass);
		if(result){
			MemberBean bean = mMgr.getMember(id);
			String name = bean.getName();
			session.setAttribute("idKey", id);
			session.setAttribute("nameKey", name);
			session.setMaxInactiveInterval(60*300);
		}
		else{
			url = "../../index.jsp";
		}
	%>
	<script>
		location.href="<%=url%>";
	</script>
</body>
</html>