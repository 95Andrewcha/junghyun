package com.myspring.trip.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.myspring.trip.model.NmemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {

	@Autowired
	private MemberMapper memberMapper;			//MemberMapper.java 인터페이스 의존성 주입
	
	/*
	//개인 회원가입 쿼리 테스트 메서드
	@Test
	public void insertNMember() throws Exception{
		NmemberVO nmemberVO = new NmemberVO();
		
		nmemberVO.setN_Id("test4");			//회원 id
		nmemberVO.setN_Pw1("test");
		nmemberVO.setN_Pw2("test");//회원 비밀번호
		nmemberVO.setN_Name("test");		//회원 이름
		nmemberVO.setEmail1("test");
		nmemberVO.setEmail2("test");//회원 메일
		nmemberVO.setSex("t");		//회원 우편번호
		nmemberVO.setBirth_y("test");
		nmemberVO.setBirth_m("test");
		nmemberVO.setBirth_d("test");//회원 주소
		nmemberVO.setPhone1("t");
		nmemberVO.setPhone2("t");
		nmemberVO.setPhone3("t");//회원 상세주소
		nmemberVO.setService1("t");
		nmemberVO.setService2("t");
		
		memberMapper.insertNMember(nmemberVO);			//쿼리 메서드 실행
		
	}
	
	//기업 회원가입 쿼리 테스트 메서드
	@Test
	public void insertCMember() throws Exception{
		CmemberVO cmemberVO = new CmemberVO();
		
		cmemberVO.setCompany_Number("test");
		cmemberVO.setCompany_Name("test");
		cmemberVO.setC_Id("test1");			//회원 id
		cmemberVO.setC_Pw1("test");
		cmemberVO.setC_Pw2("test");//회원 비밀번호
		cmemberVO.setC_Name("test");		//회원 이름
		cmemberVO.setEmail1("test");
		cmemberVO.setEmail2("test");//회원 이메일
		cmemberVO.setSex("t");		//회원 성별
		cmemberVO.setBirth_y("test");//회원 생년월일
		cmemberVO.setBirth_m("test");
		cmemberVO.setBirth_d("test");
		cmemberVO.setPhone1("t");//회원 핸드폰 번호 
		cmemberVO.setPhone2("t");
		cmemberVO.setPhone3("t");
		cmemberVO.setService1("t");
		cmemberVO.setService2("t");
			
		memberMapper.insertCMember(cmemberVO);			//쿼리 메서드 실행
			
	} */
	
	/*
	//아이디 중복검사
	@Test
	public void nmemberIdChk() throws Exception{
		String id = "jang";
		String id2 = "asdfasdf";
		memberMapper.nidCheck(id);
		memberMapper.nidCheck(id2);
	} */
	
	//로그인 쿼리 mapper 메서드 테스트
	@Test
	public void nmemberLogin() throws Exception{
		NmemberVO nmemberVO = new NmemberVO(); //NmemberVO 변수 선언 및 초기화
		
		//올바른 아이디 비번 입력경우
		//nmemberVO.setN_Id("jang");
		//nmemberVO.setN_Pw1("1234");
		
		//올바르지 않은 아이디 비번 입력경우
		nmemberVO.setN_Id("1qwe");
		nmemberVO.setN_Pw1("1234");
		
		memberMapper.nmemberLogin(nmemberVO);
		System.out.println("결과 값 : " + memberMapper.nmemberLogin(nmemberVO));
	}
	
	
	
}