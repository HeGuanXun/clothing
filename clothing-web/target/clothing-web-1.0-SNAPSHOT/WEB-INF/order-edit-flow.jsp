<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>审核订单</title>
    <script src="js/moment.min.js"></script>
</head>
<body>
<%--
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 订单管理 <span class="c-gray en">&gt;</span> 订单审核 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
--%>

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
    <h3 style="color: blue">
        <c:choose>
            <c:when test="${orderEntityDto.status==0}">
            &nbsp;&nbsp;&nbsp;&nbsp;${orderEntityDto.showStatus}</h3>
            </c:when>

            <c:when test="${orderEntityDto.status==1}">
                &nbsp;&nbsp;&nbsp;&nbsp;${orderEntityDto.showStatus}</h3>
            </c:when>

            <c:when test="${orderEntityDto.status==2}">
                &nbsp;&nbsp;&nbsp;&nbsp;${orderEntityDto.showStatus}</h3>
            </c:when>

            <c:when test="${orderEntityDto.status==3}">
                &nbsp;&nbsp;&nbsp;&nbsp;${orderEntityDto.showStatus}</h3>
            </c:when>

            <c:when test="${orderEntityDto.status==4}">
                &nbsp;&nbsp;&nbsp;&nbsp;${orderEntityDto.showStatus}</h3>
            </c:when>

            <c:when test="${orderEntityDto.status==5}">
                &nbsp;&nbsp;&nbsp;&nbsp;${orderEntityDto.showStatus}</h3>
            </c:when>
        </c:choose>

    <div class="col-xs-12">
        <form  method="post" action="order/doFlowOrder">

            <input type="hidden" name="status" value="${orderEntityDto.status}">
            <input type="hidden" name="orderId" value="${orderEntityDto.orderId}">

            <table id="addorder" border=1 cellspacing=0 cellpadding=0 style='border-collapse:collapse;border:none;background-color: #EEEEEE'>

                <tr style='height:47.0pt'>
                    <td colspan="15" style="border: none;width: 753px;position: absolute;padding-top: 8px;">
                        <span style='font-weight:bold; font-size:22.0pt;font-family:宋体'>企业班服内部流程订单</span>
                        <span style='font-size:12.0pt;font-family:宋体;color:red'>【
                        <select  check="require" msg="地区不能为空">
			<option value="">请选择</option>
			<option selected="selected" value='总部' >总部</option><option value='客服部' >客服部</option><option value='设计公司' >设计公司</option><option value='财务部' >财务部</option><option value='产品公司' >产品公司</option><option value='阿凡达电商' >阿凡达电商</option><option value='设计公司兼职' >设计公司兼职</option><option value='招商部陈康俊' >招商部陈康俊</option><option value='招商部谭磊' >招商部谭磊</option><option value='招商部' >招商部</option><option value='招商部程鹏' >招商部程鹏</option><option value='招商部谢文博' >招商部谢文博</option><option value='江西分公司A' >江西分公司A</option><option value='江西分公司B' >江西分公司B</option><option value='江西分公司C' >江西分公司C</option><option value='江西分公司D' >江西分公司D</option><option value='江西分公司E' >江西分公司E</option><option value='招商部韩进' >招商部韩进</option><option value='招商部何冠勋'>招商部何冠勋</option><option value='招商部杨晨' >招商部杨晨</option>		</select>】</span>
                        <span style='font-family:宋体'>生产编号：${orderEntityDto.orderNumber}</span>
                    </td>
                </tr>

                <tr style='height:13.1pt'>
                    <td  rowspan=2 style='width:45px;border-top:solid 1.5pt;border-left:solid 1.5pt;  border-bottom:solid 1.0pt;border-right:solid 1.0pt;  padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                        <p style='text-align:center;width: 120px'><b><span style='font-size:9.0pt;font-family:宋体'>客户名称</span></b></p>
                        <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>（班长）</span></b></p>
                    </td>
                    <td  colspan=1 rowspan=2 style='width:60px;border:solid 1.0pt;border-top:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                        <input class="input-text" width="60px" type="text" id="customName" name="customName" check="require"  value="${orderEntityDto.customName}">
                    </td>
                    <td  rowspan=2 style='width:48.9pt;border:solid 1.0pt;border-top:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                        <p style='text-align:center;width: 100px'><b><span style='font-size:9.0pt;font-family:宋体'>单位</span></b></p>
                        <p style='text-align:center;width: 100px'><b><span style='font-size:9.0pt;font-family:宋体'>(班级)</span></b></p>
                    </td>
                    <td  colspan=2 rowspan=2 style='width:134.4pt;border:solid 1.0pt;border-top:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                        <input class="input-text" type="text" id="className" name="className" check="require" msg="请输入客户单位" value="${orderEntityDto.className}">
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
                        <input class="input-text" type="text" id="phoneNumber" name="phoneNumber" check="number" msg="客户电话只能是数字" value="${orderEntityDto.phoneNumber}">
                    </td>
                </tr>

                <tr style='height:13.1pt'>
                    <td width=39 style='width:28.9pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                        <p style='text-align:center;width: 120px;text-autospace:ideograph-other'><span  style='font-size:9.0pt;font-family:宋体;text-align:center;'>&nbsp;

                        Q Q</span><span style='font-size:9.0pt;font-family:宋体'>：</span></p>
                    </td>
                    <td width=159 colspan=2 style='width:119.1pt;border-left:
  none;border-bottom:solid 1.0pt;border-right:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.1pt'>
                        <input class="input-text" type="text" id="qq" name="qq" check="number" msg="客户QQ只能是数字" value="${orderEntityDto.qq}">
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
                        <select name="fashionId" id="style"  check="require" msg="请选择款式" class="select">
                            <option value="${orderEntityDto.fashionName}">${orderEntityDto.fashionName}</option>
                            <option value="${orderEntityDto.fashionName}">选择款式</option>
                            <c:forEach items="${fashionList}" var="fashion" varStatus="i">
                                <option value="${fashion.id}">${fashion.fashionName}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td width=462 colspan="1" style='width:150px;border-left:none;border-bottom:solid 1.0pt;border-right:none; padding:0cm 5.4pt 0cm 5.4pt;height:26.95pt'>
                        <select name="color" id="color" class="select">
                            <option value="${orderEntityDto.color}">${orderEntityDto.color}</option>
                            <option>选择颜色</option>
                            <option value='灰色' >灰色</option>
                            <option value='纯红' >纯红</option>
                            <option value='纯白色' >纯白色</option>
                            <option value='纯黄色' >纯黄色</option>
                            <option value='纯黑色' >纯黑色</option>
                            <option value='纯蓝色' >纯蓝色</option>
                            <option value='纯紫色' >纯紫色</option>
                            <option value='浅蓝色' >浅蓝色</option>
                            <option value='天蓝色' >天蓝色</option>
                            <option value='湖蓝色' >湖蓝色</option>
                            <option value='果绿色' >果绿色</option>
                            <option value='其他色系' >其他色系</option></select>
                    </td>
                    <td colspan="2" style='width:28.9pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:26.95pt'>
                        <p style='text-align:center;'><span style='font-size:9.0pt;font-family:宋体'>
                        当前款式</span></p>
                    </td>
                    <td width=159 colspan=3 style='width:119.1pt;border-left:
  none;border-bottom:solid 1.0pt;border-right:solid 1.5pt;
  padding:5.5pt 5.4pt 0cm 5.4pt;height:26.95pt'>
                        <p style='text-align:center;'><span style='font-size:9.0pt;font-family:宋体'>
                        <input class="input-text" type="text" name="otherFashion" id="otherFashion" placeholder="若无选定款式无符合条件记录，在此填写" value="${orderEntityDto.otherFashion}" /></span></p>
                    </td>
                </tr>

                <tr style='height:26.9pt'>
                    <td width=73 style='width:55.1pt;border-left:solid 1.5pt;
