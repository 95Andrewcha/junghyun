package com.myspring.trip.service;

import org.springframework.stereotype.Service;

import com.myspring.trip.model.AdminBoardVO;

@Service
public class AdminBoardService {

	public void addContentInfo(AdminBoardVO writeContentBean) {
		
		System.out.println(writeContentBean.getBoard_title());
		System.out.println(writeContentBean.getBoard_content());
		System.out.println(writeContentBean.getUpload_file());
	}
}
