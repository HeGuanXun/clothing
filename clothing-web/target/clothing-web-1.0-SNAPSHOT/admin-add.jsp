<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<!--[if lt IE 9]>
	<script type="text/javascript" src="lib/html5shiv.js"></script>
	<script type="text/javascript" src="lib/respond.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
	<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
	<!--[if IE 6]>
	<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
	<script>DD_belatedPNG.fix('*');</script>
	<![endif]-->
	<title>添加管理员 - 管理员管理 - H-ui.admin v2.4</title>
	<meta name="keywords" content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
	<meta name="description" content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" id="form-admin-add"  method="post">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-1" style="text-align: right"><span class="c-red">*</span>账号：</label>
			<div class="formControls col-xs-8 col-sm-5">
				<input type="text" class="input-text" value=""  id="userName" name="userName" placeholder="账号">
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-1" style="text-align: right"><span class="c-red">*</span>权限：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box" style="width:150px;">
			<select class="select" id="permission" name="permission" size="1">
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
				<input class="btn btn-primary radius" type="button" onclick="test()"  value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
			</div>
		</div>
	</form>
</article>

<script type="text/javascript">

    window.test = function () {
        var userName = document.getElementById("userName").value;
        var permission = document.getElementById("permission").value;
        if(userName== ""){
            layer.msg('账号必须！',{icon:1,time:2000});
            return false;
        }
			$.ajax({
				url:"admin/index",
				data:{"userName":userName,"permission":permission},
				dataType:"json",
				type:"post",
				error:function(){"网络出错"},
				success:function(data)
				{
                    if(data.message == "success")
                    {
                        layer.msg('添加成功!',{icon:1,time:2000});

                        setTimeout(function () {
                            parent.layer.close(index);
                        }, 2000);

                        var index = parent.layer.getFrameIndex(window.name);
                        parent.location.reload(index);
                    }
                    if(data.message == "fail")
					{
						layer.msg('该账号已经存在，不能注册!',{icon:1,time:1000});
						return false;
					}
                    var index = parent.layer.getFrameIndex(window.name);
                    parent.$('.btn-refresh').click();

				}
			});
        return true;
    }

	/*function callback()
	{
		var index = parent.layer.getFrameIndex(window.name);
		parent.$('.btn-refresh').click();
		parent.layer.close(index);
	}
*/
	function reloadPage(index)
	{
		alert("调用成功!");
		window.location.reload();
		parent.layer.close(index);
    }
	
</script>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">
    $(function(){
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });

        $("#form-admin-add").validate({
            rules:{
                passWord:{
                    required:true,
                    minlength:4,
                    maxlength:16
                },
            },

            messages: {
                userName: {
                    required: "请输入用户名",
                    minlength: "用户名必需由两个字母组成"
                },
            },
            onkeyup:false,
            focusCleanup:true,
            success:"valid",
           /* submitHandler:function(form){
                $(form).ajaxSubmit({
                    type: 'post',
                    url: "admin/index" ,
                    dataType:"json",
                    success: function(data){
                        if(data.message!=null)
                        {
                            console.log("测试success！")
                            layer.msg('添加成功!',{icon:1,time:1000});
								return true;
                        } if(data.error!=null)
                        {
                            layer.msg('该账号已经存在，不能注册!',{icon:1,time:1000});
                            return false;
                        }
                        if(data.othermsg!=null)
                        {
                            layer.msg('用户名或者密码为空!',{icon:1,time:1000});
                            return false;
                        }
                    },
                    error: function(XmlHttpRequest, textStatus, errorThrown){
                        layer.msg('error!',{icon:1,time:1000});
                    }
                });
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