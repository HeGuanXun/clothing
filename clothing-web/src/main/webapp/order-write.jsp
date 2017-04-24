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
    <link rel="stylesheet" type="text/css" href="bootstrap/css/datepicker.css" />
    <!--[if IE 6]>
    <script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>填写订单</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 订单管理 <span class="c-gray en">&gt;</span> 发单 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->


<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/hcharts/Highcharts/5.0.6/js/highcharts.js"></script>
<script type="text/javascript" src="lib/hcharts/Highcharts/5.0.6/js/modules/exporting.js"></script>
<div class="page-header">
    <h3 style="color: blue">&nbsp;&nbsp;&nbsp;&nbsp;添加订单</h3>
</div><div class="operate panel panel-default">
    <div class="panel-body">
        <div class="pull-right" align="right">
            <a onclick="add()" class="btn btn-sm btn-primary">新增</a>
        </div>
    </div>
</div>
<div class="col-xs-12">
    <form id="form_data" name="form_data" method="post" class="well form-horizontal clearfix">
        <input type="hidden" name="opmode" id="opmode" value="add">
        <table id="addorder" border=1 cellspacing=0 cellpadding=0 style='border-collapse:collapse;border:none;background-color: #EEEEEE'>
            <tr style='height:47.0pt'>
                <td colspan="15" style="border: none;width: 753px;position: absolute;padding-top: 8px;">
                    <span style='font-weight:bold; font-size:22.0pt;font-family:宋体'>企业班服内部流程订单</span>
                    <span style='font-size:12.0pt;font-family:宋体;color:red'>【
                        <select name="area" id="area" check="require" msg="地区不能为空">
			<option value="">请选择</option>
			<option value='总部' >总部</option><option value='客服部' >客服部</option><option value='设计公司' >设计公司</option><option value='财务部' >财务部</option><option value='产品公司' >产品公司</option><option value='阿凡达电商' >阿凡达电商</option><option value='设计公司兼职' >设计公司兼职</option><option value='招商部陈康俊' >招商部陈康俊</option><option value='招商部谭磊' >招商部谭磊</option><option value='招商部' >招商部</option><option value='招商部程鹏' >招商部程鹏</option><option value='招商部谢文博' >招商部谢文博</option><option value='江西分公司A' >江西分公司A</option><option value='江西分公司B' >江西分公司B</option><option value='江西分公司C' >江西分公司C</option><option value='江西分公司D' >江西分公司D</option><option value='江西分公司E' >江西分公司E</option><option value='招商部韩进' >招商部韩进</option><option value='招商部杨兴' selected>招商部杨兴</option><option value='招商部杨晨' >招商部杨晨</option>		</select>】</span>
                    <span style='font-family:宋体'>生产编号：</span>
                </td>
            </tr>
            <tr style='height:13.1pt'>
                <td  rowspan=2 style='width:45px;border-top:solid 1.5pt;border-left:solid 1.5pt;  border-bottom:solid 1.0pt;border-right:solid 1.0pt;  padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                    <p style='text-align:center;width: 120px'><b><span style='font-size:9.0pt;font-family:宋体'>客户名称</span></b></p>
                    <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>（班长）</span></b></p>
                </td>
                <td  colspan=2 rowspan=2 style='width:60px;border:solid 1.0pt;border-top:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                    <input class="input-text" width="60px" type="text" id="cust_name" name="cust_name" check="require" msg="请输入客户名称">
                </td>
                <td  rowspan=2 style='width:48.9pt;border:solid 1.0pt;border-top:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                    <p style='text-align:center;width: 100px'><b><span style='font-size:9.0pt;font-family:宋体'>单位</span></b></p>
                    <p style='text-align:center;width: 100px'><b><span style='font-size:9.0pt;font-family:宋体'>(班级)</span></b></p>
                </td>
                <td  colspan=2 rowspan=2 style='width:134.4pt;border:solid 1.0pt;border-top:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                    <input class="input-text" type="text" id="unit" name="unit" check="require" msg="请输入客户单位">
                </td>
                <td width=53 rowspan=2 style='width:39.55pt;border:solid 1.0pt;border-top:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                    <p style='text-align:center;text-autospace:ideograph-other'><b><span style='font-size:9.0pt;font-family:宋体'>联系</span></b></p>
                    <p style='text-align:center;text-autospace:ideograph-other'><b><span style='font-size:9.0pt;font-family:宋体'>方式</span></b></p>
                </td>
                <td  colspan="0.5" style='width:15px;border:solid 1.0pt;border-top:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                    <p style='text-align:center;'><span style='font-size:9.0pt;font-family:宋体'>Tel</span><span style='font-size:9.0pt;font-family:宋体'>：</span></p>
                </td>
                <td width=159 colspan=2 style='width:119.1pt;border:solid 1.0pt;border-top:solid 1.5pt;border-right:solid 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                    <input class="input-text" type="text" id="tel" name="tel" check="number" msg="客户电话只能是数字">
                </td>
            </tr>
            <tr style='height:13.1pt'>
                <td width=39 style='width:28.9pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                    <p style='text-align:center;width: 120px;text-autospace:ideograph-other'><span  style='font-size:9.0pt;font-family:宋体;text-align:center;'>&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;
                        Q Q</span><span style='font-size:9.0pt;font-family:宋体'>：</span></p>
                </td>
                <td width=159 colspan=2 style='width:119.1pt;border-left:
  none;border-bottom:solid 1.0pt;border-right:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                    <input class="input-text" type="text" id="qq" name="qq" check="number" msg="客户QQ只能是数字">
                </td>
            </tr>

            <tr style='height:26.95pt'>
                <td width=73 style='width:45px;border-left:solid 1.5pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:26.95pt'>
                    <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>选定款式</span></b></p>
                </td>
                <td width=462 colspan=2 style='width:200px;border-left:none;border-bottom:solid 1.0pt;border-right:none;
  padding:0cm 5.4pt 0cm 5.4pt;height:26.95pt'>
                    <select name="style" id="style"  check="require" msg="请选择款式" class="select">
                        <option value="">选择款式</option>
                        <option value='A1优质莱卡棉纯色夏季短袖' >A1优质莱卡棉纯色夏季短袖</option><option value='A1优质莱卡棉撞边夏季短袖' >A1优质莱卡棉撞边夏季短袖</option><option value='A1优质莱卡棉插袖夏季短袖' >A1优质莱卡棉插袖夏季短袖</option><option value='A2高端莫代尔纯色夏季短袖' >A2高端莫代尔纯色夏季短袖</option><option value='A3高档莱卡棉夏季短袖' >A3高档莱卡棉夏季短袖</option><option value='A4进口优质普棉纯色夏季短袖' >A4进口优质普棉纯色夏季短袖</option><option value='A5普棉夏季短袖' >A5普棉夏季短袖</option><option value='A6-3D全身印夏季短袖' >A6-3D全身印夏季短袖</option><option value='A7莫代尔星空迷彩短袖' >A7莫代尔星空迷彩短袖</option><option value='A8进口高端纯棉纯色夏季短袖' >A8进口高端纯棉纯色夏季短袖</option><option value='A9大红鹰普棉纯色夏季短袖' >A9大红鹰普棉纯色夏季短袖</option><option value='A11高档莱卡条纹短袖' >A11高档莱卡条纹短袖</option><option value='A10运动网孔短袖' >A10运动网孔短袖</option><option value='B1普通珠地棉polo立领短袖' >B1普通珠地棉polo立领短袖</option><option value='B3高端珠地棉polo立领短袖' >B3高端珠地棉polo立领短袖</option><option value='B2优质珠地棉polo立领短袖' >B2优质珠地棉polo立领短袖</option><option value='B4高端珠地棉polo立领短袖（雪阳纯色）' >B4高端珠地棉polo立领短袖（雪阳纯色）</option><option value='B5高档珠地棉撞色polo衫（雪阳撞色）' >B5高档珠地棉撞色polo衫（雪阳撞色）</option><option value='C1优质莱卡棉春秋长袖' >C1优质莱卡棉春秋长袖</option><option value='D1高档不倒绒棒球服' >D1高档不倒绒棒球服</option><option value='D3优质抓绒纯色套头卫衣' >D3优质抓绒纯色套头卫衣</option><option value='D4优质抓绒纯色套头卫衣' >D4优质抓绒纯色套头卫衣</option><option value='D7健康精棉撞色拉链卫衣' >D7健康精棉撞色拉链卫衣</option><option value='D8优质薄款纯色圆领卫衣' >D8优质薄款纯色圆领卫衣</option><option value='D9优质薄款套头卫衣' >D9优质薄款套头卫衣</option><option value='D10优质薄款撞色套头卫衣' >D10优质薄款撞色套头卫衣</option><option value='D11套装系列' >D11套装系列</option><option value='E1假两件' >E1假两件</option><option value='E2连帽衫' >E2连帽衫</option><option value='E3普通、优质马甲系列' >E3普通、优质马甲系列</option><option value='E4正装系列' >E4正装系列</option><option value='E5球服系列' >E5球服系列</option><option value='E6日韩风套装' >E6日韩风套装</option><option value='暂未选定' >暂未选定</option><option value='E7日韩风衬衫' >E7日韩风衬衫</option><option value='其他款式' >其他款式</option><option value='E8民国风中山装' >E8民国风中山装</option><option value='帝峰衫国样衣布料集领取处' >帝峰衫国样衣布料集领取处</option><option value='F1冲锋衣' >F1冲锋衣</option>	</select>
                </td>
                <td width=462 colspan="1" style='width:150px;border-left:none;border-bottom:solid 1.0pt;border-right:none; padding:0cm 5.4pt 0cm 5.4pt;height:26.95pt'>
                    <select name="color" id="color" class="select">
                        <option value="">请选择颜色</option>
                        <option value='灰色' >灰色</option><option value='纯红' >纯红</option><option value='纯白色' >纯白色</option><option value='纯黄色' >纯黄色</option><option value='纯黑色' >纯黑色</option><option value='纯蓝色' >纯蓝色</option><option value='纯紫色' >纯紫色</option><option value='浅蓝色' >浅蓝色</option><option value='天蓝色' >天蓝色</option><option value='湖蓝色' >湖蓝色</option><option value='果绿色' >果绿色</option><option value='其他色系' >其他色系</option>	</select>
                </td>
                <td colspan="2" style='width:28.9pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:26.95pt'>
                    <p style='text-align:center;'><span style='font-size:9.0pt;font-family:宋体'>
                        其他款式</span></p>
                </td>
                <td width=159 colspan=4 style='width:119.1pt;border-left:
  none;border-bottom:solid 1.0pt;border-right:solid 1.5pt;
  padding:5.5pt 5.4pt 0cm 5.4pt;height:26.95pt'>
                    <p style='text-align:center;'><span style='font-size:9.0pt;font-family:宋体'>
                        <input class="input-text" type="text" name="other_style" id="other_style" placeholder="若无选定款式无符合条件记录，在此填写"  /></span></p>
                </td>
            </tr>

         <tr style='height:26.9pt'>
             <td width=73 style='width:55.1pt;border-left:solid 1.5pt;
