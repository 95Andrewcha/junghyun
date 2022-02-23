package com.myspring.trip.mapper;


import java.util.List;

import com.myspring.trip.model.AttachImageVO;
import com.myspring.trip.model.ImageFileVO;

public interface AttachMapper {

	/* 이미지 데이터 반환 */
	public List<AttachImageVO> getAttachList(int board_seq);
	
	//숙박업체 이미지 리스트
	public List<ImageFileVO> getAc_productImageList(int ac_ProductNum);
		
	//객실 이미지 리스트
	public List<ImageFileVO> getRoomImageList(int ac_roomNum);
		
	//레저업체 메인 이미지 리스트
	public List<ImageFileVO> getLe_productImageInfo(int le_ProductNum);
		
	//레저업체 상품설명 이미지 리스트
	public List<ImageFileVO> getLe_explanationImageInfo(int le_ProductNum);
}
