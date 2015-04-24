<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="dMgr" class="papaf_mgr.DreamMgr"/>
<%
	dMgr.insertDream(request);
	response.sendRedirect("Dream.jsp");
%>