border-bottom:solid 1.0pt;border-right:solid 1.0pt;
padding:0cm 5.4pt 0cm 5.4pt;height:26.9pt'>
                 <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>订单归属地</span></b></p>
             </td>
             <td width=462 colspan=9 style='width:346.35pt;border-left:
none;border-bottom:solid 1.0pt;border-right:solid 1.5pt;
padding:5.4pt 5.4pt 0cm 5.4pt;height:26.9pt'>
                 <p><span style='font-size:9.0pt;font-family:宋体'>
   <div class="info">
                        <div>
                            <select id="s_province" name="s_province" class="select" style="width: 120px"></select>  
                            <select id="s_city" name="s_city" class="select" style="width: 120px"></select>  
                            <select id="s_county" name="s_county" class="select" style="width: 120px"></select>
                            <script class="resources library" src="static/h-ui/js/area.js" type="text/javascript"></script>
                            <script type="text/javascript">_init_area();</script>
                             <input name="school" id="school" placeholder="输入学校等补充信息" class="input-text" style="width: 300px;"/>
                        </div>
                        <div id="show"></div>
                    </div>

 </span></p>
             </td>
         </tr>
            <tr style='height:30.7pt'>
                <td width=73 rowspan=2 style='width:45px;border-left:solid 1.5pt; border-bottom:solid 1.0pt;border-right:solid 1.0pt;height:8.7pt'>
                    <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>码号</span></b></p>
                </td>
                <td width=36 style='width:32pt;border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:8.7pt'>
                    <p style='text-align:center'><span style='font-size:9.0pt;font-family:宋体'>*XS</span></p>
                </td>
                <td width=36 style='width:32pt;border-bottom:
  solid 1.0pt;border-right:solid 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:8.7pt'>
                    <p style='text-align:center'><span style='font-size:9.0pt;font-family:宋体'>*S</span></p>
                </td>
                <td width=36 style='width:32pt;border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:8.7pt'>
                    <p style='text-align:center'><span style='font-size:9.0pt;font-family:宋体'>*M</span></p>
                </td>
                <td style='border-bottom:solid 1.0pt;border-right:solid 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:8.7pt'>
                    <p style='text-align:center'><span style='font-size:9.0pt;font-family:宋体'>L</span></p>
                </td>
                <td width=36 style='width:32pt;border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:8.7pt'>
                    <p style='text-align:center'><span style='font-size:9.0pt;font-family:宋体'>XL</span></p>
                </td>
                <td width=36 style='width:32pt;border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:8.7pt'>
                    <p style='text-align:center'><span style='font-size:9.0pt;font-family:宋体'>XXL</span></p>
                </td>
                <td width=36 style='width:32pt;border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:8.7pt'>
                    <p style='text-align:center'><span style='font-size:9.0pt;font-family:宋体'>XXXL</span></p>
                </td>
                <td width=36 style='width:32pt;border-bottom:solid 1.0pt;border-right:solid 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:8.7pt'>
                    <p style='text-align:center'><span style='font-size:9.0pt;font-family:宋体'>总计</span></p>
                </td>
            </tr>

            <tr id="size" style='height:15.75pt'>
                <td width=36 style='width:32pt;border:solid 1.0pt;height:15.75pt;text-align: center'>
                    <input style="text-align: center" type="number" name="mxs" id="mxs" check="positive" msg="数量只能为正数" />
                </td>
                <td width=36 style='width:80pt;border:solid 1.0pt;height:15.75pt;text-align: center'>
                    <input style="text-align: center" type="number" name="ms" id="ms" check="positive" msg="数量只能为正数" />
                </td>
                <td width=36 style='width:32pt;border:solid 1.0pt;height:15.75pt;text-align: center'>
                    <input style="text-align: center" type="number" name="mm" id="mm" check="positive" msg="数量只能为正数" />
                </td>
                <td width=36 style='width:32pt;border:solid 1.0pt;height:15.75pt;text-align: center'>
                    <input style="text-align: center" type="number" name="ml" id="ml" check="positive" msg="数量只能为正数" />
                </td>
                <td width=36 style='width:32pt;border:solid 1.0pt;height:15.75pt;text-align: center'>
                    <input style="text-align: center" type="number" name="mxl" id="mxl" check="positive" msg="数量只能为正数" />
                </td>
                <td width=36 style='width:32pt;border:solid 1.0pt;height:15.75pt;text-align: center'>
                    <input style="text-align: center" type="number" name="mxxl" id="mxxl" check="positive" msg="数量只能为正数" />
                </td>
                <td width=36 style='width:32pt;border:solid 1.0pt;height:15.75pt;text-align: center'>
                    <input style="text-align: center" type="number" name="mxxxl" id="mxxxl" check="positive" msg="数量只能为正数" />
                </td>

                <td width=36 style='width:32pt;border:solid 1.0pt;border-right:solid 1.5pt;height:15.75pt;text-align: center'>
                    <span id="totalCount"></span>
                </td>
            </tr>
            <tr style='height:15.7pt'>
                <td width=36 colspan=1 style='width:32pt;border-left:solid 1.5pt;
   border-bottom:solid 1.0pt;border-right:solid 1.0pt;
   padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                    <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>成交金额</span></b></p>
                </td>
                <td width=165 colspan=4 style='width:123.5pt;border-left:
   none;border-bottom:solid 1.0pt;border-right:solid 1.0pt;
   padding:5.4pt 5.4pt 0cm 5.4pt;height:15.7pt'>
                    <p><span style='font-size:9.0pt;font-family:宋体'><input class="input-text" type="text" name="total_price" id="total_price" /></span></p>
                </td>
                <td width=112 colspan=2 rowspan=3 style='width:83.75pt;border:solid 1.0pt;
   padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                    <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>印制说明</span></b></p>
                </td>
                <td width=200 colspan=3 rowspan=3 style='width:200.1pt;
   border-bottom:solid 1.0pt;border-right:solid 1.5pt;
   padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                    <textarea class="input-text" name="print_desc" id="print_desc"  check="require" msg="请说明印图技术" placeholder="请在此说明印图技术，如:2个单色图，或1个彩色图"  style="width:100%;height: 85px;"></textarea>
                </td>
            </tr>
            <tr style='height:15.7pt'>
                <td width=73 style='width:45px;border-left:solid 1.5pt;
   border-bottom:solid 1.0pt;border-right:solid 1.0pt;
   padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                    <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>定<span>&nbsp; </span>金</span></b></p>
                </td>
                <td width=165 colspan=4 style='width:123.5pt;border-left:
   none;border-bottom:solid 1.0pt;border-right:solid 1.0pt;
   padding:5.4pt 5.4pt 0cm 5.4pt;height:15.7pt'>
                    <p><span style='font-size:9.0pt;font-family:宋体'><input class="input-text" type="text" name="front_money" id="front_money" /></span></p>
                </td>
            </tr>
            <tr style='height:15.7pt'>
                <td width=73 style='width:45px;border-left:solid 1.5pt;
   border-bottom:solid 1.0pt;border-right:solid 1.0pt;
   padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                    <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>接单日期</span></b></p>
                </td>
                <td width=165 colspan=4 style='width:123.5pt;border-left:none;border-bottom:solid 1.0pt;border-right:solid 1.0pt;
   padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                    <p><b><span style='font-size:9.0pt;font-family:宋体'>2017-04-23</span></b></p>
                </td>
            </tr>
            <tr style='height:15.7pt'>
                <td width=73 style='width:45px;border-left:solid 1.5pt;border-bottom:solid 1.0pt;border-right:solid 1.0pt;height:15.7pt'>
                    <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>发货日期</span></b></p>
                </td>
                </td>
                <td width=165 colspan=4 style='width:123.5pt;border-bottom:solid 1.0pt;border-right:solid 1.0pt; padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                    <%--<input data-date-format="yyyy-mm-dd" style="width: 150px" id="ship_time" name="ship_time" readonly="readonly" class="input-date input-text" check="require" msg="发货时间不能为空" >--%>
                        <input type="text" style="width: 150px" class="input-text" value="" id="dp1">
                        <script>
                            $(function(){
                                $('#dp1').datepicker({
                                    format: 'yyyy-mm-dd'
                                });
                            });
                        </script>
                </td>
                <td width=112 colspan=2 rowspan=2 style='width:83.75pt;border:solid 1.0pt;
   padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                    <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>备注</span></b></p>
                </td>
                <td width=383 colspan=3 rowspan=2 style='width:287.1pt;border-bottom:solid 1.0pt;border-right:solid 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                    <textarea name="note" id="note" style="width:100%;height: 55px;" class="input-text"></textarea>
                </td>
            </tr>
            <tr style='height:15.7pt'>
                <td width=73 style='width:45px;border-left:solid 1.5pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                    <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>接 单 人</span></b></p>
                </td>
                <td width=165 colspan=4 style='width:123.5pt;border-left:
  none;border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                    <p><b><span style='font-size:9.0pt;font-family:宋体'></span></b></p>
                </td>
            </tr>
            <tr style='height:17.7pt'>
                <td width=720 colspan=10 style='width:549.45pt;border-left:
  solid 1.5pt;border-bottom:solid 1.0pt;border-right:
  solid 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;height:17.7pt'>
                    <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>设计样稿（设计师：何冠勋）</span></b></p>
                </td>
            </tr>
            <tr style='height:26.95pt'>
                <td width=733 colspan=10 style='width:549.45pt;border-left:solid 1.5pt;border-bottom:solid 1.0pt;border-right:solid 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.95pt'>
                    <p style='text-align:center'><b><span
                            style='font-size:9.0pt;font-family:宋体;color:silver'>&nbsp;</span></b></p>
                </td>
            </tr>
            <tr style='height:27.7pt'>
                <td width=73 style='width:45px;border-left:solid 1.5pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt'>
                    <p style='text-align:center'><b><span
                            style='font-size:9.0pt;font-family:宋体;'>配送方式</span></b></p>
                </td>
                <td width=79 colspan=2 style='width:59.5pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt'>
                    <select name="ship_method" id="ship_method" class="select">
                        <option value="">选择配送方式</option>
                        <option value="快递">快递</option>
                        <option value="自提">自提</option>
                    </select>
                </td>
                <td width=75 colspan=1 style='width:56.25pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt'>
                    <p style='text-align:center'><b><span
                            style='font-size:9.0pt;font-family:宋体;color:black'>收件人</span></b></p>
                </td>
                <td width=82 colspan=1 style='width:61.35pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt'>
                    <input class="input-text"  type="text" id="ship_person" name="ship_person"  check="require" msg="收件人不能为空">
                </td>

                <td width=49 colspan=1 style='width:36.75pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt'>
                    <p style='text-align:center'><b><span
                            style='font-size:9.0pt;font-family:宋体;color:black'>联系方式</span></b></p>
                </td>
                <td width=110 colspan=1 style='width:82.35pt;border-left:none;border-bottom:solid 1.0pt;border-right:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt'>
                    <input class="input-text" type="text" id="ship_tel" name="ship_tel">
                </td>
            </tr>
            <tr style='height:27.7pt'>
                <td width=46 colspan=1 style='width:34.65pt;
  border-bottom:solid 1.5pt;border-right:solid 1.0pt;border-left:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt'>
                    <p style='text-align:center'><b><span
                            style='font-size:9.0pt;font-family:宋体;color:black'>收件地址</span></b></p>
                </td>
                <td width=218 colspan=3 style='width:163.5pt;border-left:
  none;border-bottom:solid 1.5pt;border-right:none;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt'>
                    <div class="info">
                        <div>
                            <select id="ss_province" name="ss_province" class="select" style="width: 120px"></select>  
                            <select id="ss_city" name="ss_city" class="select" style="width: 120px"></select>  
                            <select id="ss_county" name="ss_county" class="select" style="width: 120px"></select>
                            <script class="resources library" src="static/h-ui/js/area.js" type="text/javascript"></script>
                            <script type="text/javascript">_init_area2();</script>
                        </div>
                    </div>
                </td>
                <td width=218 colspan=3 style='width:163.5pt;border-left:none;border-bottom:solid 1.5pt;border-right:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt'>
                    <input class="input-text" type="text" id="ship_addr" name="ship_addr">
                </td>
            </tr>
        </table>
    </form>
