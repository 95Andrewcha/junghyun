package com.myspring.trip.mapper;

import com.myspring.trip.model.NmemberVO;

public interface MyPageMapper {
	
	//개인회원 회원정보수정 로그인
	public NmemberVO info_password(NmemberVO nmemberVO);
	
	//회원정보 가져오기
	public NmemberVO infoGetDetail(String n_Id);
	
	//회원정보 수정
	public int modifyinfo(NmemberVO nmemberVO);
}
