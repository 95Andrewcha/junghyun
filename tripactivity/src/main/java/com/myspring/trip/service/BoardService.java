package com.myspring.trip.service;

import java.util.List;

import com.myspring.trip.model.BoardVO;
import com.myspring.trip.model.Criteria;

public interface BoardService {

	/* 게시판 등록 */
	public void notice_write(BoardVO board);
	
	/* 게시판 목록 */
	public List<BoardVO> getList();
	
	/* 자주 묻는 질문 */
	public List<BoardVO> getfaq();
	
	/* 공지사항 목록(페이징 적용) */
	public List<BoardVO> getListPaging(Criteria cri);	
	
	/* 1대1 문의 목록(페이징 적용) */
	public List<BoardVO> inquiryPaging(Criteria cri);
	
	/* 1대1 문의 등록하기 */
	public void inquiry_write(BoardVO board);
	
	/* 게시판 조회 */
	public BoardVO getPage(int board_seq);
	
	/* 게시판 수정 */
	public int inquirymodify(BoardVO board);
	
	/* 공지사항 삭제 */
	public int delete(int board_seq);
	
	/* 1대1 문의사항 삭제 */
	public int deletein(int board_seq);
	
	/* 공지사항 글 총 갯수 */
	public int getTotal(Criteria cri);
	
	/* 1:1문의하기 글 총 갯수 */
	public int getTotals(Criteria cri);
	
	/*1대1 상품 문의 연습페이지 진입  */
	public List<BoardVO> product_inquiry(Criteria cri);
	
	public int igetTotals(Criteria cri);
	
	public void product_inquiry_write(BoardVO board);
}
