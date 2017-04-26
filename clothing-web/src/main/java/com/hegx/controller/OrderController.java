package com.hegx.controller;

import com.hegx.dto.OrderEntityDto;
import com.hegx.po.Fashion;
import com.hegx.service.FashionService;
import com.hegx.service.OrderService;
import com.hegx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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


    @RequestMapping(value = "doAdd",method = {RequestMethod.POST})
    private ModelAndView doAdd(OrderEntityDto orderEntityDto)
    {
        userService.getById(orderEntityDto.getUserId());
        return new ModelAndView("order-list");
    }


    @RequestMapping(value = "getAll")
    private ModelAndView getAll()
    {
        List<Fashion> list = fashionService.getAll();
        return new ModelAndView("order-write").addObject("list",list);
    }

}
