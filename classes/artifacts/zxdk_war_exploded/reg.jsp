<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <SCRIPT language=javascript>
//������ĺϷ���
function checkreg() {
	if (document.regform.username.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\����������ѧ�ţ�");
		document.regform.username.focus();
		return false;
	}
	if (document.regform.password.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\�������������룡");
		document.regform.password.focus();
		return false;
	} 
	if (document.regform.realname.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\�������û�������");
		document.regform.realname.focus();
		return false;
	} 
	 if (document.regform.sex.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\������༶��");
		document.regform.sex.focus();
		return false;
	} 
	if (document.regform.age.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\��������ϵ�绰��");
		document.regform.age.focus();
		return false;
	} 
	 
	if (document.regform.email.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\�������������䣡");
		document.regform.email.focus();
		return false;
	} 
	if(!/(\S)+[@]{1}(\S)+[.]{1}(\w)+/.test(document.regform.email.value)) 
    {
        alert("�������ʽ��ȷ�� e-mail ��ַ��");
        document.regform.email.focus();
        return false;         
    }
}
</SCRIPT>
  </head>
  <body background="images/regBack4.jpg">
  <%@ include file="iframe/head.jsp" %>  
   <FORM name="regform" method="post" action="<%=basePath%>member.do?method=mreg" onSubmit="return checkreg();"> 
  <TABLE align=center>
    <TBODY>
    <tr><td colspan="2"><img src="images/head.jpg" alt="������"></td>
    <TR>
	  <TD width="20%" align="right">ѧ��ѧ�ţ�</TD>
	  <TD align="left"><input type="text" size="30" name="username"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">��¼���룺</TD>
	  <TD align="left"><input type="password" size="30" name="password"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">ѧ��������</TD>
	  <TD align="left"><input type="text" size="30" name="realname"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">ѧ���༶��</TD>
	  <TD align="left"><input type="text" size="30" name="sex"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">��ϵ�绰��</TD>
	  <TD align="left"><input type="text" size="30" name="age"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">ѧ���Ա�</TD>
	  <TD align="left"><select name=address> 
        <option value="��">��</option>
        <option value="Ů">Ů</option> 
        </select></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">ѧ�����䣺</TD>
	  <TD align="left"><input type="text" size="30" name="email"></TD>
	</TR>
    <TR>
      <TD align="center" colspan="2"><INPUT value="����ע��" type=submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT value="��¼" type="button" onclick="window.location.href='login.jsp'"></TD>
	</TR>
	</TBODY>
  </TABLE>
  </FORM>
<%@ include file="iframe/foot.jsp"%>
  </body>
</html>




 