</div>

<!-- PAGE CONTENT ENDS -->
</div><!-- /.col -->
</div><!-- /.row -->
</div><!-- /.page-content -->
</div><!-- /.main-content -->
</div><!-- /#ace-settings-container -->
</div><!-- /.main-container-inner -->
</div><!-- /.main-container -->
<!-- basic scripts -->

<!--[if !IE]>
-->
<script type="text/javascript">
    window.jQuery || document.write("<script src='/Public/js/jquery-2.1.0.min.js'>" + "<" + "/script>");</script>
<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='/Public/js/jquery-1.11.0.min.js'>"+"<"+"/script>");</script>
<![endif]-->
<script type="text/javascript">
    if ("ontouchend" in document)
        document.write("<script src='/Public/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");</script>
<script src="/Public/js/bootstrap.min.js"></script>
<script src="/Public/js/typeahead-bs2.min.js"></script>
<script src="/Public/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="/Public/js/jquery.ui.touch-punch.min.js"></script>
<script src="/Public/js/jquery.slimscroll.min.js"></script>


<script src="/Public/js/date-time/bootstrap-datepicker.js"></script>
<script src="/Public/js/date-time/locales/bootstrap-datepicker.zh-CN.js"></script>

<script src="/Public/js/jquery.gritter.min.js"></script>
<script src="/Public/js/bootbox.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        $('.input-date').datepicker({
            language:"zh-CN",
            autoclose : true
        });
        $(".input-daterange").datepicker({
            format: "yyyy-mm-dd",
            language:"zh-CN",
            autoclose: true
        });
    });
