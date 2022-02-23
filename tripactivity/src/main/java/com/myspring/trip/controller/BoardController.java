package com.myspring.trip.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.trip.model.BoardVO;
import com.myspring.trip.model.Criteria;
import com.myspring.trip.model.PageMakerDTO;
import com.myspring.trip.service.BoardService;

@Controller
@RequestMapping("/board")
 
public class BoardController {
	
private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService bservice;
	 

	@GetMapping("/ac_productDetail")
	// => @RequestMapping(value="list", method=RequestMethod.GET)
	public void product_inquriy(Model model, Criteria cri) {

		log.info("1대1 상품 문의 연습페이지 진입");
		model.addAttribute("list", bservice.product_inquiry(cri));

		int total = bservice.igetTotals(cri);

		PageMakerDTO pageMake = new PageMakerDTO(cri, total);

		model.addAttribute("pageMaker", pageMake);

	}
	
	/* 1대1 문의사항 조회 */
	@GetMapping("/product_inquiry_2")
	public void product_inquiry_2(int board_seq, Model model, Criteria cri) {
		
		model.addAttribute("pageInfo", bservice.getPage(board_seq));
		
		model.addAttribute("cri", cri);
		
	}
	@GetMapping("/faq")
	// => @RequestMapping(value="list", method=RequestMethod.GET)
	public void getfaq(Model model) {
		
		log.info("자주 묻는 질문 페이지 진입");
		
		
	}
	
	/* 1대1 문의하기 게시판 접속 */
	@GetMapping("/product_inquiry_write")
	// => @RequestMapping(value="enroll", method=RequestMethod.GET)
	public void product_inquiryGET() {
		
		log.info("문의사항 등록 페이지 진입");
		
	}
	/* 1대1 문의하기 게시판 등록 */
	@PostMapping("/product_inquiry_write")
	public String product_inquiryPOST(BoardVO board, RedirectAttributes rttr) throws Exception {
		
		
		
		log.info("BoardVO : " + board);
		
		bservice.product_inquiry_write(board);
		
		log.info("BoardVO : " + board);
		
		rttr.addFlashAttribute("result", "inquiry_write success");
		
		
		
		return "redirect:/board/product_inquiry";
		
	}
	
	/* 게시판 목록 페이지 접속 */ 
	/* 
	@GetMapping("/list")
	// => @RequestMapping(value="list", method=RequestMethod.GET)
	public void boardListGET(Model model) {
		
		log.info("게시판 목록 페이지 진입");
		
		model.addAttribute("list", bservice.getList());
		
	}
	*/
	
	/* 공지사항 페이지 접속(페이징 적용) */
	@GetMapping("/notice")
	public void boardListGET(Model model, Criteria cri) {
		
		
		log.info("boardListGET");
		
		log.info("cri : " + cri);
		
		model.addAttribute("list", bservice.getListPaging(cri));
		
		int total = bservice.getTotal(cri);
		
		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
		
		model.addAttribute("pageMaker", pageMake);
	
	}
 

	/* 1:1 문의사항 페이지 접속(페이징 적용) */
	@GetMapping("/inquiry")
	public void inquiryListGET(Model model, Criteria cri) {
		
		log.info("inquiryListGET");
		
		log.info("cri : " + cri);
		
		model.addAttribute("list", bservice.inquiryPaging(cri));
		
		int total = bservice.getTotals(cri);
		
		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
		
		model.addAttribute("pageMaker", pageMake);
		
		
		
	}
	/* 1대1 문의하기 게시판 접속 */
	@GetMapping("/inquiry_write")
	// => @RequestMapping(value="enroll", method=RequestMethod.GET)
	public void inquiryGET() {
		
		log.info("문의사항 등록 페이지 진입");
		
	}
	/* 1대1 문의하기 게시판 등록 */
	@PostMapping("/inquiry_write")
	public String inquiryPOST(BoardVO board, RedirectAttributes rttr) throws Exception {
		
		
		
		log.info("BoardVO : " + board);
		
		bservice.inquiry_write(board);
		
		log.info("BoardVO : " + board);
		
		rttr.addFlashAttribute("result", "inquiry_write success");
		
		
		
		return "redirect:/board/inquiry";
		
	}
	/* 1대1 문의사항 조회 */
	@GetMapping("/inquiry_2")
	public void inquiry_2GET(int board_seq, Model model, Criteria cri) {
		
		model.addAttribute("pageInfo", bservice.getPage(board_seq));
		
		model.addAttribute("cri", cri);
		
	}
	
	/* 공지사항 등록 페이지 접속 */
	@GetMapping("/notice_write")
	// => @RequestMapping(value="enroll", method=RequestMethod.GET)
	public void boardEnrollGET() {
		
		log.info("게시판 등록 페이지 진입");
		
	}
	
	/* 게시판 등록 */
	@PostMapping("/notice_write")
	public String boardEnrollPOST(BoardVO board, RedirectAttributes rttr) {
		
		log.info("BoardVO : " + board);
		
		bservice.notice_write(board);
		
		log.info("BoardVO : " + board);
		
		rttr.addFlashAttribute("result", "notice_write success");
		
		return "redirect:/board/notice";
		
	}
	
	/* 공지사항 조회 */
	@GetMapping("/notice2")
	public void boardGetPageGET(int board_seq, Model model, Criteria cri) {
		
		model.addAttribute("pageInfo", bservice.getPage(board_seq));
		
		model.addAttribute("cri", cri);
		
	}
	
	
	/* 1대1 수정 페이지 이동 */
	@GetMapping("/inquiry_modify")
	public void inquiryModifyGET(int board_seq, Model model, Criteria cri) {
		
		model.addAttribute("pageInfo", bservice.getPage(board_seq));
		
		model.addAttribute("cri", cri);
		
	} 
	
	/* 1대1 수정 페이지 수정 */
	@PostMapping("/inquiry_modify")
	public String inquiryModifyPOST(BoardVO board, RedirectAttributes rttr) {
		
		bservice.inquirymodify(board);
		rttr.addFlashAttribute("result", "modify success");
		
		return "redirect:/board/inquiry";
		
	}
	
	/* 공지사항 페이지 삭제 */
	@PostMapping("/delete")
	public String boardDeletePOST(int board_seq, RedirectAttributes rttr) {
		
		bservice.delete(board_seq);
		
		rttr.addFlashAttribute("result", "delete success");
		
		return "redirect:/admin/admin_notice";
	}
	/* 1대1문의사항 페이지 삭제 */
	@PostMapping("/deleteinquiry")
	public String inquiryDeletePOST(int board_seq, RedirectAttributes rttr) {
		
		bservice.deletein(board_seq);
		
		rttr.addFlashAttribute("result", "delete success");
		
		return "redirect:/board/inquiry";
	}
    
	
}
