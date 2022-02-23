package com.myspring.trip.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.myspring.trip.model.AdminVO;

public class Admininterceptor implements HandlerInterceptor{

	private AdminVO adminvo;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
	System.out.println("LoginInterceptor preHandle 작동");
	request.setAttribute("loginAdminVO", adminvo);
	
		return true;
	}
}
