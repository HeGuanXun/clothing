package com.hegx.controller;

import com.hegx.controller.util.Status;
import com.hegx.dto.OrderEntityDto;
import com.hegx.po.Belong;
import com.hegx.po.Code;
import com.hegx.po.Delivery;
import com.hegx.po.Fashion;
import com.hegx.service.*;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
    private CodeService codeService;
    @Autowired
    private DeliveryService deliveryService;
    @Autowired
    private BelongService belongService;


    @RequestMapping(value = "deleteOrder/{orderId}")
    @ResponseBody
    private OrderEntityDto deleteOrder(@PathVariable long orderId)
    {
        OrderEntityDto orderEntityDto =  orderService.getByOrderId(orderId);
        orderService.deleteByOrderId(orderId);
        codeService.deleteById(orderEntityDto.getCodeId());
        belongService.deleteById(orderEntityDto.getBelongId());
        deliveryService.deleteById(orderEntityDto.getDeliveryId());
        return  new OrderEntityDto("deleted");
    }

    /**查询所有流程订单**/
    @RequestMapping(value = "flowOrder/{status}")
    private ModelAndView flowOrder(@PathVariable Short status)
    {
        List<OrderEntityDto> orderList = orderService.getAllForFlow(status);
        orderList = packager(orderList);
        return new ModelAndView("order-list").addObject("orderList",orderList);
    }


    /**新增订单**/
    @RequestMapping(value = "doAddOrder",method = {RequestMethod.POST})
    private ModelAndView doAddOrder(OrderEntityDto orderEntityDto, Code code, Delivery delivery, Belong belong)
    {
         orderEntityDto.setCreateDate(new Date());//创建时间
         orderEntityDto.setStatus(Status.add);//订单状态
         orderEntityDto.setGetOrderDate(new Date());//设置接单日期

         StringBuffer orderNumber = new StringBuffer();
         SimpleDateFormat format = new SimpleDateFormat("yyyyMMddhhmmss");
         String newDate =format.format(new Date());
         orderNumber.append(newDate);
         orderEntityDto.setOrderNumber(orderNumber.toString());//设置订单编号

         code.setTotalCount(codeService.doTotalcount(code));//设置尺码总数

         deliveryService.insert(delivery);
         belongService.insert(belong);
         codeService.insert(code);

         orderEntityDto.setBelongId(belong.getId());
         orderEntityDto.setDeliveryId(delivery.getId());
         orderEntityDto.setCodeId(code.getId());

         orderService.insert(orderEntityDto);

         List<OrderEntityDto> orderList = orderService.getAll();
         orderList = packager(orderList);
         return new ModelAndView("order-list").addObject("orderList",orderList);
    }

    /**填写订单**/
    @RequestMapping(value = "writeOrder")
    private ModelAndView writeOrder()
    {
        List<Fashion> list = fashionService.getAll();
        return new ModelAndView("order-write").addObject("list",list);
    }

    /**拿到数据转发到编辑订单页面**/
    @RequestMapping(value = "editOrder/{orderId}")
    private ModelAndView editOrder(@PathVariable long orderId)
    {
        OrderEntityDto orderEntityDto = orderService.getByOrderId(orderId);
        Code code = codeService.getById(orderEntityDto.getCodeId());
        Delivery delivery = deliveryService.getById(orderEntityDto.getDeliveryId());
        Belong belong = belongService.getById(orderEntityDto.getBelongId());
        List<Fashion> fashionList = fashionService.getAll();
        return new ModelAndView("order-edit").addObject("orderEntityDto",orderEntityDto)
                                                        .addObject("code",code)
                                                        .addObject("delivery",delivery)
                                                        .addObject("belong",belong)
                                                        .addObject("fashionList",fashionList);
    }

    /**新增订单**/
    @RequestMapping(value = "doEditOrder",method = {RequestMethod.POST})
    private ModelAndView doEditOrder(OrderEntityDto orderEntityDto, Code code, Delivery delivery, Belong belong)
    {
        orderService.update(orderEntityDto);
        codeService.update(code);
        deliveryService.update(delivery);
        belongService.update(belong);

        List<OrderEntityDto> orderList = orderService.getAll();
        orderList = packager(orderList);
        return new ModelAndView("order-list").addObject("orderList",orderList);
    }



    /**所有订单**/
    @RequestMapping(value = "listOrder")
    private ModelAndView listOrder()
    {
        List<OrderEntityDto> orderList = orderService.getAll();
        orderList = packager(orderList);
        return new ModelAndView("order-list").addObject("orderList",orderList);
    }

    /**封装展示订单状态**/
    private List<OrderEntityDto> packager(List<OrderEntityDto> orderList)
    {
        if (!CollectionUtils.isEmpty(orderList))
        {
            for (OrderEntityDto orderEntityDto:orderList)
            {
                orderEntityDto.setShowStatus(Status.status[orderEntityDto.getStatus()]);
            }

        }
        return  orderList;
    }

}
