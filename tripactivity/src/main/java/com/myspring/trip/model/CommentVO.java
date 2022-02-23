package com.myspring.trip.model;

import java.sql.Date;

public class CommentVO {
	
	
	private int reply_seq;
    private int board_seq;
    private String reply_content;
    private String n_Id;
    private Date board_date;
    
	public int getReply_seq() {
		return reply_seq;
	}
	public void setReply_seq(int reply_seq) {
		this.reply_seq = reply_seq;
	}
	public int getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(int board_seq) {
		this.board_seq = board_seq;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	public String getN_Id() {
		return n_Id;
	}
	public void setN_Id(String n_Id) {
		this.n_Id = n_Id;
	}
	public Date getBoard_date() {
		return board_date;
	}
	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}
	@Override
	public String toString() {
		return "CommentVO [reply_seq=" + reply_seq + ", board_seq=" + board_seq + ", reply_content=" + reply_content
				+ ", n_Id=" + n_Id + ", board_date=" + board_date + "]";
	}

}
