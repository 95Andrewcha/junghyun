package com.myspring.trip.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.trip.mapper.MemberMapper;
import com.myspring.trip.model.CmemberVO;
import com.myspring.trip.model.NmemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper memberMapper;

	// 개인회원 가입
	@Override
	public void insertNMember(NmemberVO nmemberVO) throws Exception {

		memberMapper.insertNMember(nmemberVO);
	}

	// 기업회원 가입
	@Override
	public void insertCMember(CmemberVO cmemberVO) throws Exception {

		memberMapper.insertCMember(cmemberVO);
	}

	// 개인회원 아이디 중복체크
	@Override
	public int nidCheck(String n_Id) throws Exception {

		return memberMapper.nidCheck(n_Id);
	}

	// 기업회원 아이디 중복체크
	@Override
	public int cidCheck(String c_Id) throws Exception {

		return memberMapper.cidCheck(c_Id);
	}

	// 개인회원 로그인
	@Override
	public NmemberVO nmemberLogin(NmemberVO nmemberVO) throws Exception {

		return memberMapper.nmemberLogin(nmemberVO);
	}

	// 기업회원 로그인
	@Override
	public CmemberVO cmemberLogin(CmemberVO cmemberVO) throws Exception {

		return memberMapper.cmemberLogin(cmemberVO);
	}

	// 아이디 찾기
	@Override
	public NmemberVO findId(NmemberVO vo) {
		return memberMapper.findId(vo);
	}

	// 기업회원 비밀번호 입력
	@Override
	public NmemberVO c_delPW(NmemberVO vo) {
		return memberMapper.c_delPW(vo);
	}

	// 일반회원 비밀번호 입력
	@Override
	public NmemberVO n_delPW(NmemberVO vo) {
		return memberMapper.n_delPW(vo);
	}
	
	// 일반회원 회원탈퇴
		@Override
		public NmemberVO n_delete(NmemberVO vo) throws Exception {
			return memberMapper.n_delete(vo);
		}
	
		// 일반회원 회원탈퇴
				@Override
				public NmemberVO select_idpw(NmemberVO vo) throws Exception {
					return memberMapper.select_idpw(vo);
				}

	

}
