package com.myspring.trip.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.trip.model.AdminQuestionVO;
import com.myspring.trip.model.AdminVO;
import com.myspring.trip.model.CmemberVO;
import com.myspring.trip.model.CouponVO;
import com.myspring.trip.model.Criteria;
import com.myspring.trip.model.Deleted_n_memberVO;
import com.myspring.trip.model.NmemberVO;
import com.myspring.trip.service.AdminService;
import com.myspring.trip.service.BoardService;

@Controller("adminController")
@RequestMapping(value="/admin")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private BoardService bservice;
	
	@Resource(name ="loginAdminVO")
	@Lazy
	private AdminVO loginAdminVO;	
	
	
	
	//관리자 로그인
	
	//@Resource(name="loginUserBean")
	//@Lazy
	//private AdminVO adminvo;
	
	@GetMapping("admin_main")
	public String admin_main(AdminQuestionVO adminquestionvo, Model model)throws Exception {
		
		List list = adminService.nmemberQuestionInfo(adminquestionvo);
		
		List list2 =adminService.nmemberQuestionInfo2(adminquestionvo);
		
		List list3 =adminService.reportInfo(adminquestionvo);
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		
		System.out.println(list3);
		
		
		
		return "admin/admin_main";
	}
	
	@GetMapping(value="/popup/admin_main_popup")
	public String admin_main_popup() throws Exception{
		logger.info("어드인 팝업 창 오픈");
		
		return "popup/admin_main_popup";
	}
	
	@GetMapping(value="/popup/admin_main_popup_enroll")
	public String admin_main_popup_enroll()throws Exception{
		logger.info("어드민 팝업 등록 창");
		
		return"popup/admin_main_popup_enroll";
	}
	
	

	//괸리자 회원 관리 조회
	@GetMapping("manage/admin_see_member_info")
	public void admin_select_member(NmemberVO nmemberVO, Model model) throws Exception {
		logger.info("관리자 회원 조회 페이지" + nmemberVO);
		
		List list = adminService.selectNMember(nmemberVO);
		
		model.addAttribute("list",list);
		
		logger.info("회원 조회");
	
	}
	
	@RequestMapping(value="/manage/admin_withdraw_manage")
	public void admin_withdraw_manage(Deleted_n_memberVO deleted_n_membervo, Model model)throws Exception {
		logger.info("admin_withdraw_manage  회원 탈퇴 조회");
		
		List list = adminService.selectDeletedNMember(deleted_n_membervo);
		
		model.addAttribute("list",list);
		
		logger.info("탈퇴회원 조회");
	}
	
	//회원 탈퇴 관리 조회//
	
	@GetMapping("manage/get_withdraw")
	public void withdrawPageGet(String n_Id, Model model) {
		model.addAttribute("pageInfo", adminService.Deleted_getPage(n_Id));
	}
	
	@RequestMapping(value="manage/admin_c_member_manage01",method=RequestMethod.GET)
	public void admin_c_member_manage01(CmemberVO cmembervo, Model model, Criteria cri)throws Exception {
		
	
		
		
		model.addAttribute("list", adminService.getCmemberListPaging(cri));

	}
	
	@GetMapping("manage/admin_c_member_manage")
	public void admin_c_member_manage(String c_Id, Model model) {
		model.addAttribute("list", adminService.select_c_Id(c_Id));
	}
	
	@GetMapping("manage/admin_c_member_manage_modify")
	public void CmemberModify(String c_Id, Model model) {
		model.addAttribute("list", adminService.select_c_Id(c_Id));
	}
	

	@PostMapping("admin_c_member_manage_modify")
	public String CmemberModifyPost(CmemberVO cmember){
		adminService.c_member_modify(cmember);
		
		System.out.println("수정완료");
	
		return "redirect:admin_c_member_manage01";
	}
	

	@GetMapping("product/admin_ac_manage")
	public String admin_ac_manage(NmemberVO nmemberVO, Model model) throws Exception{
		logger.info("관리자 숙박 관리 조회 페이지");
		
		List<NmemberVO> list =adminService.selectNMember(nmemberVO);
		
		model.addAttribute("list",list);
		
		return "admin/product/admin_ac_manage";
		
	}
	
	@RequestMapping(value="product/admin_lei_manage", method=RequestMethod.GET)
	public void admin_lei_manage()  {
		logger.info("admin_lei_manage 조회 ");
	}
	
	
	@RequestMapping(value="/coupon/admin_coupon", method=RequestMethod.GET)
	public void admin_coupon (CouponVO couponvo, Model model) throws Exception  {
		logger.info("admin_coupon 조회");
		
		
		List list = adminService.selectCoupon(couponvo);
		
		model.addAttribute("list",list);
	}	
	
	@PostMapping("admin_coupon_Enroll")
	public String couponEnrollPOST(CouponVO coupon, RedirectAttributes rttr) throws Exception{
		logger.info("couponEnrollPOST...." + coupon);
		
		adminService.couponEnroll(coupon);
		
		rttr.addFlashAttribute("coupon_result", coupon.getCoupon_name());
		
		return "redirect:/admin/coupon/admin_coupon";
	}
	

	/*관리자 페이지 완료된거 */ 
	@GetMapping("admin_join")
	public String join(@ModelAttribute("joinAdminVo") AdminVO adminvo) {
		return "admin/admin_join";
	}
	
	@PostMapping("admin_join_pro")
	public String join_pro(@Valid @ModelAttribute("joinAdminVo") AdminVO adminvo, BindingResult result) {
		if(result.hasErrors()) {
			return "admin/admin_join";
		}
		
		adminService.addAdmininfo(adminvo);
		return "admin/admin_join_success";
	}
	/*
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		
		AdminValidator validator1 = new AdminValidator();
		
		
		
		binder.addValidators(validator1);
		
		
	}
	*/
	/*관리자 로그인*/
	@GetMapping("admin_login")
	public String admin_login(@ModelAttribute("tempLoginAdminVO") AdminVO adminvo,
				@RequestParam(value="fail", defaultValue="false") boolean fail, Model model
			) {
		
		model.addAttribute("fail", fail);
		logger.info("관리자 로그인 페이지");
		//System.out.println(adminvo);
		
		return "admin/admin_login";
	}
	
	@PostMapping("admin_login_pro")
	public String login_pro(@Valid @ModelAttribute("tempLoginAdminVO") AdminVO adminvo, BindingResult result ) {
		
	
		if(result.hasErrors()) {
			return "admin/admin_login";
		}
		
		adminService.getLoginUserInfo(adminvo);
		
		if(loginAdminVO.isAdminLogin() == true) {
			
			return "admin/login_success";
		}else {
		
		return "admin/login_fail";
	}
	}
	
	/*관리자 로그아웃*/
	@GetMapping("admin_logout")
	public String logout() {
		
		loginAdminVO.setAdminLogin(false);
		
		return "admin/admin_main";
	}
	
	@GetMapping("not_login")
	public String not_login() {
		
		return "admin/admin_not_login";
	}
	
	@GetMapping("admin_inf_modify")
	public String admin_inf_modify(@ModelAttribute("admin_info_modify_AdminVO") AdminVO admin_info_modify_AdminVO) {
		
		adminService.getModifyAdminInfo(admin_info_modify_AdminVO);
		return "admin/admin_inf_modify";
	}
	
	@PostMapping("admin_info_modify_pro")
	public String admin_inf_modify_pro(@Valid @ModelAttribute("admin_info_modify_AdminVO") AdminVO admin_info_modify_AdminVO, BindingResult result) {
		
		if(result.hasErrors()) {
			return "admin/admin_inf_modify";
		}
		
		adminService.modifyAdminInfo(admin_info_modify_AdminVO);
		
		return "admin/admin_modify_success";
	}

	@RequestMapping(value="/notice/admin_busi_inquiry_manage", method=RequestMethod.GET)
	public String admin_busi_inquiry_manage (@ModelAttribute("searchAdminQuestionVO") AdminQuestionVO adminquestionvo, Model model)throws Exception {
		List list =adminService.memberQuestionInfo(adminquestionvo);
		
		model.addAttribute("list", list);
		
		return "admin/admin_busi_inquiry_manage";

	}
	}

