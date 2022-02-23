package com.myspring.trip.mapper;

import java.util.List;

import com.myspring.trip.model.Ac_productVO;
import com.myspring.trip.model.Criteria;
import com.myspring.trip.model.ImageFileVO;
import com.myspring.trip.model.Le_productVO;
import com.myspring.trip.model.RoomVO;
import com.myspring.trip.model.TicketVO;

public interface ProductMapper {
	
	//숙박 업체 정보 등록
	public void ac_Enroll(Ac_productVO ac_product);

	//이미지 등록
	public void imageEnroll(ImageFileVO image);
	
	//숙박 업체 목록
	public List<Ac_productVO> ac_enrollList();
	
	//숙박 업체 상세보기
	public Ac_productVO ac_enrollDetail(int ac_ProductNum);
	
	//숙박 업체 수정
	public int ac_enrollModify(Ac_productVO ac_product);
	
	//숙박 업체 삭제
	public int ac_enrollDelete(int ac_ProductNum);
	
	//객실 등록
	public void roomEnroll(RoomVO room);
	
	//객실 목록
	public List<RoomVO> roomList();
	
	//객실 상세보기
	public RoomVO roomDetail(int ac_roomNum);
	
	//객실 수정
	public int roomModify(RoomVO room);
	
	//객실 삭제
	public int roomDelete(int ac_roomNum);
	
	//배치프로그램을 이용한 폴더에 필요없는 사진 파일 지우기
	public List<ImageFileVO> checkImageList();
	
	//지정된 숙박업체 이미지 정보 얻기
	public List<ImageFileVO> getAttachAc_productInfo(int ac_ProductNum);
	
	//지정된 객실 이미지 정보 얻기
	public List<ImageFileVO> getAttachRoomInfo(int ac_roomNum);
	
	//지정된 숙박 업체 이미지 전체 삭제
	public void deleteAc_productImageAll(int ac_ProductNum);
	
	//지정된 객실 이미지 전체 삭제
	public void deleteRoomImageAll(int ac_roomNum);
	
	//레저 업체 정보 등록
	public void le_Enroll(Le_productVO le_product);
	
	//레저 업체 목록
	public List<Le_productVO> le_enrollList();
	
	//레저 업체 상세보기
	public Le_productVO le_enrollDetail(int le_ProductNum);
	
	//레저 업체 수정하기
	public int le_enrollModify(Le_productVO le_product);
	
	//레저 업체 삭제하기
	public int le_enrollDelete(int le_ProductNum);
	
	//티켓 등록
	public void ticketEnroll(TicketVO ticket);
	
	//티켓 목록
	public List<TicketVO> ticketList();
	
	//티켓 목록 상세보기
	public TicketVO ticketDetail(int le_ticketNum);
	
	//티켓 수정하기
	public int ticketModify(TicketVO ticket);
	
	//티켓 삭제하기
	public int ticketDelete(int le_ticketNum);
	
	//지정된 레저업체 메인이미지 정보 얻기
	public List<ImageFileVO> getLe_productImageInfo(int le_ProductNum);
	
	//지정된 레저 업체 설명이미지 정보 얻기
	public List<ImageFileVO> getLe_explanationImageInfo(int le_ProductNum);
	
	//지정된 레저 업체 이미지 전체 삭제
	public void deleteLe_productImageAll(int le_ProductNum);
	
	//숙박 업체 리스트 페이징 처리
	public List<Ac_productVO> ac_productList(Criteria cri);
	
	//숙박 상품 리스트 총 개수
	public int ac_productListTotal(Criteria cri);
	
	//숙박 상세페이지 객실 리스트
	public List<RoomVO> ac_roomList(int ac_ProductNum);
	
	//숙박 상품 상세 페이지
	public List<Ac_productVO> getAc_productsInfo(int ac_ProductNum);
	
	//레저 업체 리스트 페이징 처리
	public List<Le_productVO> le_productList(Criteria cri);
	
	//레저 업체 리스트 총 개수
	public int le_productListTotal(Criteria cri);
	
	
}
