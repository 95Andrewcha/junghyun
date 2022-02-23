package com.myspring.trip.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.trip.mapper.AttachMapper;
import com.myspring.trip.mapper.ProductMapper;
import com.myspring.trip.model.Ac_productVO;
import com.myspring.trip.model.Criteria;
import com.myspring.trip.model.ImageFileVO;
import com.myspring.trip.model.Le_productVO;
import com.myspring.trip.model.RoomVO;
import com.myspring.trip.model.TicketVO;


@Service("productService")
public class ProductServiceImpl implements ProductService  {
	
	private static final Logger log = LoggerFactory.getLogger(ProductServiceImpl.class);
	
	@Autowired
	private ProductMapper productMapper;
	
	@Autowired
	private AttachMapper attachMapper;
	
	//숙박 업체 등록
	@Transactional
	@Override
	public void ac_Enroll(Ac_productVO ac_product) throws Exception {
		log.info("(service)ac_productEnroll.......");
		
		
		productMapper.ac_Enroll(ac_product);
		
		if(ac_product.getImageList() == null || ac_product.getImageList().size() <= 0) {
			return;
		}
		ac_product.getImageList().forEach(attach ->{
			attach.setAc_ProductNum(ac_product.getAc_ProductNum());
			productMapper.imageEnroll(attach);
		});
		
	}
	
	//숙박 업체 목록보기
	@Override
	public List<Ac_productVO> ac_enrollList() throws Exception {
		log.info("ac_productlList()..........");
		return productMapper.ac_enrollList();
	}
	
	//숙박 업체 수정하기
	@Override
	@Transactional
	public int ac_enrollModify(Ac_productVO ac_product) throws Exception {
		log.info("ac_productModify().........");
		
		int result = productMapper.ac_enrollModify(ac_product);
		
		if(result == 1 && ac_product.getImageList() != null && ac_product.getImageList().size() > 0) {
			
			productMapper.deleteAc_productImageAll(ac_product.getAc_ProductNum());
			
			ac_product.getImageList().forEach(attach -> {
			
				attach.setAc_ProductNum(ac_product.getAc_ProductNum());
				productMapper.imageEnroll(attach);
				
			});
			
		}
		
		return result;
	}
	
	//숙박업체 정보 삭제하기
	@Override
	@Transactional
	public int ac_enrollDelete(int ac_ProductNum) throws Exception {
		log.info("ac_productDelete..........");
		
		productMapper.deleteAc_productImageAll(ac_ProductNum);
		
		return productMapper.ac_enrollDelete(ac_ProductNum);
	}
	
	//숙박 업체 이미지 정보 얻기
	@Override
	public List<ImageFileVO> getAttachAc_productInfo(int ac_ProductNum) throws Exception{
		log.info("getAttachAc_productInfo................");
		
		return productMapper.getAttachAc_productInfo(ac_ProductNum);
	}
	
	//숙박 업체 상세보기
	@Override
	public Ac_productVO ac_enrollDetail(int ac_ProductNum) throws Exception {
		log.info("(service)ac_productDetail......." + ac_ProductNum);
			
		return productMapper.ac_enrollDetail(ac_ProductNum);
	}
	
	//객실 등록
	@Transactional
	@Override
	public void roomEnroll(RoomVO room) throws Exception {
		log.info("(service)roomEnroll.......");
			
			
		productMapper.roomEnroll(room);
			
		if(room.getImageList() == null || room.getImageList().size() <= 0) {
			return;
		}
		room.getImageList().forEach(attach ->{
			attach.setAc_roomNum(room.getAc_roomNum());
			productMapper.imageEnroll(attach);
		});
			
	}
	//객실 상세보기
	@Override
	public RoomVO roomDetail(int ac_roomNum) throws Exception {
		log.info("(service)roomDetail......." + ac_roomNum);
		
		return productMapper.roomDetail(ac_roomNum);
	}
	
	//객실 목록 보기
	@Override
	public List<RoomVO> roomList() throws Exception {
		log.info("ac_productlList()..........");
		return productMapper.roomList();
	}
	
	//객실 수정하기
	@Override
	public int roomModify(RoomVO room) throws Exception {
		log.info("roomModify().........");
		
		int result = productMapper.roomModify(room);
		
		if(result == 1 && room.getImageList() != null && room.getImageList().size() > 0) {
			
			productMapper.deleteRoomImageAll(room.getAc_roomNum());
			
			room.getImageList().forEach(attach -> {
			
				attach.setAc_roomNum(room.getAc_roomNum());
				productMapper.imageEnroll(attach);
				
			});
			
		}
		
		return result;
	}
	
	//객실 삭제하기
	@Override
	@Transactional
	public int roomDelete(int ac_roomNum) throws Exception {
		log.info("roomDelete...........");
		
		productMapper.deleteRoomImageAll(ac_roomNum);
		
		return productMapper.roomDelete(ac_roomNum);
	}
	
	//객실 이미지 정보 얻기
	@Override
	public List<ImageFileVO> getAttachRoomInfo(int ac_roomNum) throws Exception{
		log.info("getAttachRoomInfo................");
		
		return productMapper.getAttachRoomInfo(ac_roomNum);
	}

	//레저 업체 등록
	@Override
	public void le_Enroll(Le_productVO le_product) throws Exception {
		log.info("(service)le_productEnroll.......");
			
			
		productMapper.le_Enroll(le_product);
		
		if(le_product.getImageList() == null || le_product.getImageList().size() <= 0) {
			return;
		}
		le_product.getImageList().forEach(attach ->{
			attach.setLe_ProductNum(le_product.getLe_ProductNum());
			productMapper.imageEnroll(attach);
		});
		
		if(le_product.getExplanationImageList() == null || le_product.getExplanationImageList().size() <= 0) {
			return;
		}
		le_product.getExplanationImageList().forEach(attach ->{
			attach.setLe_ProductNum(le_product.getLe_ProductNum());
			productMapper.imageEnroll(attach);
		});
		
		
	}
	
