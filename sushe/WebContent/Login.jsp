<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <base href="<%=basePath%>"> 
  <title>宿舍管理系统</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="Style/Style.css" rel="stylesheet" type="text/css" />
  <style type="text/css">
  body{
  
  background-repeat: no-repeat;
  background-position:120px 200px;
  background:  url("Images/55f6724ccc184.jpg");
  background-size:100% 100%;
  }
  .tb1{
  background:#007eff38;
  }
  </style>
</head>
<script language="JavaScript"  >

function mycheck(){

   if(isNull(form1.Type.value)){  
   alert("请选择身份！"); 
   return false;
   }
   if(isNull(form1.Username.value)){  
   alert("请输入用户名！"); 
   return false;
   }
   if(isNull(form1.Password.value)){
   alert("请输入密码！");
     
   return false;
   
   }
      
}

function isNull(str){
if ( str == "" ) return true;
var regu = "^[ ]+$";
var re = new RegExp(regu);
return re.test(str);
}
   
</script>
<body>
<center>
  <br><br><br><br><br>
  <table width="684px" height="400px" border="0" cellspacing="0" cellpadding="0" style="margin-top: 120px;margin-left: 300px;" class="tb1">
    <tr>
      <td height="292" align="center" valign="top" background="">
      <table width="350" height="201" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="72" align="center"><h1 style="color: white; font-size: 40px">宿舍管理系统</h1></td>
        </tr>
        <tr>
          <td align="center" valign="top">
             <form name="form1" action="GoLogin.action" method="post" onSubmit="return mycheck()">
              <table width="100%" border="0" cellspacing="0" cellpadding="0" style="position:relative;">
                <tr style="position: absolute;top: 133px;left:140px">
                  <td height="30" colspan="2" align="center" class="STYLE2"><span style="color:red;">
                    <%if(request.getAttribute("Msg")!=null){%>
                    <%=request.getAttribute("Msg")%>
                    <%}%>
                  </span></td>
                  </tr>
                <tr style="position: absolute;top: 4px;left:79px">
                  <td height="40" align="right" class="STYLE2" style="font-size: 22px">身份：</td>
                  <td align="left"><select name="Type" id="Type" >
                    <option value="">请选择</option>
                    <option value="系统管理员">系统管理员</option>
                    <option value="楼宇管理员">楼宇管理员</option>
                    <option value="学生">学生</option>
                  </select></td>
                  </tr>
                <tr style="position: absolute;top: 61px;left:25px">
                  <td width="37%" height="30" align="right" class="STYLE2" style="font-size: 22px">用户名：</td>
                  <td width="300" align="left"><input type="text" name="Username" id="Username" class="text1" style="width: 200px;height: 30px"/></td>
                  </tr>
                <tr style="position: absolute;top: 110px;left:78px">
                  <td height="30" align="right" class="STYLE2" style="font-size: 22px;margin-top: 40px">密码：</td>
                  <td align="left"><input type="password" name="Password" id="Password" class="text1"  style="width: 200px;height: 30px"/></td>
                  </tr>
                <tr style="position: absolute;top: 160px;left:112px">
                  <td height="30" colspan="2" align="center"><label>
                    <input type="submit" name="button" id="button" value="登录" style="width: 200px;height: 30px">
                  </label></td>
                  </tr>
              </table>
              </form>
          
          </td>
        </tr>
      </table></td>
    </tr>
  </table>


</center>
</body>
</html>
