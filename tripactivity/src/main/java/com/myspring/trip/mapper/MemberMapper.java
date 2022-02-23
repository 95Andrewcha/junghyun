package com.myspring.trip.mapper;

import com.myspring.trip.model.CmemberVO;
import com.myspring.trip.model.NmemberVO;

public interface MemberMapper {

	// 개인회원가입
	public void insertNMember(NmemberVO nmemberVO);

	// 기업회원가입
	public void insertCMember(CmemberVO cmemberVO);

	// 개인회원 아이디 중복검사
	public int nidCheck(String n_Id);

	// 기업회원 아이디 중복검사
	public int cidCheck(String c_Id);

	// 개인회원 로그인
	public NmemberVO nmemberLogin(NmemberVO nmemberVO);

	// 기업회원 로그인
	public CmemberVO cmemberLogin(CmemberVO cmemberVO);

	// 아이디 찾기
	public NmemberVO findId(NmemberVO nmemberVO);

	// 비밀번호입력
	public NmemberVO c_delPW(NmemberVO nmemberVO);

	// 비밀번호입력
	public NmemberVO n_delPW(NmemberVO nmemberVO);
	
	// 회원 탈퇴
	public NmemberVO n_delete(NmemberVO vo);
	
	// 회원 탈퇴
		public NmemberVO select_idpw(NmemberVO vo);

}
