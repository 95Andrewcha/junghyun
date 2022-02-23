package com.myspring.trip.model;

public class ImageFileVO {
	private int ac_roomNum;
	private int board_seq;
	private int imgNumber;
	private int le_ProductNum;
	private int ac_ProductNum;
	private String fileName;
	private String imgFileKind;
	private String uploadPath;
	private String uuid;
	public int getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(int board_seq) {
		this.board_seq = board_seq;
	}
	public int getImgNumber() {
		return imgNumber;
	}
	public void setImgNumber(int imgNumber) {
		this.imgNumber = imgNumber;
	}
	public int getLe_ProductNum() {
		return le_ProductNum;
	}
	public void setLe_ProductNum(int le_ProductNum) {
		this.le_ProductNum = le_ProductNum;
	}
	public int getAc_ProductNum() {
		return ac_ProductNum;
	}
	public void setAc_ProductNum(int ac_ProductNum) {
		this.ac_ProductNum = ac_ProductNum;
	}
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getImgFileKind() {
		return imgFileKind;
	}
	public void setImgFileKind(String imgFileKind) {
		this.imgFileKind = imgFileKind;
	}
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	public int getAc_roomNum() {
		return ac_roomNum;
	}
	public void setAc_roomNum(int ac_roomNum) {
		this.ac_roomNum = ac_roomNum;
	}
	@Override
	public String toString() {
		return "ImageFileVO [ac_roomNum=" + ac_roomNum + ", board_seq=" + board_seq + ", imgNumber=" + imgNumber
				+ ", le_ProductNum=" + le_ProductNum + ", ac_ProductNum=" + ac_ProductNum + ", fileName=" + fileName
				+ ", imgFileKind=" + imgFileKind + ", uploadPath=" + uploadPath + ", uuid=" + uuid + "]";
	}
	
	
	
	
	
	
}
