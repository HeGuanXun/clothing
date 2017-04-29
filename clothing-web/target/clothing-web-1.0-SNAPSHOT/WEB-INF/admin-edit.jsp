
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<base href="<%=basePath%>">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<link rel="Bookmark" href="favicon.ico" >
	<link rel="Shortcut Icon" href="favicon.ico" />
	<!--[if lt IE 9]>
	<script type="text/javascript" src="lib/html5.js"></script>
	<script type="text/javascript" src="lib/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
	<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
	<!--[if IE 6]>
	<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
	<script>DD_belatedPNG.fix('*');</script><![endif]-->
	<!--/meta 作为公共模版分离出去-->

	<title>添加管理员 - 管理员管理 - H-ui.admin v3.0</title>
	<meta name="keywords" content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
	<meta name="description" content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<article class="cl pd-20">
	<form action="" method="post" class="form form-horizontal" id="form-admin-add">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>账号：</label>
			<div class="formControls col-xs-8 col-sm-9 ">
				<input type="text" class="input-text"  disabled="disabled" value="${userEntityDto.userName}" placeholder="" id="userName" name="userName">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">新密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="password" class="input-text" autocomplete="off" value="" placeholder="新密码" id="passWord" name="passWord">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">确认密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="password" class="input-text" autocomplete="off"  placeholder="确认新密码" id="passWord2" name="passWord2">
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"></span>姓名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${userEntityDto.realName}" placeholder="" id="realName" name="realName">
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">部门：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box" style="width:150px;">
				<select class="select" name="department" id="department" size="1">
					<option value="${userEntityDto.department}">${userEntityDto.department}</option>
					<option value="市场部">市场部</option>
					<option value="客服部">客服部</option>
					<option value="设计部">设计部</option>
					<option value="财务部">财务部</option>
					<option value="生产部">生产部</option>
				</select>
				</span> </div>
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">权限：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box" style="width:150px;">
				<select class="select" name="permission" id="permission" size="1">
					<option value="">--选择权限--</option>
					<option value="0">管理员</option>
					<option value="1">市场部</option>
					<option value="2">客服部</option>
					<option value="3">设计部</option>
					<option value="4">财务部</option>
					<option value="5">生产部</option>
				</select>
				</span> </div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" type="button" onclick="update()"  value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
			</div>
		</div>
	</form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.page.js"></script>

<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">

    window.update = function () {
        var userName = document.getElementById("userName").value;
        var passWord = document.getElementById("passWord").value.trim();
        var passWord2 = document.getElementById("passWord2").value.trim();
        var realName = document.getElementById("realName").value.trim();
        var department = document.getElementById("department").value.trim();
        var permission =$('#permission').val().trim();
        $.ajax({
            url:"admin/edit",
            data:{"userName":userName,"department":department,"permission":permission,"passWord":passWord,"passWord2":passWord2,"realName":realName,"id":${userEntityDto.id}},
            dataType:"json",
            type:"get",
            error:function(){"网络出错"},
            success:function(data)
            {
                if(data.message == "success")
                {
                    layer.msg('修改成功!',{icon:1,time:2000});

                    setTimeout(function () {
                        parent.layer.close(index);
                    }, 2000);

                    var index = parent.layer.getFrameIndex(window.name);
                    parent.location.reload(index);
                }

                if (data.message == "diff")
				{
                    layer.msg('密码不一致!',{icon:1,time:2000});
                    return false;
				}

                var index = parent.layer.getFrameIndex(window.name);
                parent.$('.btn-refresh').click();

            }
        });
        return true;
    }

    $(function(){
        $('#passWord').val(location.search.substr(1).split("&")[0]);
        $('#passWord2').val(location.search.substr(1).split("&")[2]);
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });

        $("#form-admin-add").validate({
            rules:{
                userName:{
                    required:true,
                    minlength:4,
                    maxlength:16
                },
                password:{
                    required:false,
                    minlength:6,
                    maxlength:16
                },
                password2:{
                    required:false,
                    equalTo: "#password",
                    minlength:6,
                    maxlength:16
                },
                realName:{
                    required:false,
                },
                permission:{
                    required:false,
                },
            },
            onkeyup:false,
            focusCleanup:true,
            success:"valid",
       /*     submitHandler:function(form){
                $(form).ajaxSubmit();
                var index = parent.layer.getFrameIndex(window.name);
                parent.$('.btn-refresh').click();
                parent.layer.close(index);
            }*/
        });
    });
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>