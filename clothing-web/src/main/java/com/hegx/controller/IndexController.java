package com.hegx.controller;

import com.hegx.controller.util.Permission;
import com.hegx.dto.UserEntityDto;
import com.hegx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;


/**
 * Created by hegx on 2017/4/6.
 */
@Controller
@RequestMapping("/admin")
public class IndexController {

    @Autowired
    public UserService userService;

    @RequestMapping(value = "/getAdminInfor",method = {RequestMethod.GET})
    private ModelAndView getAdminInfor()
    {
        List<UserEntityDto> userEntityDtos =  userService.getAll();
        ModelAndView modelAndView =  new ModelAndView("admin-list");
        modelAndView.addObject("userEntityDtos",userEntityDtos);
        return modelAndView;
    }

    @RequestMapping(value ="/index",method = {RequestMethod.POST})
    @ResponseBody
    private UserEntityDto indexAdmin(UserEntityDto userEntityDto)
    {
        UserEntityDto  orguserEntityDto =  userService.checkUser(userEntityDto);
        if(orguserEntityDto!=null)
        {
            userEntityDto.setMessage("fail");
             return  userEntityDto;
        }
       Integer permission =  userEntityDto.getPermission();
        if (permission== Permission.admin)
        {
            userEntityDto.setDepartment("超级管理员");
        }
        if (permission== Permission.market)
        {
            userEntityDto.setDepartment("市场部");
        }
        if (permission== Permission.service)
        {
            userEntityDto.setDepartment("客服部");
        }
        if (permission== Permission.design)
        {
            userEntityDto.setDepartment("设计部");
        }
        if (permission== Permission.account)
        {
            userEntityDto.setDepartment("财务部");
        }
        if (permission== Permission.product)
        {
            userEntityDto.setDepartment("生产部");
        }
        userEntityDto.setPassWord("123456");
        userEntityDto.setEnterTime(new Date()) ;
        userService.insert(userEntityDto);
        userEntityDto.setMessage("success");
        return userEntityDto;
    }

    @RequestMapping(value = "/getAllUser")
    private ModelAndView getAllUser(UserEntityDto userEntityDto)
    {
           List<UserEntityDto> list = userService.getAll();
           ModelAndView mav = new ModelAndView("admin-list");
           mav.addObject("list",list);
           return mav;
    }

    @RequestMapping(value = "deletedById")
    @ResponseBody
    private UserEntityDto deletedById(UserEntityDto userEntityDto)
    {
        userService.deleteById(userEntityDto.getId());
        userEntityDto.setMessage("deleted");
        return  userEntityDto;
    }

    @RequestMapping(value = "/welcome")
    private ModelAndView welcome(UserEntityDto userEntityDto)
    {

        return new ModelAndView("welcome");
    }

    @RequestMapping(value = "/edit")
    @ResponseBody
    private UserEntityDto edit(UserEntityDto userEntityDto)
    {
        if (userEntityDto.getPassWord().equals(""))
        {
            userEntityDto.setPassWord(null);
        }
        if (userEntityDto.getPassWord()!=null&&userEntityDto.getPassWord().equals(""))
        {
            userEntityDto.setPassWord(null);
        }
        if (userEntityDto.getDepartment().equals(""))
        {
            userEntityDto.setDepartment(null);
        }
        if (userEntityDto.getRealName().equals(""))
        {
            userEntityDto.setRealName(null);
        }

        String passWord = userEntityDto.getPassWord();
        String passWord2 = userEntityDto.getPassWord2();

        if (passWord!=null || passWord2!=null)
        {
            if (passWord!=null)
            {
                if (!passWord.equals(passWord2))
                {
                    userEntityDto.setMessage("diff");
                    return  userEntityDto;
                }
            }
        }
            userService.update(userEntityDto);
            userEntityDto.setMessage("success");
            return  userEntityDto;
    }

    @RequestMapping(value = "getToEdit/{id}")
    private ModelAndView getToEdit(@PathVariable Integer id)
    {
        UserEntityDto userEntityDto = userService.getById(id);
        return new ModelAndView("admin-edit").addObject(userEntityDto);
    }

}
