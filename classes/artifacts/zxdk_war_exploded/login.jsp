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
		margin-right: 140px;
	}
	
</style>
  </head>
  <body background="images/logBack.jpg">
  <%@ include file="iframe/head.jsp" %>  
  <FORM name="loginform" method="post" action="<%=basePath %>member.do?method=mlogin" onSubmit="return checklogin();"> 
  <TABLE align=center height="180">
    <TBODY>
    <tr>
        <td colspan="2">
            <%--<img src="images/log.jpg" alt="������">--%>
                <h1>��ѧ��������ѧ����ϵͳ</h1>
        </td>
    <TR>
	  <TD width="20%" align="right"><span style="color: #ffffff">�û��ʺţ�</span></TD>
	  <TD align="left"><input type="text" size="30" name="username"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right"><span style="color: #ffffff">��¼���룺</span></TD>
	  <TD align="left"><input type="password" size="30" name="password"></TD>
	</TR> 
	 <TR>
	  <TD width="20%" align="right"><span style="color: #ffffff">�û���ݣ�</span></TD>
	  <TD align="left"><select name="sf"> 
	  <option value="ѧ��">ѧ��</option>
      <option value="ϵ�쵼">ϵ�쵼</option> 
      <option value="ѧԺ�쵼">ѧԺ�쵼</option>  
	  <option value="����Ա">Ժ��</option>
	  </select></TD>
	</TR> 
	 
    <TR>
      <TD align="center"><INPUT value="��¼" type=submit>&nbsp;&nbsp;</TD>
      <TD align="center"><INPUT value="ע��" type="button" onclick="window.location.href='reg.jsp'">&nbsp;&nbsp;
	  </TD>
	</TR>
	</TBODY>
  </TABLE>
  </FORM>
  <%@ include file="iframe/foot.jsp"%>
  </body>
</html>
  

 
  
