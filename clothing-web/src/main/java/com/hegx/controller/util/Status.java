package com.hegx.controller.util;

/**
 * Created by 何冠勋 on 2017/4/26.
 * @param订单状态类
 */
public final class Status {
     public static final short add = 0;//新增订单
    public static final short check = 1;//订单正在核查
    public static final short design = 2;//订单设计中
    public static final short examine = 3;//订单最终确认
    public static final short account = 4;//订单打款中
    public static final short product = 5;//订单正在生产
    public static final short finish = 6;//订单完成回款
    public static final short end = 7;//订单已经被终止

    public static final String[]  status={  "新增订单",
                                            "订单正在核查",
                                            "订单设计中",
                                            "订单最终确认",
                                            "订单打款中",
                                            "订单正在生产",
                                            "订单完成回款",
                                            "订单已经被终止"
                                            };

}