border-bottom:solid 1.0pt;border-right:solid 1.0pt;
padding:0cm 5.4pt 0cm 5.4pt;height:26.9pt'>
                        <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>订单归属地</span></b></p>
                    </td>
                    <td width=462 colspan=8 style='width:346.35pt;border-left:
none;border-bottom:solid 1.0pt;border-right:solid 1.5pt;
padding:5.4pt 5.4pt 0cm 5.4pt;height:26.9pt'>
                        <p><span style='font-size:9.0pt;font-family:宋体'>
                     <div class="info">
                             <input name="school" id="school" disabled="disabled" class="input-text" style="width: 300px;"
                                    value="${belong.s_province}  ${belong.s_city}  ${belong.s_county}  ${belong.school}" />

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
                <input style="text-align: center" type="number" name="mxs" id="mxs" check="positive" msg="数量只能为正数" value="${code.mxs}"  />
            </td>
            <td width=36 style='width:80pt;border:solid 1.0pt;height:15.75pt;text-align: center'>
                <input style="text-align: center" type="number" name="ms" id="ms" check="positive" msg="数量只能为正数" value="${code.ms}" />
            </td>
            <td width=36 style='width:32pt;border:solid 1.0pt;height:15.75pt;text-align: center'>
                <input style="text-align: center" type="number" name="mm" id="mm" check="positive" msg="数量只能为正数" value="${code.mm}" />
            </td>
            <td width=36 style='width:32pt;border:solid 1.0pt;height:15.75pt;text-align: center'>
                <input style="text-align: center" type="number" name="ml" id="ml" check="positive" msg="数量只能为正数" value="${code.ml}"  />
            </td>
            <td width=36 style='width:32pt;border:solid 1.0pt;height:15.75pt;text-align: center'>
                <input style="text-align: center" type="number" name="mxl" id="mxl" check="positive" msg="数量只能为正数" value="${code.mxl}" />
            </td>
            <td width=36 style='width:32pt;border:solid 1.0pt;height:15.75pt;text-align: center'>
                <input style="text-align: center" type="number" name="mxxl" id="mxxl" check="positive" msg="数量只能为正数" value="${code.mxxl}" />
            </td>
            <td width=36 style='width:32pt;border:solid 1.0pt;height:15.75pt;text-align: center'>
                <input style="text-align: center" type="number" name="mxxxl" id="mxxxl" check="positive" msg="数量只能为正数" value="${code.mxxxl}" />
            </td>
            <td width=36 style='width:32pt;border:solid 1.0pt;border-right:solid 1.5pt;height:15.75pt;text-align: center'>
                <span id="totalCount">${code.totalCount}</span>
                <input type="hidden" name="totalCount" value="${code.totalCount}">
                <input type="hidden" id="code.id" name="code.id" value="${code.id}">
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
            <p><span style='font-size:9.0pt;font-family:宋体'><input class="input-text" type="text"  name="money" id="money" value="${orderEntityDto.money}"/></span></p>
        </td>
        <td width=112 colspan=1 rowspan=3 style='width:83.75pt;border:solid 1.0pt;
    padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
            <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>印制说明</span></b></p>
        </td>

    <td width=200 colspan=3 rowspan=3 style='width:200.1pt;
