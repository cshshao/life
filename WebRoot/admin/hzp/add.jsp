<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="com.fredck.FCKeditor.*" %> 
<%@ taglib uri="/WEB-INF/FCKeditor.tld" prefix="FCK" %> 
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="tb" scope="page" class="com.bean.HzpBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>��̨������</TITLE>
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir %>/images/style.css" type=text/css rel=stylesheet>
<script type="text/javascript" charset="utf-8" src="<%=path %>/utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=path %>/utf8-jsp/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="<%=path %>/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript" src="<%=path %>FCKeditor/fckeditor.js"></script> 
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<script type="text/javascript">
function sub()
{
	if(document.form1.title.value.replace(/\s+$|^\s+/g,"").length<=0
	||document.form1.pic.value.replace(/\s+$|^\s+/g,"").length<=0
	||document.form1.dz.value.replace(/\s+$|^\s+/g,"").length<=0
	||document.form1.yb.value.replace(/\s+$|^\s+/g,"").length<=0
	||document.form1.dh.value.replace(/\s+$|^\s+/g,"").length<=0
	||document.form1.jd.value.replace(/\s+$|^\s+/g,"").length<=0)
	{
		alert("������Ŀ������д��");
		return false;
	}
	if(document.form1.pic.value.replace(/\s+$|^\s+/g,"").length>0)
	{
		var fileext=form1.pic.value.substring(form1.pic.value.length-4,form1.pic.value.length); 
		fileext=fileext.toLowerCase(); 
		if(!(fileext=='.jpg')&&!(fileext=='.gif')) 
		{
			alert("�Բ����ļ���ʽ����,����Ϊjpg��gif��ʽ�ļ�!"); 
			form1.pic.focus(); 
			return false; 
		} 
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
%>
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
		String method=request.getParameter("method");
		if(method==null){
			method="addlvyou";
		}
		String title = "";	
		String dz="";
		String yb="";
		String dh="";
		String jd="";
		String content="";
		String id="";
		//String s="��������ͼ�뱣��Ϊ��";
		if(method.equals("uplvyou")){
			id=request.getParameter("id").trim();
			List newsList=tb.getOneTrave(Integer.parseInt(id));
			title=newsList.get(1).toString();
			dz=newsList.get(3).toString();
			yb=newsList.get(4).toString();			
			dh=newsList.get(5).toString();
			jd=newsList.get(6).toString();
			content=newsList.get(7).toString();
		}		

%>
<BODY onload="document.form1.infoContent.value=document.form1.content.value" >
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top ><form name="form1" action="<%=basePath %>News.do" method="post"  enctype="multipart/form-data" >
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
<tr class="head"> 
      <td colspan="2">     
<%
	if(method.trim().equals("addlvyou")){
%>
        �����Ϣ �����ݲ��ܳ���5000���ַ���
<%}else{%>
	   �޸���Ϣ �����ݲ��ܳ���5000���ַ���
<%} %>
      </td>
    </tr>
	
  <tr bgcolor='#FFFFFF'> <input type="hidden" name="method" value="<%=method %>"> <input type="hidden" name="id" value="<%=id %>">
    <td width='30%'><div align="right">�ư����ƣ�</div></td>
    <td ><input name="title" type="text" id="title" size="40" maxlength="100" value="<%=title %>"></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">��&nbsp;��&nbsp;ͼ��</div></td>
    <td ><input name="pic" type="file"   size="40" maxlength="150" >&nbsp;<font color=red>300K����gif��jpg��ʽͼƬ</font></td>
  </tr>
  <tr bgcolor='#FFFFFF'>  
    <td width='30%'><div align="right">�ưɵ�ַ��</div></td>
    <td ><input name="dz" type="text" id="dz" size="40" maxlength="100" value="<%=dz %>"></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">�������룺</div></td>
    <td ><input name="yb" type="text" id="yb" size="15" maxlength="100" value="<%=yb %>"></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">��ϵ�绰��</div></td>
    <td ><input name="dh" type="text" id="dh" size="15" maxlength="100" value="<%=dh %>"> </TD>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">������Ʒ��</div></td>
    <td ><input name="jd" type="text" id="jd" size="40" maxlength="100" value="<%=jd %>" > </TD>
  </tr>
  <tr bgcolor='#FFFFFF' align=center> 

         <td colspan="2" valign="top"> <script id="editor" type="text/plain" NAME="infoContent"  style="width:1024px;height:500px;"><%=content %></script>
      
     </td>
    </tr>
  <tr bgcolor='#FFFFFF'> 
      <td colspan="2" align="center"> 
        <input class=mmcinb type='button' name='button' value='�ύ����' onclick='sub()'>
      </td>
    </tr>
	
</table></form>
   </TD>
	</TR>
  </TBODY>
</TABLE>
</BODY>
<%} %>
<script type="text/javascript">

    //ʵ�����༭��
    //����ʹ�ù�������getEditor���������ñ༭��ʵ���������ĳ���հ������øñ༭����ֱ�ӵ���UE.getEditor('editor')�����õ���ص�ʵ��
    var ue = UE.getEditor('editor');


    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
    function insertHtml() {
        var value = prompt('����html����', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push("ʹ��editor.getContent()�������Ի�ñ༭��������");
        arr.push("����Ϊ��");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("ʹ��editor.getPlainTxt()�������Ի�ñ༭���Ĵ���ʽ�Ĵ��ı�����");
        arr.push("����Ϊ��");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("ʹ��editor.setContent('��ӭʹ��ueditor')�����������ñ༭��������");
        UE.getEditor('editor').setContent('��ӭʹ��ueditor', isAppendTo);
        alert(arr.join("\n"));
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //��������ťʱ�༭�����Ѿ�ʧȥ�˽��㣬���ֱ����getText������õ����ݣ�����Ҫ��ѡ������Ȼ��ȡ������
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("ʹ��editor.getContentTxt()�������Ի�ñ༭���Ĵ��ı�����");
        arr.push("�༭���Ĵ��ı�����Ϊ��");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("ʹ��editor.hasContents()�����жϱ༭�����Ƿ�������");
        arr.push("�жϽ��Ϊ��");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("����ղݸ���")
    }
</script>
</HTML>
