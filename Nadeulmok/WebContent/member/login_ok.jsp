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
		 alert("ID�� �������� �ʽ��ϴ�");
		 history.back(); 
		 </script> 
<%
	}
	else if(res.equals("NOPWD"))
	{
%>
		 <script type="text/javascript"> 
		 alert("��й�ȣ�� Ʋ���ϴ� ");
		 history.back(); 
		 </script> 
<%
	}
	else
	{
		response.sendRedirect("../main/main.jsp");
	}
%>