<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>  

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�����б�</title>
      
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="./css/style.css" rel="stylesheet" type="text/css">

  </head>
  
  <body >
  <table cellspacing="0" cellpadding="0" border="0" bgColor="#c0c0c0">
  <tr>
  <td>
  <table cellspacing="1" cellpadding="0" border="0">
  <tr bgcolor="#ffffff" align="center">
 <td background="./images/tablebg.jpg">id </td> <td background="./images/tablebg.jpg">��Ʒid </td> <td background="./images/tablebg.jpg">����</td><td background="./images/tablebg.jpg">�ܽ��</td> <td background="./images/tablebg.jpg">��Ա�˺�</td><td background="./images/tablebg.jpg">���ʽ</td><td background="./images/tablebg.jpg">�ͻ���ʽ</td><td background="./images/tablebg.jpg">����ʱ��</td><td background="./images/tablebg.jpg">����</td></tr>               
            <s:iterator value="pageBean.list6">      
            <tr bgcolor="#ffffff" align="center">  
            <td><s:property value="id"/>
            </td>
            <td>
            <s:property value="productid"/>
            </td> 
             <td>
             <s:property value="quantity"/>
             </td>
            <td>
             <font color="red" > <s:property value="totalprice"/></font>Ԫ
             </td>
             <td>
               <s:property value="username"/>
                </td>              
                <td> <s:property value="payment"/></td>
                <td> <s:property value="postway"/></td>
                <td> <s:property value="orderdatetime"/></td>
                  <td>�Ƿ񸶿�(�Ѿ�����/û�и���)</td>
          </tr> 
        </s:iterator>
        </table>
        </td>
        </tr>
        </table>
          ��<s:property value="pageBean.totalRows"/> ����¼
        ��<s:property value="pageBean.totalPages"/> ҳ
        ��ǰ��<s:property value="pageBean.currentPage"/>ҳ<br/>       
        <s:if test="%{pageBean.currentPage == 1}">
            ��һҳ ��һҳ
        </s:if>
        <s:else>
            <a href="viewOrder!list?page=1">��һҳ</a>
            <a href="viewOrder!list?page=<s:property value="%{pageBean.currentPage-1}"/>">��һҳ</a>
        </s:else>
        <s:if test="%{pageBean.currentPage != pageBean.totalPages}">
            <a href="viewOrder!list?page=<s:property value="%{pageBean.currentPage+1}"/>">��һҳ</a>
            <a href="viewOrder!list?page=<s:property value="pageBean.totalPages"/>">���һҳ</a>
        </s:if>
        <s:else>
            ��һҳ ���һҳ
        </s:else>   
  </body>
</html>