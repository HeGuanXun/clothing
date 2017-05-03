package com.hegx.fiter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class AuthitorFilter implements Filter {


	public void init(FilterConfig filterConfig) throws ServletException {


	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		    HttpServletRequest req=(HttpServletRequest) request;
		                 HttpSession session=req.getSession();

		                     Object userId=session.getAttribute("userId");
							 Object checkCode =	session.getAttribute("checkCode");
							 session.setMaxInactiveInterval(40*60);

		                     if(userId!=null || checkCode!=null)

		                    	 chain.doFilter(request, response);

		                     else {
								 req.getRequestDispatcher("/login").forward(request, response);
							}

	}


	public void destroy() {


	}

}
