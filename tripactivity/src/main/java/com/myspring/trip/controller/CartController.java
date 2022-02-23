package com.myspring.trip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myspring.trip.model.CartDTO;
import com.myspring.trip.model.NmemberVO;
import com.myspring.trip.service.CartService;

@Controller
@RequestMapping("/cart")
 
public class CartController {
	
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	
	@Autowired
	private CartService cartService;
	
	@PostMapping("/add")
	@ResponseBody
	public String addCartPOST(CartDTO cart, HttpServletRequest request) {
		
		logger.info("장바구니 추가");
		// 로그인 체크
		HttpSession session = request.getSession();
		NmemberVO mvo = (NmemberVO)session.getAttribute("nmemberVO");
		if(mvo == null) {
			return "5";
		}
		
		// 카트 등록
		
		int result = cartService.addCart(cart);
		
		return result + "";
	}
}
