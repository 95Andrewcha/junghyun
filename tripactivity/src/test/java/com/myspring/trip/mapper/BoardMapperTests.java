package com.myspring.trip.mapper;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.myspring.trip.model.AttachImageVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardMapperTests {
	  private static final Logger log = LoggerFactory.getLogger(BoardMapperTests.class);
	  
	@Autowired
	private BoardMapper boardMapper;
	
	@Autowired
	private AdminMapper adminMapper;
	
	@Autowired
	private AttachMapper attachMapper;
	/* 게시판 삭제 */
//    @Test
//    public void testDelete() {
//        
//        int result = boardMapper.delete(1);
//        log.info("result : " + result);
//        
//    }
    
//    /* 게시판 목록 테스트 */
//    @Test
//    public void testGetList() {
//        
//    	boardMapper.getfaq().forEach(board -> log.info("" + board));        
//        
//    }
 
	/* 이미지 등록 */
//	@Test
//	public void imageEnrollTest() {
//		
//		AttachImageVO vo = new AttachImageVO();
//		
//		vo.setBoard_seq(200);
//		vo.setFileName("test");
//		vo.setUploadPath("test");
//		vo.setUuid("test3");
//		 
//		adminMapper.imageEnroll(vo);
//		
//	}
	/*이미지 정보 반환*/
//	@Test
//	public void getAttachListTests() {
//		
//		int board_seq = 238;
//		
//		System.out.println("이미지 정보 : " + attachMapper.getAttachList(board_seq));
//		
//		 
//	}
	/* 지정 상품 이미지 삭제 */
	@Test
	public void deleteImageAllTest() {
		
		int board_seq = 244;
		
		adminMapper.deleteImageAll(board_seq);
		
	}

}
