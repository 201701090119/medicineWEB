<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
  <%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <s:set id="news" value="#request.news"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title><s:property value="%{#news.title}"/>����Ƶ��</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="./css/style.css" rel="stylesheet" type="text/css">
    <style type="text/css">
<!--
.STYLE1 {color: #000000}
body {
	margin-top: 0px;
}
-->
    </style>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head> 
  <body><table align="center" width="1224"><tr><td width="200"><s:a href="index.jsp"><h1>��ҳ</s:a></td><td><div align="center"><img src="./images/banner2.jpg" width="468" height="80"></div></td>
  </tr>
  <tr><td valign="top" bgColor="blue" align="center">�ȵ�����</td><td>
  <strong> ���</strong><s:property value="%{#news.newstype}"/><br/>
  <strong>   ���⣺</strong><s:property value="%{#news.title}"/><br/>
<strong>���ߣ�</strong>  <s:property value="%{#news.author}"/><br/>
<strong>ͼƬ��</strong>
 <s:set name="pic" value="%{#news.pic}" /> <s:if test="#pic==''">           
 <img src="./images/nopic_big.jpg" width="200" height="200" border="0"/>
        </s:if>
         <s:else>
<img src="<s:property value="%{#news.pic}"/>" align="middle" /></s:else><br/>
<strong>���ݣ�</strong><s:property value="%{#news.content}" escape="false"/><br/>
<strong> ������</strong><s:property value="%{#news.cc}"/><br/>
<strong>����ʱ��ʱ�䣺</strong><s:property value="%{#news.publicdatetime}"/></td></tr>
  </table>
  
  </body>
</html>