	//레저 업체 목록
	@Override
	public List<Le_productVO> le_enrollList() throws Exception{
		log.info("le_enrollList()............");
		
		return productMapper.le_enrollList();
	}
	
	//레저 업체 상세보기
	@Override
	public Le_productVO le_enrollDetail(int le_ProductNum) throws Exception {
		log.info("(service)le_productDetail......." + le_ProductNum);
			
		return productMapper.le_enrollDetail(le_ProductNum);
	}
	
	//레저 업체 수정하기
	@Override
	public int le_enrollModify(Le_productVO le_product) throws Exception {
		log.info("le_productModify.............");
		return productMapper.le_enrollModify(le_product);
	}
	
	//레저 업체 메인이미지 정보 얻기
	@Override
	public List<ImageFileVO> getLe_productImageInfo(int le_ProductNum) throws Exception{
		log.info("Le_productImageInfo................");
		
		return productMapper.getLe_productImageInfo(le_ProductNum);
	}
	
	//레저 업체 상품 설명 이미지 정보 얻기
	@Override
	public List<ImageFileVO> getLe_explanationImageInfo(int le_ProductNum) throws Exception{
		log.info("Le_explanationImageInfo................");
		
		return productMapper.getLe_explanationImageInfo(le_ProductNum);
	}
	
	//레저 업체 삭제하기
	@Override
	@Transactional
	public int le_enrollDelete(int le_ProductNum) throws Exception {
		log.info("le_enrollDelete...........");
		
		productMapper.deleteLe_productImageAll(le_ProductNum);
		
		return productMapper.le_enrollDelete(le_ProductNum);
	}

	//티켓 등록
	@Override
	public void ticketEnroll(TicketVO ticket) throws Exception {
		log.info("ticketEnroll..............");
		
		productMapper.ticketEnroll(ticket);
	}
	
	//티켓 목록
	@Override
	public List<TicketVO> ticketList() throws Exception{
		log.info("ticketList()............");
		
		return productMapper.ticketList();
	}
	
	//티켓 상세보기
	@Override
	public TicketVO ticketDetail(int le_ticketNum) throws Exception {
		log.info("(service)ticketDetail......." + le_ticketNum);
				
		return productMapper.ticketDetail(le_ticketNum);
	}
	
	//티켓 수정하기
	@Override
	public int ticketModify(TicketVO ticket) throws Exception {
		log.info("ticketModify..............");
		
		return productMapper.ticketModify(ticket);
	}
	
	//티켓 삭제하기
	@Override
	public int ticketDelete(int le_ticketNum) throws Exception {
		log.info("ticketDelete...........");
		
		return productMapper.le_enrollDelete(le_ticketNum);
	}
	
	//숙박업체 리스트 페이징 처리
	@Override
	public List<Ac_productVO> ac_productList(Criteria cri) throws Exception {
		log.info("ac_productList()............" + cri);
		
		List<Ac_productVO> list = productMapper.ac_productList(cri);
		
		list.forEach(ac_product ->{
			int ac_ProductNum = ac_product.getAc_ProductNum();
			
			List<ImageFileVO> imageList = attachMapper.getAc_productImageList(ac_ProductNum);
			
			ac_product.setImageList(imageList);
		});
		
		return list;
	}
	
	//숙박 업체 리스트 총 개수
	@Override
	public int ac_productListTotal(Criteria cri) throws Exception {
		log.info("ac_productListTotal..............." + cri);
		
		return productMapper.ac_productListTotal(cri);
	}
	
	//숙박 상품 상세 페이지
	@Override
	public List<Ac_productVO> getAc_productsInfo(int ac_ProductNum) throws Exception {
		
		List<Ac_productVO> ac_productsInfo = productMapper.getAc_productsInfo(ac_ProductNum);
		
		ac_productsInfo.forEach(ac_product ->{
			ac_product.getAc_ProductNum();
			
			List<ImageFileVO> imageList = attachMapper.getAc_productImageList(ac_ProductNum);
			
			ac_product.setImageList(imageList);
		});
		
		return ac_productsInfo;
		
	}
	
	//객실 리스트
	@Override
	public List<RoomVO> ac_roomList(int ac_ProductNum) throws Exception {
		log.info("ac_roomList()..............");
		
		List<RoomVO> list = productMapper.ac_roomList(ac_ProductNum);
		
		list.forEach(room ->{
			int ac_roomNum = room.getAc_roomNum();
			
			List<ImageFileVO> imageList = attachMapper.getRoomImageList(ac_roomNum);
			
			room.setImageList(imageList);
		});
		
		return list;
	}
	
	//레저업체 리스트 페이징 처리
	@Override
	public List<Le_productVO> le_productList(Criteria cri) throws Exception {
		log.info("le_productList()............" + cri);
		
		List<Le_productVO> list = productMapper.le_productList(cri);
		
		list.forEach(le_product ->{
			int le_ProductNum = le_product.getLe_ProductNum();
			
			List<ImageFileVO> imageList = attachMapper.getLe_productImageInfo(le_ProductNum);
			
			le_product.setImageList(imageList);
		});
		
		return list;
	}
	
	//레저 업체 리스트 총 개수
	@Override
	public int le_productListTotal(Criteria cri) throws Exception {
		log.info("le_productListTotal..............." + cri);
		
		return productMapper.le_productListTotal(cri);
	}
	
}
