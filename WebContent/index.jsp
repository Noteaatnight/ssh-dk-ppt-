<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <SCRIPT language=javascript>
//������ĺϷ���
function checklogin() {
	if (document.loginform.username.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\�����������û�����");
		document.loginform.username.focus();
		return false;
	}
	if (document.loginform.password.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\�������������룡");
		document.loginform.password.focus();
		return false;
	} 
	 
}
</SCRIPT>
<style type="text/css">
	TABLE{
		margin-bottom: 110px;
		margin-right: 110px;
	}
</style>
  </head>
  
  <body background="images/back.png">
  <%@ include file="iframe/head.jsp" %>    
<FORM name="loginform" method="post" action="<%=basePath %>member.do?method=mlogin" onSubmit="return checklogin();"> 
  <TABLE align=center height="180">
    <TBODY>
    <tr>
        <td colspan="2"> <h1>��ѧ��������ѧ����ϵͳ</h1></td>
    <TR>
	  <TD width="20%" align="right">�û��ʺţ�</TD>
	  <TD align="left"><input type="text" size="30" name="username"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">��¼���룺</TD>
	  <TD align="left"><input type="password" size="30" name="password"></TD>
	</TR> 
	 <TR>
	  <TD width="20%" align="right">�û���ݣ�</TD>
	  <TD align="left"><select name="sf"> 
	  <option value="ѧ��">ѧ��</option>
      <option value="ϵ�쵼">ϵ�쵼</option> 
      <option value="ѧԺ�쵼">ѧԺ�쵼</option>  
	  <option value="����Ա">Ժ��</option>
	  </select></TD>
	</TR> 
	 
    <TR>
      <TD align="left"><INPUT value="��¼" type=submit></TD>
      <TD align="center"><INPUT value="ע��" type="button" onclick="window.location.href='reg.jsp'">
      <!-- <INPUT value="��������" type="button" onclick="window.location.href='lost.jsp'"> --></TD>
	</TR>
	</TBODY>
  </TABLE>
  </FORM>
<%-- <%@ include file="iframe/foot.jsp"%> --%>
  </body>
</html>
 
  
