package com.hegx.controller;

import com.hegx.controller.util.ImageTool;
import com.hegx.dto.OrderEntityDto;
import com.hegx.dto.UserEntityDto;
import com.hegx.service.UserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStream;


/**
 * 
 * @author: 何冠勋;@date:2017年1月3日;
 *登录
 * @version
 *
 */
@Controller
@RequestMapping("/")
public class LoginController {

	@Autowired
	public UserService userService;


	@RequestMapping(value = "/index")
	public ModelAndView index(UserEntityDto userEntityDto,HttpServletRequest request) throws Exception
	{
		HttpSession session = request.getSession();
		if (session.getAttribute("orgUserEntityDto")!=null)
		{
			UserEntityDto orgUserEntityDto = (UserEntityDto)session.getAttribute("orgUserEntityDto");
			return new ModelAndView("index").addObject("orgUserEntityDto",orgUserEntityDto);
		}

		String checkCode = (String) session.getAttribute("vaildCode");
		//验证码验证
		if(!checkCode.equals(userEntityDto.getCheckCode()))
		{
			userEntityDto.setMessage("failCheckCode");
			return new  ModelAndView("login");
		}
		//验证该用户名跟密码是否已经存在
		UserEntityDto	orgUserEntityDto =	userService.checkLogin(userEntityDto);
		if(orgUserEntityDto!=null)
		{
			session.setAttribute("orgUserEntityDto",orgUserEntityDto);
			ModelAndView modelAndView = new ModelAndView("index");
			modelAndView.addObject(orgUserEntityDto);
			return  modelAndView;
		}

		userEntityDto.setMessage("error");
		return new  ModelAndView("login");
	}




	// 验证码验证
	@RequestMapping(value="/checkCode",method={RequestMethod.GET})
	public void checkCode(UserEntityDto userEntityDto, HttpServletRequest request, HttpServletResponse response)throws Exception
	{
		OutputStream out = response.getOutputStream();

		if(!userEntityDto.getCheckCode().equals(""))//验证登陆的验证码
		{
			String checkCode=(String) request.getSession().getAttribute("vaildCode");
			if(!checkCode.equals(userEntityDto.getCheckCode().trim()))
			{
				out.write(JSONObject.fromObject("{\"checkCode\":\"验证码错误!\"}").toString().getBytes("utf-8"));
				out.close();
			}
		}

	}

	//加载验证码
	@RequestMapping(value="login/checkCode", method = RequestMethod.GET)
	public void checkCode(HttpSession session,HttpServletResponse response) throws IOException {
		ImageTool.outputImage(session, response);
	}

	@RequestMapping(value = "/login", method = {RequestMethod.GET})
	public ModelAndView login(HttpServletRequest request) throws Exception
	{
		request.getSession().setAttribute("checkCode","checkCode");
		return new ModelAndView("login");
	}

}