</script>

<!-- ace scripts -->
<script src="/Public/js/ace-elements.min.js"></script>
<script src="/Public/js/uncompressed/ace.js"></script>


<script src="/Public/js/common.js"></script>

<script src="/bootstrap/js/bootstrap-datepicker.js"></script>

<script type="text/javascript">
    function add() {
        $("#opmode").val("add");
        if (check_form("form_data")) {
            if ($('#ship_time').val() < 1) {
                ui_error($('#ship_time').attr("msg"));
                //$(this).focus();
                check_flag = false;
                return check_flag;
            }

            //如果地址不为空，判断有没选择区县
            var ship_addr = $('#ship_addr').val();
            if(ship_addr !='' && ship_addr.indexOf('市') < 0){

                if($('#ship_county').val() == ''){
                    ui_error($('#ship_county').attr("msg"));
                    $('#ship_pro').focus();
                    check_flag = false;
                    return check_flag;
                }

            }

            sendForm("form_data", "/order/save", "/order/add");
        }
    };

    function getChildList(id, pid) {

        $.ajax({
            type : "POST",
            url : "/areas/childs",
            data : 'parent_id=' + pid,
            success : function(rs) {
                $("#" + id).html(rs);
            }
        });
    }


    $(document).ready(function() {

    });
</script>




</body>
</html>