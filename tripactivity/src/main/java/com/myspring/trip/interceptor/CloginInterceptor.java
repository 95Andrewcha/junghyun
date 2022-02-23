package com.myspring.trip.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class CloginInterceptor implements HandlerInterceptor {
	//Controller에 진입하기 전에 작업
		@Override
		public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
			
			System.out.println("LoginInterceptor preHandle 작동");
			
			HttpSession session = request.getSession();
			
			session.invalidate();
			
			return true;
		}
}
