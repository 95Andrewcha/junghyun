package com.myspring.trip.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.myspring.trip.model.AdminVO;
import com.myspring.trip.model.NmemberVO;

public class CartInterceptor implements HandlerInterceptor{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		HttpSession session = request.getSession();
		
		NmemberVO mvo = (NmemberVO)session.getAttribute("member");
		
		if(mvo == null) {
			response.sendRedirect("/main");
			return false;
		} else {
			return true;
		}
}
}


