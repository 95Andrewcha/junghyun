package com.myspring.trip.service;

import java.util.List;

import com.myspring.trip.model.Ac_productVO;
import com.myspring.trip.model.Criteria;
import com.myspring.trip.model.ImageFileVO;
import com.myspring.trip.model.Le_productVO;
import com.myspring.trip.model.RoomVO;
import com.myspring.trip.model.TicketVO;

public interface ProductService {
	
	//숙박 상품 등록
	public void ac_Enroll(Ac_productVO ac_product) throws Exception;
	
	//숙박 업체 목록
	public List<Ac_productVO> ac_enrollList() throws Exception;
	
	//숙박 업체 목록
	public Ac_productVO ac_enrollDetail(int ac_ProductNum) throws Exception;
	
	//숙박 업체 수정
	public int ac_enrollModify(Ac_productVO ac_product) throws Exception;
	
	//숙박 업체 삭제
	public int ac_enrollDelete(int ac_ProductNum) throws Exception;
	
	//객실 등록
	public void roomEnroll(RoomVO room) throws Exception;
		
	//객실 목록
	public List<RoomVO> roomList() throws Exception;
	
	//객실 조회 페이지
	public RoomVO roomDetail(int ac_roomNum) throws Exception;
	
	//객실 수정
	public int roomModify(RoomVO room) throws Exception;
	
	//객실 삭제
	public int roomDelete(int ac_roomNum) throws Exception;
	
	//지정된 숙박업체 이미지 정보 얻기
	public List<ImageFileVO> getAttachAc_productInfo(int ac_ProductNum) throws Exception;
	
	//지정된 객실 이미지 정보 얻기
	public List<ImageFileVO> getAttachRoomInfo(int ac_roomNum) throws Exception;
	
	//레저 상품 등록
	public void le_Enroll(Le_productVO le_product) throws Exception;

	//레저 업체 목록
	public List<Le_productVO> le_enrollList() throws Exception;
	
	//레저 업체 상세보기
	public Le_productVO le_enrollDetail(int le_ProductNum) throws Exception;
	
	//레저 업체 수정하기
	public int le_enrollModify(Le_productVO le_product) throws Exception;
	
	//레저 업체 삭제
	public int le_enrollDelete(int le_ProductNum) throws Exception;
	
	//티켓 등록
	public void ticketEnroll(TicketVO ticket) throws Exception;
	
	//티켓 목록
	public List<TicketVO> ticketList() throws Exception;
	
	//티켓 목록 상세보기
	public TicketVO ticketDetail(int le_ticketNum) throws Exception;
	
	//티켓 수정하기
	public int ticketModify(TicketVO ticket) throws Exception;
	
	//티켓 삭제하기
	public int ticketDelete(int le_ticketNum) throws Exception;
	
	//지정된 레저업체 메인이미지 정보 얻기
	public List<ImageFileVO> getLe_productImageInfo(int le_ProductNum) throws Exception;
	
	//지정된 레저 업체 설명이미지 정보 얻기
	public List<ImageFileVO> getLe_explanationImageInfo(int le_ProductNum) throws Exception;
	
	//숙소 업체 리스트 페이징 처리
	public List<Ac_productVO> ac_productList(Criteria cri) throws Exception;
	
	//숙박 상품 리스트 총 개수
	public int ac_productListTotal(Criteria cri) throws Exception;
	
	//객실 리스트
	public List<RoomVO> ac_roomList(int ac_ProductNum) throws Exception;
	
	//숙박 상품 상세 페이지
	public List<Ac_productVO> getAc_productsInfo(int ac_ProductNum)throws Exception;
	
	//레저 업체 리스트 페이징 처리
	public List<Le_productVO> le_productList(Criteria cri) throws Exception;
		
	//레저 상품 리스트 총 개수
	public int le_productListTotal(Criteria cri) throws Exception;
	
}