border-bottom:solid 1.0pt;border-right:solid 1.5pt;
padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
        <textarea class="input-text" name="print"  id="print"  check="require" msg="请说明印图技术" placeholder="请在此说明印图技术，如:2个单色图，或1个彩色图"  style="width:100%;height: 85px;">${orderEntityDto.print}</textarea>
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
                        <p><span style='font-size:9.0pt;font-family:宋体'><input class="input-text" type="text" name="earnest" id="earnest" value="${orderEntityDto.earnest}" /></span></p>
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
                        <p><b><span style='font-size:11.0pt;font-family:宋体'>
                               <script>
                                var datetime = moment('${orderEntityDto.getOrderDate}').format("YYYY-MM-DD");
                                document.write(datetime);
                               </script>
                        </span></b></p>
                    </td>
                </tr>



                <tr style='height:15.7pt'>
                    <td width=73 style='width:45px;border-left:solid 1.5pt;border-bottom:solid 1.0pt;border-right:solid 1.0pt;height:15.7pt'>
                        <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>发货日期</span></b></p>
                    </td>
                    </td>
                    <td width=165 colspan=4 style='width:123.5pt;border-bottom:solid 1.0pt;border-right:solid 1.0pt; padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                        <%--<input data-date-format="yyyy-mm-dd" style="width: 150px" id="ship_time" name="ship_time" readonly="readonly" class="input-date input-text" check="require" msg="发货时间不能为空" >--%>
                        <span style='font-size:9.0pt;font-family:宋体'> <input type="text" style="width: 150px" class="input-text"  id="sendDate" name="sendDate"></span>
                        <script type="text/javascript">
                            var datetime = moment('${orderEntityDto.sendDate}').format("YYYY-MM-DD");
                            $('#sendDate').val(datetime);

                            $(function(){
                                $('#sendDate').datepicker({
                                    format: 'yyyy-mm-dd'
                                });
                            });

                        </script>
                    </td>

            <td width=112 colspan=1 rowspan=2 style='width:83.75pt;border:solid 1.0pt;
padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>备注</span></b></p>
            </td>
            <td width=383 colspan=3 rowspan=2 style='width:287.1pt;border-bottom:solid 1.0pt;border-right:solid 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                <textarea name="remarks" id="remarks"  style="width:100%;height: 55px;text-align: left" class="input-text">${orderEntityDto.remarks}</textarea>
            </td>
                </tr>


                <tr style='height:15.7pt'>
                    <td width=73 style='width:45px;border-left:solid 1.5pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                        <p style='text-align:center'><b><span style='font-size:9.0pt;font-family:宋体'>接 单 人</span></b></p>
                        <input type="hidden" id="userId" name="userId" value="${sessionScope.user.id}">
                    </td>
                    <td width=165 colspan=4 style='width:123.5pt;border-left:
  none;border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:15.7pt'>
                        <p><b><span style='font-size:9.0pt;font-family:宋体'>${sessionScope.user.realName}</span></b></p>
                    </td>
                </tr>
                <tr style='height:17.7pt'>
                    <td width=720 colspan=10 style='width:549.45pt;border-left:
  solid 1.5pt;border-bottom:solid 1.0pt;border-right:
  solid 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;height:17.7pt'>
                        <p style='text-align:center'><b><span style='font-size:8.0pt;font-family:宋体'>设计样稿（设计师：何冠勋）</span></b></p>
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
                        <select name="way" id="way" class="select">
                            <option value="${delivery.way}">${delivery.way}</option>
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
                        <input class="input-text" value="${delivery.personName}" type="text" id="personName" name="personName"  check="require" msg="收件人不能为空">
                    </td>

                    <td width=49 colspan=1 style='width:36.75pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt'>
                        <p style='text-align:center'><b><span
                                style='font-size:9.0pt;font-family:宋体;color:black'>联系方式</span></b></p>
                    </td>
                    <td width=110 colspan=3 style='width:82.35pt;border-left:none;border-bottom:solid 1.0pt;border-right:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt'>
                        <input class="input-text" type="text" id="relationPhone" value="${delivery.relationPhone}" name="relationPhone">
                    </td>
                </tr>


                <tr style='height:27.7pt'>
                    <td width=73 style='width:45px;border-left:solid 1.5pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt'>
                        <p style='text-align:center'><b><span
                                style='font-size:9.0pt;font-family:宋体;'>收件地址</span></b></p>
                    </td>

                    <td width=218 colspan=8 style='width:45px;border-left:solid 1.5pt;
  border-bottom:solid 1.0pt;border-right:solid 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt'>
                        <input class="input-text" type="text" id="address" disabled="disabled" name="address"
                               value="${delivery.ss_province}  ${delivery.ss_city}  ${delivery.ss_county}  ${delivery.address}">
                    </td>
                </tr>
                <tr style='height:26.95pt'>
                    <td width=733 colspan=10 style='width:549.45pt;border-left:solid 1.5pt;border-bottom:solid 1.0pt;border-right:solid 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.95pt'>
                        <p style='text-align:center'><b><span
                                style='font-size:9.0pt;font-family:宋体;color:silver'>&nbsp;</span></b></p>
                    </td>
                </tr>
                <tr>
                    <td style='width:34.65pt;
  border-bottom:solid 1.5pt;border-right:solid 1.0pt;border-left:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt'>
                        <p style='text-align:center'><b><span
                                style='font-size:9.0pt;font-family:宋体;'>终止原因</span></b></p>
                    </td>
                    <td style='width:34.65pt;
  border-bottom:solid 1.5pt;border-right:solid 1.0pt;border-left:solid 1.5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:27.7pt' colspan="3">
                        <select class="select" id="endReason" name="endReason">
                            <option></option>
                            <option value="客户要求停止该订单，不再受理！">客户要求停止该订单，不再受理！</option>
                            <option value="信息不完善">信息不完善</option>
                            <option value="该订单已过期，请重启动新的订单流程">该订单已过期，请重启动新的订单流程</option>
                            <option value="其他原因">其他原因</option>
                        </select>
                    </td>
                </tr>
            </table>
            <div class="operate panel panel-default">
                <div class="panel-body">
                    <div class="pull-right" align="center">
                        <c:choose>
                            <c:when test="${orderEntityDto.status>0}">
                                <input type="hidden" name="message" id="message">
                                <input type="submit" align="center" value="退回" onclick="return rallBack()" class="btn btn-sm btn-primary"></input>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </c:when>
                        </c:choose>
                        <input type="submit" align="center" value="受理" onclick="return orgSubmit()" class="btn btn-sm btn-primary"></input>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="submit" align="center" value="终止" onclick="return endOrder()" class="btn btn-sm btn-primary"></input>
                    </div>
                </div>
            </div>
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

        function orgSubmit(){
            var customName = $('#customName').val();
            var className  = $('#className').val();
            var phoneNumber = $('#phoneNumber').val();
            var qq = $('#qq').val();
            var color = $('#color').val();
            var money = $('#money').val();
            var earnest = $('#earnest').val();
            var sendDate = $('#sendDate').val();
            var mxs = $('#mxs').val();
            var ms = $('#ms').val();
            var mm = $('#mm').val();
            var ml = $('#ml').val();
            var mxl = $('#mxl').val();
            var mxxl = $('#mxxl').val();
            var way = $('#way').val();
            var personName = $('#personName').val();
            var relationPhone = $('#relationPhone').val();
            var ss_province = $('#ss_province').val();
            var ss_city = $('#ss_city').val();
            var ss_county = $('#ss_county').val();
            var address = $('#address').val();
            var s_province = $('#s_province').val();
            var s_city = $('#s_city').val();
            var s_county = $('#s_county').val();
            var school = $('#school').val();

            if(customName=="")
            {
                layer.msg('客户姓名不能为空！',{icon:1,time:2000});
                return false;
            }

            if(window.confirm('你确定要受理该订单吗？')){
                var index = parent.layer.getFrameIndex(window.name);
                parent.location.reload(index);
                return true;
            }else{
                //alert("取消");
                return false;
            }
        }

    });


    function rallBack(){
        $('#message').val("rallBack");
        if(window.confirm('你确定要回退该订单吗？')){
            //alert("确定");
            var index = parent.layer.getFrameIndex(window.name);
            parent.location.reload(index);
            return true;
        }else{
            //alert("取消");
            return false;
        }
    }

    function endOrder() {
        var endReason = $('#endReason').val();
        if (endReason == "" || endReason == undefined || endReason == null) {
            layer.msg('终止原因不能为空!', {icon: 1, time: 2000});
            return false;
    }
        if(window.confirm('你确定要终止该订单吗？')){
            //alert("确定");
            var index = parent.layer.getFrameIndex(window.name);
            parent.location.reload(index);
            return true;
        }else{
            //alert("取消");
            return false;
        }
    }

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

    };
</script>




</body>
</html>