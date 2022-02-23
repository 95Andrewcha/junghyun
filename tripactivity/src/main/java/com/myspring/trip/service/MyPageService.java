package com.myspring.trip.service;

import com.myspring.trip.model.NmemberVO;

public interface MyPageService {
	public NmemberVO info_password(NmemberVO nmemberVO) throws Exception;
	public NmemberVO infoGetDetail(String n_Id) throws Exception;
	
	//회원정보 수정
	public int modifyinfo(NmemberVO nmemberVO);
	
}
