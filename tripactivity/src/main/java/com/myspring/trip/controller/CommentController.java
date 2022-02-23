package com.myspring.trip.controller;


import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myspring.trip.model.CommentVO;
import com.myspring.trip.model.Criteria;
import com.myspring.trip.service.BoardService;
import com.myspring.trip.service.CommentService;


@Controller
@RequestMapping("/comment")
 
public class CommentController {
	
private static final Logger log = LoggerFactory.getLogger(CommentController.class);
	
@Autowired
private CommentService bservice;
 

@RequestMapping("/list") //댓글 리스트
@ResponseBody
private List<CommentVO> mCommentServiceList(Model model) throws Exception{
    
    return bservice.commentListService();
}

@RequestMapping("/insert") //댓글 작성 
@ResponseBody
private int mCommentServiceInsert(@RequestParam int board_seq, @RequestParam String setReply_content, Criteria cri) throws Exception{
	log.info("댓글 INSERT");
	
	log.info("cri : " + cri);
    CommentVO comment = new CommentVO();
    comment.setBoard_seq(board_seq);
    comment.setReply_content(setReply_content);
    //로그인 기능을 구현했거나 따로 댓글 작성자를 입력받는 폼이 있다면 입력 받아온 값으로 사용하면 됩니다. 저는 따로 폼을 구현하지 않았기때문에 임시로 "test"라는 값을 입력해놨습니다.
    comment.setN_Id("test");  
    
    return bservice.commentInsertService(comment);
}

@RequestMapping("/update") //댓글 수정  
@ResponseBody
private int mCommentServiceUpdateProc(@RequestParam int reply_seq, @RequestParam String setReply_content) throws Exception{
    
    CommentVO comment = new CommentVO();
    comment.setReply_seq(reply_seq);
    comment.setReply_content(setReply_content);
    
    return bservice.commentUpdateService(comment);
}

@RequestMapping("/delete/{reply_seq}") //댓글 삭제  
@ResponseBody
private int mCommentServiceDelete(@PathVariable int reply_seq) throws Exception{
    
    return bservice.commentDeleteService(reply_seq);
}


    
	
}
