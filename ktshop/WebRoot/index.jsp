<%@page pageEncoding="GB2312" contentType="text/html; charset=gb2312" %>
<%@ taglib prefix="s" uri="/struts-tags" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">     
<html>      
    <head>     
    <title>��ҳ��</title>   
    <meta http-equiv="Content- Type" content="text/html; charset=gb2312"/>          
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">     
<link href="css/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
body,td,th {
	font-family: verdana;
}
body {
	margin-top: 0px;
}
</style>
<link href="css/163css.css" rel="stylesheet" type="text/css">	
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('.seatext').focus(function(){
		var keyval=$('.seatext').val();
		if(keyval=='������ؼ���'){
			$('.seatext').val('');
		}
	})
	$('.keyul li').hover(function(){$(this).addClass('on');},function(){$(this).removeClass('on');})
	$('.seatext').focusout(function(){
		var keyval=$('.seatext').val();
		if(keyval==''){
			$('.seatext').val('������ؼ���');
		}
	})
	$('.mkey').click(function(){
		$('.keyul').show();
		$('.keyul li').click(function(){
			var keyval=$(this).text();
			$('.mkey').text(keyval);
			$('.keyul').hide();
		})		
	})
	$('.seabtn').click(function(){
		var mval=$('.mkey').text();
		var keyval=$('.seatext').val();
		alert(mval+keyval)	
	})
	$(document).mouseup(function() {
		$('.keyul').hide();
	});
})
</script>
    </head>   
   
    <body>     
    <table width="1224" align="center" cellspacing="5">
    <tr><td width="271" height="100"><s:a href="index.jsp"><img src="images/logo.gif" border="0"/></s:a></td><td width="760" align="center">
<img src="images/banner.jpg" align="middle"/></td>
      <td width="165" align="center"><img src="images/collect.gif" width="100" height="30"><br>
      <br>
      <img src="images/help.gif" width="100" height="32"></td>
    </tr>
    <tr><td height="21" colspan="3"> <table width="100%" height="25" align="center" cellspacing="0" \>
  <tr>
  <td align="center" background="./images/bg.jpg" ><s:a href="index.jsp">
  <strong>��ҳ</strong>
  </s:a></td>  
    <td align="center" background="./images/bg.jpg" ><s:a href="productsAction!list">
      <strong>��Ʒ����</strong>
    </s:a></td>     
    <td align="center" background="./images/bg.jpg" > <s:a href="cart/viewcart.jsp">
      <strong>�鿴���ﳵ</strong>
    </s:a></td><td align="center" background="./images/bg.jpg" ><s:a href="order/order.jsp">
      <strong>ȥ����̨</strong>
    </s:a></td>
	  <td align="center" background="./images/bg.jpg" > <s:a href="newsAction!list">
	    <strong>����</strong>
    </s:a></td>
</tr>
</table>
    </td></tr>
    <tr><td valign="top" bgcolor="" align="center">
      <table border="0" cellpadding="0" cellspacing="5" bgcolor="" align="center">
        <tr><td height="150" align="center">
          <s:set name="username" value="#session['username']" />
          <s:if test="#username==null">
            <table  height="108" width="217" align="center"><tr><td background="images/loginbg.jpg" align="center" width="220" rowspan="0" colspan="0">
              <b>��Ա��¼</b>
              <s:form method="POST" action="loginAction!login">
           <s:textfield  name="user.username" label="��Ա��"/>
                <s:password  name="user.password"  label="����"/> <br><div align="center"> <s:submit value="��¼" align="center"/> <s:reset value="����"/> </div></s:form>
              </td></tr> </table>
      </s:if>
          <s:else>
            <table align="center"><tr><td rowspan="0" colspan="0" align="center">
              ��ӭ��<s:property value="#session.username"/>��<br>
              <s:a href="cart/viewcart.jsp">�鿴���ﳵ</s:a>
              <s:form action="logoutAction!logout">
                <s:submit value="ע��"></s:submit>
                </s:form>    
               <a href="getUser!getUser1?username=<s:property value="#session.username"/>">�޸��û����� </a> 
              </td></tr></table>
      </s:else> 
        </td></tr>
        <tr>
          <td height="33" align="center" valign="middle">
<s:a href="user/adduser.jsp"><img src="images/regmember.gif"></s:a> 
        </td></tr> 
      </table>
	   <s:action name="listBigtype" executeResult="true"></s:action></td>
     <td colspan="2" valign="top">
	 <table width="100%" border="0" cellspacing="10">
      <tr>
        <td width="76%" height="285">
        <s:action name="listAd!list" executeResult="true"></s:action>
        </td>
        <td width="24%" valign="top"><s:action name="listNotice!list" executeResult="true"></s:action></td>
      </tr>
    </table>
<div class="box_163css">
	<div class="key">
		<span class="mkey">����</span>
		<ul class="keyul">
			<li>��Ʒ</li>
			<li>����</li>
			<li><a href="#">����>></a></li>
		</ul>
	</div>
	<input type="text" class="seatext" value="������ؼ���" />
	<input type="submit" class="seabtn" value="����">
</div>
    <s:action name="productsAction2!list" executeResult="true"></s:action>
    </td>
    </tr>   
   </table>
    <s:action name="productsAction3!list2" executeResult="true"></s:action>
     <p align="center" class="STYLE1"></p>
    </body>     
</html>   