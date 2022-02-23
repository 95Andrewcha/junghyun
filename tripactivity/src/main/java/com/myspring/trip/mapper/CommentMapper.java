package com.myspring.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.myspring.trip.model.CommentVO;

@Repository("com.myspring.trip.mapper.CommentMapper")

public interface CommentMapper {
	 // 댓글 개수
    public int commentCount() throws Exception;
 
    // 댓글 목록
    public List<CommentVO> commentList() throws Exception;
 
    // 댓글 작성
    public int commentInsert(CommentVO reply_content) throws Exception;
    
    // 댓글 수정
    public int commentUpdate(CommentVO reply_content) throws Exception;
 
    // 댓글 삭제
    public int commentDelete(int reply_seq) throws Exception;


}
