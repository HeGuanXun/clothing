
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
    <link rel="Bookmark" href="/favicon.ico" >
    <link rel="Shortcut Icon" href="/favicon.ico" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="lib/html5shiv.js"></script>
    <script type="text/javascript" src="lib/respond.min.js"></script>
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
    <title>订单管理列表</title>
    <script src="js/moment.min.js"></script>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 订单管理 <span class="c-gray en">&gt;</span> 订单列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">

    <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l">
      <%--  <a href="javascript:;" onclick="admin_add('添加订单','order/writeOrder','1000','500')" class="btn btn-primary radius">
        <i class="Hui-iconfont">&#xe600;</i> 添加订单</a></span>--%>
        <span class="r">共有数据：<strong>${orderList.size()}</strong> 条</span>
    <table class="table table-border table-bordered table-hover table-bg table-sort">
        <thead>
        <tr>
            <th scope="col" colspan="9">员工列表</th>
        </tr>
        <tr class="text-c">
            <th width="25"><input type="checkbox" name="" value=""></th>
            <th width="150">订单编号</th>
            <th width="80">客户姓名</th>
            <th width="100">选定款式</th>
            <th width="100">颜色</th>
            <th width="130">客户电话</th>
            <th width="130">客户qq</th>
            <th width="100">下单时间</th>
            <th width="100">发货时间</th>
            <th width="100">订单状态</th>
            <th width="80">操作</th>
        </tr>
        </thead>
        <tbody>

        <c:choose>
            <c:when test="${empty orderList}">
                <tr>
                    <td colspan="11" style="text-align: center;">没有数据!!!</td>
                </tr>
            </c:when>
            <c:otherwise>
                <c:forEach items="${orderList}" var="orderEntityDto" varStatus="i">

                    <tr class="text-c active">
                        <td><input type="checkbox" value="1" name=""></td>
                        <td><a>${orderEntityDto.orderNumber}</a></td>
                        <td>${orderEntityDto.customName}</td>

                        <c:choose>
                            <c:when test="${empty orderEntityDto.fashionName}">
                                <td>${orderEntityDto.otherFashion}</td>
                            </c:when>
                            <c:otherwise>
                                <td>${orderEntityDto.fashionName}</td>
                            </c:otherwise>
                        </c:choose>

                        <td>${orderEntityDto.color}</td>
                        <td>${orderEntityDto.phoneNumber}</td>
                        <td>${orderEntityDto.qq}</td>
                        <td>
                          <script>
                                var date = '${orderEntityDto.createDate}';
                                var datetime = moment(date).format("YYYY-MM-DD");
                                document.write(datetime);
                            </script>
                        </td>

                        <td>
                             <script>
                                var date = '${orderEntityDto.sendDate}';
                                var datetime = moment(date).format("YYYY-MM-DD");
                                document.write(datetime);
                            </script>
                        </td>
                         <td>
                        <c:choose>
                            <c:when test="${orderEntityDto.status==6}">
                                <b style="color: green"> ${orderEntityDto.showStatus}</b>
                            </c:when>
                            <c:when test="${orderEntityDto.status==7}">
                                <b style="color: red"> ${orderEntityDto.showStatus}</b>
                            </c:when>
                            <c:otherwise>
                                ${orderEntityDto.showStatus}
                            </c:otherwise>
                        </c:choose>
                      </td>



                        <td class="td-manage">
                            <c:choose>
                                <c:when test="${orderEntityDto.status==6}">
                                <p style="color: green;font-size: 15px;text-align: center">suceess😂</p>
                            </c:when>
                                <c:when test="${orderEntityDto.status==7}">
                                   <a title="删除" href="javascript:;"
                                    onclick="admin_del(this,'${orderEntityDto.orderId}')" class="ml-5" style="text-decoration:none">
                                    <i class="Hui-iconfont">&#xe6e2;</i></a>
                                </c:when>
                                <c:otherwise>
                                  <a title="编辑" href="javascript:;"
                                     onclick="admin_edit('订单编辑','order/toEditOrder/${orderEntityDto.orderId}','1','1150','500')" class="ml-5" style="text-decoration:none">
                                <i class="Hui-iconfont">&#xe6df;</i></a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;<a title="删除" href="javascript:;"
                                    onclick="admin_del(this,'${orderEntityDto.orderId}')" class="ml-5" style="text-decoration:none">
                                    <i class="Hui-iconfont">&#xe6e2;</i></a>
                                </c:otherwise>
                            </c:choose>


                        </td>
                    </tr>

                </c:forEach>

            </c:otherwise>
        </c:choose>


        </tbody>
    </table>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">

    // 分页
    $(function(){
        $('.table-sort').dataTable({
            "aaSorting": [[ 2, "asc" ]],//默认第几个排序
            "bStateSave": true,//状态保存
            "aoColumnDefs": [
                //{"bVisible": false, "aTargets": [ 3 ]}  //控制列的隐藏显示
                //{"orderable":false,"aTargets":[0,8,9]}// 制定列不参与排序
            ]
        });

    });

    /*
     参数解释：
     title	标题
     url		请求的url
     id		需要操作的数据id
     w		弹出层宽度（缺省调默认值）
     h		弹出层高度（缺省调默认值）
     */
    /*管理员-增加*/
    function admin_add(title,url,w,h){
        layer_show(title,url,w,h);
    }
    /*订单-删除*/
    function admin_del(obj,orderId){
        layer.confirm('确认要删除吗？',function(index){
            $.ajax({
                async:true,//异步
                type: 'GET',
                url: 'order/deleteOrder/'+orderId+'',
                dataType: 'json',
                success: function(data){
                    if(data.message == "deleted")
                    {
                        $(obj).parents("tr").remove();
                        layer.msg('已删除!',{icon:1,time:2000});
                        var index = layer.getFrameIndex(window.name);
                        location.reload(index);
                    }
                },
                error:function() {
                    layer.msg('程序出现异常，清联系管理员!',{icon:1,time:2000});
                },
            });
        });
    }


    /*管理员-编辑*/
    function admin_edit(title,url,id,w,h){
        layer_show(title,url,w,h);
    }
    /*管理员-停用*/
    function admin_stop(obj,id){
        layer.confirm('确认要停用吗？',function(index){
            //此处请求后台程序，下方是成功后的前台处理……

            $(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_start(this,id)" href="javascript:;" title="启用" style="text-decoration:none"><i class="Hui-iconfont">&#xe615;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已禁用</span>');
            $(obj).remove();
            layer.msg('已停用!',{icon: 5,time:1000});
        });
    }

    /*管理员-启用*/
    function admin_start(obj,id){
        layer.confirm('确认要启用吗？',function(index){
            //此处请求后台程序，下方是成功后的前台处理……


            $(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_stop(this,id)" href="javascript:;" title="停用" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
            $(obj).remove();
            layer.msg('已启用!', {icon: 6,time:1000});
        });
    }
</script>
</body>
</html>