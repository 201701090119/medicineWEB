<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
  <%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <s:set id="product" value="#request.product"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title><s:property value="%{#product.productname}"/>��Ʒ��ϸ����</title>
    <link href="./css/lanrenzhijia.css" type="text/css" rel="stylesheet" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="./css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
    function nTabs(thisObj,Num){
    if(thisObj.className == "active")return;
    var tabObj = thisObj.parentNode.id;
    var tabList = document.getElementById(tabObj).getElementsByTagName("li");
    for(i=0; i <tabList.length; i++)
    {
    if (i == Num)
    {
    thisObj.className = "active";
    document.getElementById(tabObj+"_Content"+i).style.display = "block";
    }else{
    tabList[i].className = "normal";
    document.getElementById(tabObj+"_Content"+i).style.display = "none";
    }
    }
    }
    </script>

  </head>
  
  <body> 
<table width="1224" border="0" align="center">
  <tr>
    <td width="191"><a href="./index.jsp"><img src="images/logo.gif" border="0"></a></td>
    <td colspan="2" height="100"><div align="center"><img src="./images/banner.jpg" alt="2" width="468" height="80"></div></td>
  </tr>
  <tr>
    <td colspan="3"> <s:action name="listMenu" executeResult="true"></s:action></td>
  </tr>
  <tr>
    <td rowspan="3">&nbsp;</td>
    <td colspan="2"><strong>��Ʒ���ƣ�</strong>
<s:property value="%{#product.productname}"/><br/> 

</td>
  </tr>
  <tr>
    <td width="369"><strong> ͼƬ��</strong>  <s:set name="pic" value="%{#product.pic}" /> <s:if test="#pic==''">           
 <img src="./images/nopic_big.jpg" width="200" height="200" border="0"/>
        </s:if>
         <s:else> <img src="<s:property value="%{#product.pic}"/>" width="200" height="200" align="top"/></s:else> </td>
    <td width="450"> <br/> 
<strong>���ࣺ</strong> <s:property value="%{#product.bigcategory}"/><br/> 
<strong>С�ࣺ</strong>   <s:property value="%{#product.smallcategory}"/><br/> 
<strong> �۸�</strong> <font color="red"><s:property value="%{#product.price}"/></font>Ԫ<br/>
<a href="addCart!add?id=<s:property value="%{#product.id}"/>"><img src="./images/addcart.gif" width="100" border="0"></a></td>
  </tr>
  <tr><td colspan="2">
  <center>
  <div style="text-align:; width:750px; height:120px;margin:0 auto;">
    <!-- ѡ���ʼ -->
    <div class="nTab">
      <!-- ���⿪ʼ -->
      <div class="TabTitle">
        <ul id="myTab0">
          <li class="active" onmouseover="nTabs(this,0);"><strong>��飺</strong></li>
          <li class="normal" onmouseover="nTabs(this,1);"><strong>����������</strong></li>
        </ul>
      </div>
      <!-- ���ݿ�ʼ -->
      <div class="TabContent">
        <div id="myTab0_Content0"> <s:property value="%{#product.introduce}" escape="false"/></div>
        <div id="myTab0_Content1" class="none"><s:property value="%{#product.parameter}" escape="false"/></div>
      </div>
    </div>
    <!-- ѡ����� -->
  </div>
</center>
  </td></tr>
  <tr>
    <td colspan="3"><div align="center"></div></td>
  </tr>
</table>
  </body>
</html>