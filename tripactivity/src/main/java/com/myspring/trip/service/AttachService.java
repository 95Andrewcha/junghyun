package com.myspring.trip.service;

import java.util.List;

import com.myspring.trip.model.AttachImageVO;

public interface AttachService {
	/* 이미지 데이터 반환 */	
	public List<AttachImageVO> getAttachList(int board_seq);
}
