package com.myspring.trip.model;

import java.util.Date;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class AdminQuestionVO {
	private int idx;
	private int board_seq;
	
	private String level;
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String n_Id;
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	
	
	private int answer_stats;
	private String c_Id;
	
	private String board_title;
	private String boad_content;
	private Date board_date;
	
	public String getN_Id() {
		return n_Id;
	}
	public void setN_Id(String n_Id) {
		this.n_Id = n_Id;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoad_content() {
		return boad_content;
	}
	public void setBoad_content(String boad_content) {
		this.boad_content = boad_content;
	}
	public Date getBoard_date() {
		return board_date;
	}
	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(int board_seq) {
		this.board_seq = board_seq;
	}
	
	public String getLevel() {
		return level;
	}
	
	public String getC_Id() {
		return c_Id;
	}
	public void setC_Id(String c_Id) {
		this.c_Id = c_Id;
	}
	
	

	
	public int getAnswer_stats() {
		return answer_stats;
	}
	public void setAnswer_stats(int answer_stats) {
		this.answer_stats = answer_stats;
	}
	@Override
	public String toString() {
		return "AdminQuestionVO [idx=" + idx + ", board_seq=" + board_seq + ", level=" + level + ", n_Id=" + n_Id
				+ ", c_Id=" + c_Id + ", board_title=" + board_title + ", boad_content=" + boad_content + ", board_date="
				+ board_date + "]";
	}
}
