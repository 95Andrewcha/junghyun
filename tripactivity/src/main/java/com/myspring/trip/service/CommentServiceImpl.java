package com.myspring.trip.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.trip.mapper.AdminMapper;
import com.myspring.trip.mapper.BoardMapper;
import com.myspring.trip.mapper.CommentMapper;
import com.myspring.trip.model.CommentVO;

@Service("CommentService")
public class CommentServiceImpl implements CommentService{
	

	@Autowired
	private CommentMapper mCommentMapper;
 

	@Override
    public List<CommentVO> commentListService() throws Exception{
        
        return mCommentMapper.commentList();
    }
	@Override
    public int commentInsertService(CommentVO reply_content) throws Exception{
        
        return mCommentMapper.commentInsert(reply_content);
    }
	@Override
    public int commentUpdateService(CommentVO reply_content) throws Exception{
        
        return mCommentMapper.commentUpdate(reply_content);
    }
	@Override
    public int commentDeleteService(int reply_seq) throws Exception{
        
        return mCommentMapper.commentDelete(reply_seq);
    }
}
 
