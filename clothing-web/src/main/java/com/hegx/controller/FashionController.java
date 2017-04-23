package com.hegx.controller;


import com.hegx.dto.FashionDto;
import com.hegx.po.Fashion;
import com.hegx.service.FashionService;
import javafx.scene.input.DataFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

/**
 * Created by hegx on 2017/4/21.
 */
@Controller
@RequestMapping("/fashion")
public class FashionController {

    @Autowired
   private FashionService fashionService;

    @RequestMapping(value = "getAll")
    public ModelAndView getAll()
    {
        List<Fashion> list = fashionService.getAll();
        return new ModelAndView("fashion-list").addObject("list",list);
    }


    @RequestMapping(value = "getToEdit/{id}")
    private ModelAndView getToEdit(@PathVariable Integer id)
    {
        FashionDto fashionDto = fashionService.getById(id);
        return new ModelAndView("fashion-edit").addObject(fashionDto);
    }


    @RequestMapping(value = "update")
    @ResponseBody
    private FashionDto update(FashionDto fashionDto)
    {
        if (fashionDto.getFashionName()!=null&&fashionDto.getFashionName().equals(""))
            fashionDto.setFashionName(null);

        FashionDto orgFashionDto = fashionService.getByFashionName(fashionDto);
        if(orgFashionDto!=null)
        {
            fashionDto.setMessage("fail");
            return  fashionDto;
        }
        fashionService.update(fashionDto);
        fashionDto.setMessage("success");
        return  fashionDto;
    }

    @RequestMapping(value = "deletedById")
    @ResponseBody
    private FashionDto deletedById(FashionDto fashionDto)
    {
        fashionService.deleteById(fashionDto.getId());
       fashionDto.setMessage("deleted");
        return  fashionDto;
    }

    @RequestMapping(value = "add")
    @ResponseBody
    private FashionDto add(FashionDto fashionDto)
    {
        FashionDto orgFashionDto = fashionService.getByFashionName(fashionDto);
        if(orgFashionDto!=null)
        {
            fashionDto.setMessage("fail");
            return  fashionDto;
        }

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH-MM-ss");
        try {
            simpleDateFormat.parse(String.valueOf(new Date()));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        fashionDto.setCreateTime(new Date());
        fashionService.insert(fashionDto);
        fashionDto.setMessage("success");
        return  fashionDto;
    }


}
