package com.myspring.trip.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.myspring.trip.mapper.MyPageMapper;
import com.myspring.trip.model.NmemberVO;

@Service("mypageService")
public class MyPageServiceImpl implements MyPageService {
	
	private static final Logger log = LoggerFactory.getLogger(MyPageServiceImpl.class);
		
	@Autowired
	MyPageMapper mypageMapper;
	
	
	//회원정보수정 비밀번호 확인
	@Override
	public NmemberVO info_password(NmemberVO nmemberVO) throws Exception {
		
		return mypageMapper.info_password(nmemberVO);
	}
	
	//회원정보 가져오기
	@Override
	public NmemberVO infoGetDetail(String n_Id) throws Exception {
		log.info("infoGetDetail............." + n_Id);
		return mypageMapper.infoGetDetail(n_Id);
	}
	
	//회원정보 수정
	public int modifyinfo(NmemberVO nmemberVO) {
		
		return mypageMapper.modifyinfo(nmemberVO);
		
	}
	
	
}
