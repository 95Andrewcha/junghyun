package com.myspring.trip.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.myspring.trip.model.AdminVO;
import com.myspring.trip.service.AdminService;

@RestController
public class RestApiController {

	@Autowired
	private AdminService adminservice;
	
	@GetMapping("/admin/checkUserIdExist/{admin_Id}")
	public String checkUserIdExist(@PathVariable String admin_Id) {
		
		boolean chk = adminservice.checkUserIdExist(admin_Id);
		
		return chk + "";
		
	}
}
