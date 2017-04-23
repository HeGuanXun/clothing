<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>

<![endif]-->
<link href="static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="static/h-ui.admin/css/H-ui.login.css" rel="stylesheet" type="text/css" />
<link href="static/h-ui.admin/css/style.css" rel="stylesheet" type="text/css" />
<link href="lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>企业班服-后台登录</title>
<meta name="keywords" content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">

  <script type="text/javascript">
      window.test = function () {
          var userName = document.getElementById("userName").value;
          var passWord = document.getElementById("passWord").value;
          var checkCode = document.getElementById("checkCode").value;
          if(userName== "" &&passWord !=""){
              layer.msg('账号必须！',{icon:1,time:2000});
              return false;
          }
          if(passWord==""&& userName!=""){
              layer.msg('密码必须！',{icon:1,time:2000});
              return false;
          }
          if(userName==""&&passWord==""){
              layer.msg('用户或密码不能为空！',{icon:1,time:2000});
              return false;
          }
          if(checkCode="" || checkCode=="验证码:" && userName!="" && passWord != ""){
              layer.msg('验证码必须！',{icon:1,time:2000});
              return false;
          }
          return true;
       }
      //加载验证码
      function loadCode(){
          document.getElementById("img").src="login/checkCode"+"?"+new Date().getTime();
      }

      //验证码验证
      $(document).ready(function(){
          $("#checkCode").mouseout(function(){
              var checkCode = $("#checkCode").val();
              if(checkCode!=""&& checkCode!="验证码:"){
                  $.ajax({
                      url:"checkCode",
                      data:{"checkCode":checkCode,"id":id},
                      dataType:"json",
                      catche:false,
                      error:function(){"网络出错"},
                      success:function(data)
                      {
                          if(data.checkCode=="failCheckCode")
                          {
                              layer.msg('验证码错误!',{icon:1,time:2000});
                          }
                      }
                  });
              }
          });
      });
  </script>
</head>
<body>
<input type="hidden" id="TenantId" name="TenantId" value="" />
<div class="header"></div>
<div class="loginWraper">
  <div id="loginform" class="loginBox">
    <form class="form form-horizontal" action="index" method="post">

     <%-- <div class="row cl">
        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe62c;</i></label>
        <div class="formControls col-xs-8" >
            <span class="select-box size-L" style="width:360px;background-color:#fff">
                <select class="select valid" name="userTypeId" size="1" aria-required="true" aria-invalid="false">
                      <option value="0">管理员</option>
                      <option value="1">市场部</option>
                      <option value="2">客服部</option>
                      <option value="3">设计部</option>
                      <option value="4">财务部</option>
                      <option value="5">生产部</option>
                </select><label id="adminRole-error" class="error valid" style="display: block;"></label>
            </span>
        </div>
      </div>--%>

      <div class="row cl">
        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
        <div class="formControls col-xs-8">
          <input id="userName" name="userName" type="text" placeholder="账户" class="input-text size-L">
        </div>
      </div>
      <div class="row cl">
        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
        <div class="formControls col-xs-8">
          <input  name="passWord" id="passWord" type="password" placeholder="密码" class="input-text size-L">
        </div>
      </div>
      <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-3">
          <input name="checkCode" id="checkCode" class="input-text size-L" type="text" placeholder="验证码" onblur="if(this.value==''){this.value='验证码:'}" onclick="if(this.value=='验证码:'){this.value='';}" value="验证码:" style="width:150px;">
          <img src="login/checkCode" id="img" onclick="loadCode()" style="width: 120px;height: auto">
          &nbsp;&nbsp;<c:if test="${userEntityDto.message=='failCheckCode'}">
            <span style="color: red">验证码错误</span>
          </c:if>
          <br><c:if test="${userEntityDto.message =='error'}">
            <span style="color: red">用户名字或者密码错误</span>
          </c:if>
        </div>
      </div>
    <%--  <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-3">
          <label for="online">
            <input type="checkbox" name="online" id="online" value="">
            使我保持登录状态</label>
        </div>
      </div>--%>
      <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-3">
          <input  type="submit" onclick="return test()" class="btn btn-success radius size-L" value="&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;">
          <input name="" type="reset" class="btn btn-default radius size-L" value="&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;">
        </div>
      </div>
    </form>
  </div>
</div>
<div class="footer">Copyright <a>@何冠勋技术支持</a>></div>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
</body>
</html>