package com.myspring.trip.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myspring.trip.model.RoomVO;
import com.myspring.trip.service.ProductService;

@Controller("reservationController")
@RequestMapping("/reservation")
public class ReservationController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/reservationForm")
	public void reservationFormGET(int ac_roomNum, Model model) throws Exception {
		logger.info("예약페이지 진입");
		
		model.addAttribute("reservation", productService.roomDetail(ac_roomNum));
		
		
	}
}
