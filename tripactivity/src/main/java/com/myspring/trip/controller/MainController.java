package com.myspring.trip.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myspring.trip.mapper.AttachMapper;
import com.myspring.trip.model.ImageFileVO;

@Controller("mainController")
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private AttachMapper attachMapper;
	
	//메인페이지 이동
	@RequestMapping(value="/main/main", method=RequestMethod.GET)
	public void mainPageGET() {
		logger.info("메인페이지 진입");
	}
	
	//숙박 업체 이미지 정보 반환
	@GetMapping(value="/getAc_productImageList" , produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<ImageFileVO>> getAc_productAttachList(int ac_ProductNum){
		
		logger.info("getAc_productImageList..............." + ac_ProductNum);
		
		return new ResponseEntity<List<ImageFileVO>>(attachMapper.getAc_productImageList(ac_ProductNum), HttpStatus.OK);
		
	}
	
	//객실 이미지 정보 반환
	@GetMapping(value="/getRoomImageList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<ImageFileVO>> getRoomImageList(int ac_roomNum){
		
		logger.info("getRoomImageList................" + ac_roomNum);
		
		return new ResponseEntity<List<ImageFileVO>>(attachMapper.getRoomImageList(ac_roomNum), HttpStatus.OK);
	}
	
	//레저 업체 메인 이미지 정보 반환
	@GetMapping(value="/getLe_productImageInfo" , produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<ImageFileVO>> getLe_productImageInfo(int le_ProductNum){
		
		logger.info("Le_productImageInfo..............." + le_ProductNum);
			
		return new ResponseEntity<List<ImageFileVO>>(attachMapper.getLe_productImageInfo(le_ProductNum), HttpStatus.OK);
			
	}
	
	//레저 업체 상품 설명 이미지 정보 반환
	@GetMapping(value="/getLe_explanationImageInfo" , produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<ImageFileVO>> getLe_explanationImageInfo(int le_ProductNum){
		
		logger.info("Le_explanationImageInfo..............." + le_ProductNum);
			
		return new ResponseEntity<List<ImageFileVO>>(attachMapper.getLe_explanationImageInfo(le_ProductNum), HttpStatus.OK);
			
	}
	
	/* 이미지 출력 */
	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String fileName){
		
		logger.info("getImage()........" + fileName);
		
		File file = new File("c:\\upload\\" + fileName);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
}
