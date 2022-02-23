package com.myspring.trip.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.trip.mapper.AttachMapper;
import com.myspring.trip.model.AttachImageVO;

@Service("AttachService")

public class AttachServiceImpl implements AttachService{

	private static final Logger log = LoggerFactory.getLogger(AttachServiceImpl.class);	
	
	@Autowired
	private AttachMapper attachMapper;
	
	
	/* 이미지 데이터 반환 */
	@Override
	public List<AttachImageVO> getAttachList(int board_seq) {
		
		log.info("getAttachList.........");
		
		return attachMapper.getAttachList(board_seq);
	}
	
}
