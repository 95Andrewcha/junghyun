package com.myspring.trip.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.trip.model.NmemberVO;
import com.myspring.trip.service.MyPageService;

@Controller("mypageController")
@RequestMapping(value="/mypage")
public class MyPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	@Autowired
	private MyPageService mypageService;
	
	//메인페이지 이동
	@RequestMapping(value="MypageMain", method=RequestMethod.GET)
	public void MypageMainGET() {
		logger.info("마이페이지 메인 진입");
	}
	
	//메인페이지 이동
		@RequestMapping(value="c_MypageMain", method=RequestMethod.GET)
		public void CMypageMainGET() {
			logger.info("기업 멤버 마이페이지 메인 진입");
		}
	
	//장바구니 이동
	@RequestMapping(value="cart", method=RequestMethod.GET)
	public void cartGET() {
		logger.info("장바구니 진입");
	}
	
	//회원정보수정 비밀번호 입력 페이지 이동
	@RequestMapping(value="Minfo_PW", method=RequestMethod.GET)
	public void Minfo_PWGET() {
		logger.info("회원정보수정 비밀번호 입력 페이지 진입");
	}
	
	//회원정보수정 페이지 이동
	@RequestMapping(value="Minfo", method=RequestMethod.GET)
	public void MinfoGET(String n_Id, Model model) throws Exception {
		logger.info("회원정보수정 페이지 진입");
		
		logger.info("memberInfomationDetail........." + n_Id);
		
		model.addAttribute("infoGetDetail" + mypageService.infoGetDetail(n_Id));
	}
	
	//회원정보수정 비밀번호 입력
	@RequestMapping(value="info_PW",method=RequestMethod.POST)
	public String info_PWPOST(NmemberVO nmemberVO, RedirectAttributes rttr) throws Exception {
        
	  NmemberVO nvo = mypageService.info_password(nmemberVO);
	  
	  if(nvo == null) {
	  int result = 0; 
	  rttr.addFlashAttribute("result", result);
	  return "redirect:/mypage/Minfo_PW"; 
	  } 
	  
	  return "redirect:/mypage/Minfo";	 	
	
	}
	
	/* 페이지 수정 */
	@RequestMapping(value="/modify",method=RequestMethod.POST)
    public String mpModifyPOST(NmemberVO nmemberVO, RedirectAttributes rttr) {
        
		mypageService.modifyinfo(nmemberVO);
        
        rttr.addFlashAttribute("result", "modify success");
        
        return "redirect:/mypage/Minfo";
        
    }
}
