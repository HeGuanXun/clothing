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
    <title>填写订单</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 订单管理 <span class="c-gray en">&gt;</span> 发单 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
      <div class="page-header">
          <h3 style="color: blue">添加订单</h3>
      </div><div class="operate panel panel-default">
      <div class="panel-body">
          <div class="pull-right" align="right">
              <a onclick="add()" class="btn btn-sm btn-primary">新增</a>
          </div>
      </div>
  </div>

    <br>
    <div <%--style="background: #ececf0"--%>>
        <table class=" table-border table-bordered table-bg table-sort" style="background-color: /*honeydew*/#EEEEEE">
            <thead>
            <tr>
                <th scope="col" colspan="9" >
                    <span style="align-content: center;font-size: 30px;font-family: 微软雅黑">企业班服内部流程订单</span>
                    <span style="font-size: 15px;color: red">【
                        <select style="font-size: 15px;width: auto" class="select">
                            <option style="font-size: 15px;">请选择归属公司</option>
                            <option style="font-size: 15px;" selected>总部</option>
                            <option style="font-size: 15px;">江西分公司A</option>
                            <option style="font-size: 15px;">江西分公司B</option>
                            <option style="font-size: 15px;">江西分公司C</option>
                            <option style="font-size: 15px;">江西分公司D</option>
                        </select>
                        】</span>
                    <span>生产编号：</span>
                    <img src="static/h-ui/images/class-server/banfu.jpg" align="right"></th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td width="120px" align="center">客户名称<br>（班长）</td>
                    <td align="center"><input type="text" class="input-text" style="width: 300px"></td>
                    <td width="120px"  align="center">单位名称<br>（班级）</td>
                    <td align="center"><input type="text" class="input-text" style="width: 200px"></td>
                    <td width="50px"  align="center">联系<br>方式</td>
                    <td>
                        <table>
                            <tr>
                                <td width="150px"  align="center" >Tel:</td>
                                <td ><input type="text"class="input-text" style="width: 150px" placeholder="请输入电话号码"></td>
                            </tr>
                            <tr>
                                <td align="center">qq</td>
                                <td><input type="text"class="input-text" style="width: 150px"></td>
                            </tr>
                        </table>
                    </td>
                </tr>

            <tr>
                <td width="120px" align="center"><br>选定款式<br>&nbsp;</td>
                <td align="center">
                    <select style="width: 180px" class="select">
                        <option style="font-size: 15px">选择款式</option>
                        <option style="font-size: 15px">A1优质莱卡棉纯色夏季短袖</option>
                        <option style="font-size: 15px">A3高档莱卡棉夏季短袖</option>
                        <option style="font-size: 15px">A4进口优质普棉纯色夏季短袖</option>
                        <option style="font-size: 15px">E8民国风中山装</option>
                    </select><label>
                    <select style="width: 100px" class="select" >
                        <option>请选择颜色</option>
                        <option>灰色</option>
                        <option>纯红</option>
                        <option>纯白色</option>
                        <option>纯黄色</option>
                        <option>纯紫色</option>
                        <option>纯蓝色</option>
                        <option>浅蓝色</option>
                        <option>天蓝色</option>
                        <option>湖蓝色</option>
                        <option>果绿色色</option>
                        <option>其他色系</option>
                    </select>
                </label>


                </td>
                <td align="center"><br>其他款式<br>&nbsp;</td>
                <td align="center"><input type="text" class="input-text" style="width: 300px" placeholder="若无选定款式无符合条件记录，在此填写"></td>
            </tr>

            <tr>
                <td align="center"><br>订单归属地<br>&nbsp;</td>
                <td>
                    <div class="info">
                        <div>
                            <select id="s_province" name="s_province" class="select" style="width: 80px"></select>  
                            <select id="s_city" name="s_city" class="select" style="width: 80px"></select>  
                            <select id="s_county" name="s_county" class="select" style="width: 80px"></select>
                            <script class="resources library" src="static/h-ui/js/area.js" type="text/javascript"></script>
                            <script type="text/javascript">_init_area();</script>
                        </div>
                        <div id="show"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td align="center"><br>码号<br>&nbsp;</td>
                <td align="center" style="width: 100px">男款<br>（通款）

                    <table class="table">
                        <tr>
                            <td>*XS</td>
                        </tr>
                        <tr>
                            <td><input></td>
                        </tr>
                    </table>
                </td>
            </tr>
            </tbody>
        </table>

    </div>







</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->






<script type="text/javascript">
    var Gid  = document.getElementById ;
    var showArea = function(){
        Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" +
            Gid('s_city').value + " - 县/区" +
            Gid('s_county').value + "</h3>"
    }
    Gid('s_county').setAttribute('onchange','showArea()');
</script>



<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/hcharts/Highcharts/5.0.6/js/highcharts.js"></script>
<script type="text/javascript" src="lib/hcharts/Highcharts/5.0.6/js/modules/exporting.js"></script>
</body>
</html>