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
    
    <title>������Ʒ�б�</title>
      
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
  <table  width="90%" height="70%" cellspacing="1" cellpadding="0" border="0">
  <tr bgcolor="#ffffff">
 <td background="./images/tablebg.jpg">��Ʒ���� </td> <td background="./images/tablebg.jpg">ͼƬ</td><td background="./images/tablebg.jpg">����</td><td background="./images/tablebg.jpg">С��</td> <td background="./images/tablebg.jpg">�۸�</td><td colspan="2" align="center" background="./images/tablebg.jpg">����</td></tr>   
            
            <s:iterator value="pageBean.list2">      
            <tr bgcolor="#ffffff">  
            <td>
            <s:property value="productname"/>
            </td> 
            <td>
            <img src="<s:property value="pic"/>" width="50" height="50"/> 
            </td>
             <td>
             <s:property value="bigcategory"/>
             </td>
            <td>
             <s:property value="smallcategory"/>
             </td>
             <td>
                <font color="red" ><s:property value="price"/></font>Ԫ 
                </td>
                <td>
             <a href="getProduct!get?id=<s:property value="id"/>">�޸�</a>
             </td>
             <td>
             <a href="deleteProduct!delete?id=<s:property value="id"/>" >ɾ��</a>
             </td>
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
            <a href="adminProducts!list?page=1">��һҳ</a>
            <a href="adminProducts!list?page=<s:property value="%{pageBean.currentPage-1}"/>">��һҳ</a>
        </s:else>
        <s:if test="%{pageBean.currentPage != pageBean.totalPages}">
            <a href="adminProducts!list?page=<s:property value="%{pageBean.currentPage+1}"/>">��һҳ</a>
            <a href="adminProducts!list?page=<s:property value="pageBean.totalPages"/>">���һҳ</a>
        </s:if>
        <s:else>
            ��һҳ ���һҳ
        </s:else>   
  </body>
</html>