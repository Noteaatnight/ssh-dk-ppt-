<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>  
<jsp:useBean id="cb" scope="page" class="com.bean.ComBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>��̨������</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<link href="<%=basePath %>admin/images/style.css" rel="stylesheet" type="text/css"> 
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "����";
	font-size: 12px;
	color: #333333;
	background-color: #eef9ff;
}
-->
</style>
</head>  
<script type="text/javascript">
function check()
{ 
	 
	if(document.form1.yyj.value=="" )
	{
		alert("����д�����");
	 	document.form1.yyj.focus();
		return false;
	}  
	form1.submit();
}
</script>

<%
String message = (String)request.getAttribute("message");
	if(message == null){
		message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message"); 
	
	String member=(String)session.getAttribute("user"); 
	if(member==null){
		response.sendRedirect(path+"index.jsp");
	}
	else{ 
		String method=request.getParameter("method");
		String id=request.getParameter("id");
			 
%>
<BODY>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td height="2">&nbsp;</td>
  </tr>
  <tr>
	<td background="<%=basePath %>admin/images/index1_45.gif"></td>
	<td bgcolor="#FFFFFF" style="height:490px; vertical-align:top;">
	  <table width="100%" border="0" cellspacing="10" cellpadding="0">
		 
		<tr>
		  <td>
<form action="<%=basePath%>com.do"   name="form1" method="post" >
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
  <tbody>  
    <input type="hidden" name="method" value="<%=method %>" /> 
    <input type="hidden" name="id" value="<%=id %>" /> 
    <TR bgColor=#ffffff>
      <TD class="font1" width="45%" align=right height="26">Ժ���������</td>
      <TD class="font1" align=left><input type="radio" name="ysp" value="ͨ��" checked="checked"> ͨ�� <input type="radio" name="ysp" value="��ͨ��"> ��ͨ��</td>
    </tr>
    <TR bgColor=#ffffff>
      <TD class="font1" width="45%" align=right height="26">Ժ���������</td>
      <TD class="font1" align=left><input type="text" size="50" name="yyj" ></TD>
    </tr>
    <TR bgColor=#ffffff>
      <TD class="font1"  align=center colspan=2 height="26"><input type=button value="�ύ" onclick="check()"></TD>
    </tr>
  </tbody>
</table>
</form>
</td>
</tr> 
	  </table>
	</td>
	<td background="images/index1_47.gif"></td>
  </tr>
  <tr>
	<td width="8" height="8"><img src="images/index1_91.gif" width="8" height="8" /></td>
	<td background="images/index1_92.gif"></td>
	<td width="8" height="8"><img src="images/index1_93.gif" width="8" height="8" /></td>
  </tr>
</table>
</body>
<%} %>
