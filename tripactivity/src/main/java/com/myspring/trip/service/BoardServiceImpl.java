package com.myspring.trip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.trip.mapper.AdminMapper;
import com.myspring.trip.mapper.BoardMapper;
import com.myspring.trip.model.BoardVO;
import com.myspring.trip.model.Criteria;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	AdminMapper adminMapper;
	
	@Autowired
	private BoardMapper boardMapper;
	
	/* 공지사항 등록 */
	@Override
	public void notice_write(BoardVO board) {
		
		boardMapper.notice_write(board);
		
	}
	
	/* 1대1 문의사항 등록 */
	@Override
	public void inquiry_write(BoardVO board) {
		
		boardMapper.inquiry_write(board);
		if(board.getImageList() == null || board.getImageList().size() <= 0) {
			return;
		}
		board.getImageList().forEach(attach ->{
			
			attach.setBoard_seq(board.getBoard_seq());
			adminMapper.imageEnroll(attach);
			
		});
	}
  
	/* 게시판 목록 */
	@Override
	public List<BoardVO> getList() {
		
		return boardMapper.getList();
	}
	
	/* 자주묻는질문 게시판 목록 */
	@Override
	public List<BoardVO> getfaq() {
		
		return boardMapper.getfaq();
	}
	
	/* 게시판 목록(페이징 적용) */
	@Override
	public List<BoardVO> getListPaging(Criteria cri) {
		
		return boardMapper.getListPaging(cri);
	}
	
	/* 게시판 목록(페이징 적용) */
	@Override
	public List<BoardVO> inquiryPaging(Criteria cri) {
		
		return boardMapper.inquiryPaging(cri);
	}		

	/* 게시판 조회 */
	@Override
	public BoardVO getPage(int board_seq) {
		 
		return boardMapper.getPage(board_seq);
	}	
	
	
	/* 게시판 수정 */
	@Override
	public int inquirymodify(BoardVO board) {
		
		return boardMapper.inquirymodify(board);
	}
	
	/* 공지사항 삭제 */
	@Override
	public int delete(int board_seq) {
		
		return boardMapper.delete(board_seq);
	}
	/* 1대1문의사항 삭제 */
	@Override
	public int deletein(int board_seq) {
		
		return boardMapper.deletein(board_seq);
	}

	/* 공지사항 글 총 갯수 */
	@Override
	public int getTotal(Criteria cri) {
		
		return boardMapper.getTotal(cri);
	}
	/* 1:1문의하기 글 총 갯수 */
	@Override
	public int getTotals(Criteria cri) {
		
		return boardMapper.getTotals(cri);
	}
	
	/*1대1 상품 문의 연습페이지 진입 */
	@Override
	public List<BoardVO> product_inquiry(Criteria cri) {
		
		return boardMapper.product_inquiry(cri);
	}
	
	/* 1:1문의하기 글 총 갯수 */
	@Override
	public int igetTotals(Criteria cri) {
		
		return boardMapper.igetTotals(cri);
	}
	
	/* 1대1 문의사항 연습 등록 */
	@Override
	public void product_inquiry_write(BoardVO board) {
		
		boardMapper.product_inquiry_write(board);
		if(board.getImageList() == null || board.getImageList().size() <= 0) {
			return;
		}
		board.getImageList().forEach(attach ->{
			
			attach.setBoard_seq(board.getBoard_seq());
			adminMapper.imageEnroll(attach);
			
		});
	}
  
	

}
