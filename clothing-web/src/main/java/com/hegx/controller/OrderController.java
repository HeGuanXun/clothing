package com.hegx.controller;

import com.hegx.controller.util.Status;
import com.hegx.dto.OrderEntityDto;
import com.hegx.po.Code;
import com.hegx.po.Fashion;
import com.hegx.service.CodeService;
import com.hegx.service.FashionService;
import com.hegx.service.OrderService;
import com.hegx.service.UserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by hegx on 2017/4/26.
 */
@Controller
@RequestMapping("/order")
public class OrderController  {

    @Autowired
    private OrderService orderService;
    @Autowired
    private FashionService fashionService;
    @Autowired
    private UserService userService;

    @Autowired
    private CodeService codeService;


    @RequestMapping(value = "doAdd",method = {RequestMethod.POST})
    private ModelAndView doAdd(OrderEntityDto orderEntityDto, Code code)
    {

        StringBuffer belong = new StringBuffer();
        belong.append(orderEntityDto.getS_province()).append(orderEntityDto.getS_city()).append(orderEntityDto.getS_county());

        if (!StringUtils.isEmpty(orderEntityDto.getSchool()))
        {
            belong.append(orderEntityDto.getSchool());//学校信息不为空时设置学校信息进去
        }

        orderEntityDto.setBelong(belong.toString());//设置订单归属地

        StringBuffer address = new StringBuffer();
        address.append(orderEntityDto.getSs_province()).append(orderEntityDto.getSs_city()).append(orderEntityDto.getS_county()).append(orderEntityDto.getAddress());

        orderEntityDto.setAddress(address.toString());//设置发货地址
        orderEntityDto.setCreateDate(new Date());//创建时间
        orderEntityDto.setStatus(Status.add);//订单状态
        orderEntityDto.setGetOrderDate(new Date());//设置接单日期

        StringBuffer orderNumber = new StringBuffer();
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddhhmmss");
        String newdate =format.format(new Date());
        orderNumber.append(newdate);
        orderEntityDto.setOrderNumber(orderNumber.toString());//设置订单编号

        code.setTotalCount(codeService.doTotalcount(code));//设置尺码总数

         codeService.insert(code);
         orderEntityDto.setCodeId(code.getId());
         orderService.insert(orderEntityDto);

        return new ModelAndView("order-list");
    }


    @RequestMapping(value = "getAll")
    private ModelAndView getAll()
    {
        List<Fashion> list = fashionService.getAll();
        return new ModelAndView("order-write").addObject("list",list);
    }




}
