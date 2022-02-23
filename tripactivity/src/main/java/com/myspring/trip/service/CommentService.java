package com.myspring.trip.service;

import java.util.List;

import com.myspring.trip.model.CommentVO;

public interface CommentService {
    
    public List<CommentVO> commentListService() throws Exception;
    
    public int commentInsertService(CommentVO reply_content) throws Exception;
    
    public int commentUpdateService(CommentVO reply_content) throws Exception;
    
    public int commentDeleteService(int reply_seq) throws Exception;
}
 
