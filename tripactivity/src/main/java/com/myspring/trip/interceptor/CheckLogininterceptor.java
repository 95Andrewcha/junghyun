package com.myspring.trip.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Lazy;
import org.springframework.web.servlet.HandlerInterceptor;

import com.myspring.trip.model.AdminVO;

public class CheckLogininterceptor implements HandlerInterceptor{

	@Resource(name="loginAdminVO")
	@Lazy
	private AdminVO loginAdminVO;
	

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		if(loginAdminVO.isAdminLogin() == false) {
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/admin/not_login");
			return false;
		}
		
		return true;
	}
}
