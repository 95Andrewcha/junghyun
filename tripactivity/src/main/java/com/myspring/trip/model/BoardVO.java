package com.myspring.trip.model;

import java.util.Date;
import java.util.List;

public class BoardVO {
	private int board_seq;
	private String board_kind;
	private String board_kind1;
	
	private String n_Id;
	private String c_Id;
	
	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	private String admin_id;
	


	private String ac_ProductNum;
	private String le_ProductNum;
	
	

	private String board_title;
	private String board_content;
	private String board_state;
	
	private Date board_date;
	
	
	/* 이미지 정보 */
	private List<AttachImageVO> imageList;
	
	public List<AttachImageVO> getImageList(){
		return imageList;
	}
	
	public void setImageList(List<AttachImageVO> imageList) {
		this.imageList = imageList;
	}






	public int getBoard_seq() {
		return board_seq;
	}

	public void setBoard_seq(int board_seq) {
		this.board_seq = board_seq;
	}

	public String getBoard_kind() {
		return board_kind;
	}

	public void setBoard_kind(String board_kind) {
		this.board_kind = board_kind;
	}

	public String getBoard_kind1() {
		return board_kind1;
	}

	public void setBoard_kind1(String board_kind1) {
		this.board_kind1 = board_kind1;
	}

	public String getN_Id() {
		return n_Id;
	}

	public void setN_Id(String n_Id) {
		this.n_Id = n_Id;
	}

	public String getC_Id() {
		return c_Id;
	}

	public void setC_Id(String c_Id) {
		this.c_Id = c_Id;
	}

	public String getAc_ProductNum() {
		return ac_ProductNum;
	}

	public void setAc_ProductNum(String ac_ProductNum) {
		this.ac_ProductNum = ac_ProductNum;
	}

	public String getLe_ProductNum() {
		return le_ProductNum;
	}

	public void setLe_ProductNum(String le_ProductNum) {
		this.le_ProductNum = le_ProductNum;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_state() {
		return board_state;
	}

	public void setBoard_state(String board_state) {
		this.board_state = board_state;
	}

	public Date getBoard_date() {
		return board_date;
	}

	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}

	@Override
	public String toString() {
		return "BoardVO [board_seq=" + board_seq + ", board_kind=" + board_kind + ", board_kind1=" + board_kind1
				+ ", n_Id=" + n_Id + ", c_Id=" + c_Id + ", admin_Id=" + admin_id + ", ac_ProductNum=" + ac_ProductNum
				+ ", le_ProductNum=" + le_ProductNum + ", board_title=" + board_title + ", board_content="
				+ board_content + ", board_state=" + board_state + ", board_date=" + board_date + ", imageList="
				+ imageList + "]";
	}

	

	


	
	



}