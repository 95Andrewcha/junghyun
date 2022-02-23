package com.myspring.trip.service;

import java.util.List;

import com.myspring.trip.model.AdminQuestionVO;
import com.myspring.trip.model.AdminVO;
import com.myspring.trip.model.BoardVO;
import com.myspring.trip.model.CmemberVO;
import com.myspring.trip.model.CouponVO;
import com.myspring.trip.model.Criteria;
import com.myspring.trip.model.Deleted_n_memberVO;
import com.myspring.trip.model.NmemberVO;

public interface AdminService {
	
	
	
	public List<NmemberVO> selectNMember(NmemberVO nmemberVO) throws Exception;
	
	//public List<CmemberVO> updateCMember(CmemberVO cmemberVO) throws Exception;
	
	public List<Deleted_n_memberVO> selectDeletedNMember(Deleted_n_memberVO deleted_n_membervo)throws Exception;
	
	public int c_member_modify(CmemberVO cmember);
	
	
	
	public List<CmemberVO> getCmemberListPaging(Criteria cri);
	public List<CmemberVO> selectCmember(CmemberVO cmembervo)throws Exception;
	public List<CouponVO> selectCoupon(CouponVO couponvo) throws Exception;
	
	
	
	public void couponEnroll(CouponVO coupon)throws Exception;
	
	public void deleteCoupon(CouponVO coupon)throws Exception;
	
	public List<BoardVO> getListPaging(Criteria cri);
	
	public void notice_write(BoardVO board);
	
	public BoardVO getPage(int board_seq);
	
	public int admin_modify(BoardVO board);
	
public boolean checkUserIdExist(String admin_Id);
	


	public void addAdmininfo(AdminVO adminvo);

	public void getLoginUserInfo(AdminVO tempLoginAdminVO);
	
	public void getModifyAdminInfo(AdminVO admin_info_modify_AdminVO);
	
	public void modifyAdminInfo(AdminVO admin_info_modify_AdminVO);
	
	/*관리자 메인페이지 문의 조회*/
	public List<AdminQuestionVO> nmemberQuestionInfo(AdminQuestionVO adminquestionvo) throws Exception;
	
	public List<AdminQuestionVO> nmemberQuestionInfo2(AdminQuestionVO adminquestionvo) throws Exception;
	
	public List<AdminQuestionVO> reportInfo(AdminQuestionVO adminquestionvo) throws Exception;
	
	public List<AdminQuestionVO> memberQuestionInfo(AdminQuestionVO adminquestionvo) throws Exception;

	/*회원 탈퇴 조회*/
	public Deleted_n_memberVO Deleted_getPage(String n_Id);
	
	//기업 회원 조회
	public CmemberVO select_c_Id(String c_Id);

	
	

	
	
}
