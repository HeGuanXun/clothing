package com.hegx.controller.util;

/**
 * Created by 何冠勋 on 2017/4/26.
 * @param订单状态类
 */
public final class Status {
     public static final short add = 0;//新增订单
    public static final short check = 1;//已被审核
    public static final short design = 2;//已设计完成
    public static final short examine = 3;//已最终确认
    public static final short account = 4;//订单打款中
    public static final short product = 5;//订单正在生产
    public static final short finish = 6;//订单完成回款
    public static final short end = 7;//订单已经被终止

    public static final String[]  status={  "新增订单",
                                            "已被审核",
                                            "已完成设计",
                                            "已最终确认",
                                            "已回款",
                                            "已发货",
                                            "订单已回款完成",
                                            "订单已经被终止"
                                            };

}



