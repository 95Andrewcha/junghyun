package com.myspring.trip.model;

import java.util.List;

public class RoomVO {
	private String company_Name;
	private int ac_roomNum;
	private int ac_ProductNum;
	private String ac_roomName;
	private int ac_maxPeople;
	private int ac_standardPeople;
	private String ac_n_sPrice;
	private String ac_h_sPrice;
	private String ac_n_sjunPrice;
	private String ac_h_sjunPrice;
	private String ac_n_smaxPrice;
	private String ac_h_smaxPrice;
	private double ac_stayDiscount;
	private double ac_timeDiscount;
	private int ac_roomCount;
	private String ac_d_maxTime;
	private String ac_d_endTime;
	private String ac_s_startTime;
	private String ac_s_endTime;
	private String ac_addPrice;
	private String ac_n_dPrice;
	private String ac_h_dPrice;
	private String ac_n_djunPrice;
	private String ac_h_djunPrice;
	private String ac_n_dmaxPrice;
	private String ac_h_dmaxPrice;
	
	private List<ImageFileVO> imageList;
	
	
	
	public String getCompany_Name() {
		return company_Name;
	}
	public void setCompany_Name(String company_Name) {
		this.company_Name = company_Name;
	}
	public List<ImageFileVO> getImageList() {
		return imageList;
	}
	public void setImageList(List<ImageFileVO> imageList) {
		this.imageList = imageList;
	}
	public int getAc_roomNum() {
		return ac_roomNum;
	}
	public void setAc_roomNum(int ac_roomNum) {
		this.ac_roomNum = ac_roomNum;
	}
	public int getAc_ProductNum() {
		return ac_ProductNum;
	}
	public void setAc_ProductNum(int ac_ProductNum) {
		this.ac_ProductNum = ac_ProductNum;
	}
	public String getAc_roomName() {
		return ac_roomName;
	}
	public void setAc_roomName(String ac_roomName) {
		this.ac_roomName = ac_roomName;
	}
	public int getAc_maxPeople() {
		return ac_maxPeople;
	}
	public void setAc_maxPeople(int ac_maxPeople) {
		this.ac_maxPeople = ac_maxPeople;
	}
	public int getAc_standardPeople() {
		return ac_standardPeople;
	}
	public void setAc_standardPeople(int ac_standardPeople) {
		this.ac_standardPeople = ac_standardPeople;
	}
	public double getAc_stayDiscount() {
		return ac_stayDiscount;
	}
	public void setAc_stayDiscount(double ac_stayDiscount) {
		this.ac_stayDiscount = ac_stayDiscount;
	}
	public double getAc_timeDiscount() {
		return ac_timeDiscount;
	}
	public void setAc_timeDiscount(double ac_timeDiscount) {
		this.ac_timeDiscount = ac_timeDiscount;
	}
	public void setAc_timeDiscount(int ac_timeDiscount) {
		this.ac_timeDiscount = ac_timeDiscount;
	}
	public int getAc_roomCount() {
		return ac_roomCount;
	}
	public void setAc_roomCount(int ac_roomCount) {
		this.ac_roomCount = ac_roomCount;
	}
	public String getAc_d_maxTime() {
		return ac_d_maxTime;
	}
	public void setAc_d_maxTime(String ac_d_maxTime) {
		this.ac_d_maxTime = ac_d_maxTime;
	}
	public String getAc_d_endTime() {
		return ac_d_endTime;
	}
	public void setAc_d_endTime(String ac_d_endTime) {
		this.ac_d_endTime = ac_d_endTime;
	}
	public String getAc_s_startTime() {
		return ac_s_startTime;
	}
	public void setAc_s_startTime(String ac_s_startTime) {
		this.ac_s_startTime = ac_s_startTime;
	}
	public String getAc_s_endTime() {
		return ac_s_endTime;
	}
	public void setAc_s_endTime(String ac_s_endTime) {
		this.ac_s_endTime = ac_s_endTime;
	}
	public String getAc_addPrice() {
		return ac_addPrice;
	}
	public void setAc_addPrice(String ac_addPrice) {
		this.ac_addPrice = ac_addPrice;
	}
	public String getAc_n_sPrice() {
		return ac_n_sPrice;
	}
	public void setAc_n_sPrice(String ac_n_sPrice) {
		this.ac_n_sPrice = ac_n_sPrice;
	}
	public String getAc_h_sPrice() {
		return ac_h_sPrice;
	}
	public void setAc_h_sPrice(String ac_h_sPrice) {
		this.ac_h_sPrice = ac_h_sPrice;
	}
	public String getAc_n_sjunPrice() {
		return ac_n_sjunPrice;
	}
	public void setAc_n_sjunPrice(String ac_n_sjunPrice) {
		this.ac_n_sjunPrice = ac_n_sjunPrice;
	}
	public String getAc_h_sjunPrice() {
		return ac_h_sjunPrice;
	}
	public void setAc_h_sjunPrice(String ac_h_sjunPrice) {
		this.ac_h_sjunPrice = ac_h_sjunPrice;
	}
	public String getAc_n_smaxPrice() {
		return ac_n_smaxPrice;
	}
	public void setAc_n_smaxPrice(String ac_n_smaxPrice) {
		this.ac_n_smaxPrice = ac_n_smaxPrice;
	}
	public String getAc_h_smaxPrice() {
		return ac_h_smaxPrice;
	}
	public void setAc_h_smaxPrice(String ac_h_smaxPrice) {
		this.ac_h_smaxPrice = ac_h_smaxPrice;
	}
	public String getAc_n_dPrice() {
		return ac_n_dPrice;
	}
	public void setAc_n_dPrice(String ac_n_dPrice) {
		this.ac_n_dPrice = ac_n_dPrice;
	}
	public String getAc_h_dPrice() {
		return ac_h_dPrice;
	}
	public void setAc_h_dPrice(String ac_h_dPrice) {
		this.ac_h_dPrice = ac_h_dPrice;
	}
	public String getAc_n_djunPrice() {
		return ac_n_djunPrice;
	}
	public void setAc_n_djunPrice(String ac_n_djunPrice) {
		this.ac_n_djunPrice = ac_n_djunPrice;
	}
	public String getAc_h_djunPrice() {
		return ac_h_djunPrice;
	}
	public void setAc_h_djunPrice(String ac_h_djunPrice) {
		this.ac_h_djunPrice = ac_h_djunPrice;
	}
	public String getAc_n_dmaxPrice() {
		return ac_n_dmaxPrice;
	}
	public void setAc_n_dmaxPrice(String ac_n_dmaxPrice) {
		this.ac_n_dmaxPrice = ac_n_dmaxPrice;
	}
	public String getAc_h_dmaxPrice() {
		return ac_h_dmaxPrice;
	}
	public void setAc_h_dmaxPrice(String ac_h_dmaxPrice) {
		this.ac_h_dmaxPrice = ac_h_dmaxPrice;
	}
	@Override
	public String toString() {
		return "RoomVO [company_Name=" + company_Name + ", ac_roomNum=" + ac_roomNum + ", ac_ProductNum="
				+ ac_ProductNum + ", ac_roomName=" + ac_roomName + ", ac_maxPeople=" + ac_maxPeople
				+ ", ac_standardPeople=" + ac_standardPeople + ", ac_n_sPrice=" + ac_n_sPrice + ", ac_h_sPrice="
				+ ac_h_sPrice + ", ac_n_sjunPrice=" + ac_n_sjunPrice + ", ac_h_sjunPrice=" + ac_h_sjunPrice
				+ ", ac_n_smaxPrice=" + ac_n_smaxPrice + ", ac_h_smaxPrice=" + ac_h_smaxPrice + ", ac_stayDiscount="
				+ ac_stayDiscount + ", ac_timeDiscount=" + ac_timeDiscount + ", ac_roomCount=" + ac_roomCount
				+ ", ac_d_maxTime=" + ac_d_maxTime + ", ac_d_endTime=" + ac_d_endTime + ", ac_s_startTime="
				+ ac_s_startTime + ", ac_s_endTime=" + ac_s_endTime + ", ac_addPrice=" + ac_addPrice + ", ac_n_dPrice="
				+ ac_n_dPrice + ", ac_h_dPrice=" + ac_h_dPrice + ", ac_n_djunPrice=" + ac_n_djunPrice
				+ ", ac_h_djunPrice=" + ac_h_djunPrice + ", ac_n_dmaxPrice=" + ac_n_dmaxPrice + ", ac_h_dmaxPrice="
				+ ac_h_dmaxPrice + ", imageList=" + imageList + "]";
	}
		
}
