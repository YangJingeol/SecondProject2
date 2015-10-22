<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
%>
<jsp:useBean id="dao" class="com.dao.MemberDAO"/>
<%
	String res = dao.isLogin(email, pwd);

	if(res.equals("NOID"))
	{
%>
		 <script type="text/javascript"> 
		 alert("ID가 존재하지 않습니다");
		 history.back(); 
		 </script> 
<%
	}
	else if(res.equals("NOPWD"))
	{
%>
		 <script type="text/javascript"> 
		 alert("비밀번호가 틀립니다 ");
		 history.back(); 
		 </script> 
<%
	}
	else
	{
		response.sendRedirect("../main/main.jsp");
	}
%>