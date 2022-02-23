package com.myspring.trip.model;

import java.util.List;

public class Le_productVO {
	private int le_ProductNum;
	private String c_Name;
	private String le_Kind;
	private String company_Name;
	private String company_Number;
	private String le_Add;
	private String le_Phone;
	private String le_Call;
	private String le_Area;
	private String le_Select;
	private String le_Review;
	private String le_ReviewAverage;
	private String le_useInfo;
	private String le_companyInfo;
	private String le_refundInfo;
	private int le_ticketNum;
	private String le_ticketName;
	private double le_ticketDiscount;
	private int le_maxPeople;
	private int le_standardPeople;
	private String le_n_Price;
	private String le_h_Price;
	private String le_n_startTime;
	private String le_n_endTime;
	private String le_h_startTime;
	private String le_h_endTime;
	private String le_n_lastEntrance;
	private String le_h_lastEntrance;
	
	private List<TicketVO> ticketList;
	private List<ImageFileVO> imageList;
	private List<ImageFileVO> explanationImageList;
	
	
	
	public int getLe_ticketNum() {
		return le_ticketNum;
	}
	public void setLe_ticketNum(int le_ticketNum) {
		this.le_ticketNum = le_ticketNum;
	}
	public String getLe_ticketName() {
		return le_ticketName;
	}
	public void setLe_ticketName(String le_ticketName) {
		this.le_ticketName = le_ticketName;
	}
	public double getLe_ticketDiscount() {
		return le_ticketDiscount;
	}
	public void setLe_ticketDiscount(double le_ticketDiscount) {
		this.le_ticketDiscount = le_ticketDiscount;
	}
	public int getLe_maxPeople() {
		return le_maxPeople;
	}
	public void setLe_maxPeople(int le_maxPeople) {
		this.le_maxPeople = le_maxPeople;
	}
	public int getLe_standardPeople() {
		return le_standardPeople;
	}
	public void setLe_standardPeople(int le_standardPeople) {
		this.le_standardPeople = le_standardPeople;
	}
	public String getLe_n_Price() {
		return le_n_Price;
	}
	public void setLe_n_Price(String le_n_Price) {
		this.le_n_Price = le_n_Price;
	}
	public String getLe_h_Price() {
		return le_h_Price;
	}
	public void setLe_h_Price(String le_h_Price) {
		this.le_h_Price = le_h_Price;
	}
	public String getLe_n_startTime() {
		return le_n_startTime;
	}
	public void setLe_n_startTime(String le_n_startTime) {
		this.le_n_startTime = le_n_startTime;
	}
	public String getLe_n_endTime() {
		return le_n_endTime;
	}
	public void setLe_n_endTime(String le_n_endTime) {
		this.le_n_endTime = le_n_endTime;
	}
	public String getLe_h_startTime() {
		return le_h_startTime;
	}
	public void setLe_h_startTime(String le_h_startTime) {
		this.le_h_startTime = le_h_startTime;
	}
	public String getLe_h_endTime() {
		return le_h_endTime;
	}
	public void setLe_h_endTime(String le_h_endTime) {
		this.le_h_endTime = le_h_endTime;
	}
	public String getLe_n_lastEntrance() {
		return le_n_lastEntrance;
	}
	public void setLe_n_lastEntrance(String le_n_lastEntrance) {
		this.le_n_lastEntrance = le_n_lastEntrance;
	}
	public String getLe_h_lastEntrance() {
		return le_h_lastEntrance;
	}
	public void setLe_h_lastEntrance(String le_h_lastEntrance) {
		this.le_h_lastEntrance = le_h_lastEntrance;
	}
	public String getLe_Select() {
		return le_Select;
	}
	public void setLe_Select(String le_Select) {
		this.le_Select = le_Select;
	}
	public String getC_Name() {
		return c_Name;
	}
	public void setC_Name(String c_Name) {
		this.c_Name = c_Name;
	}
	public int getLe_ProductNum() {
		return le_ProductNum;
	}
	public void setLe_ProductNum(int le_ProductNum) {
		this.le_ProductNum = le_ProductNum;
	}
	public String getLe_Kind() {
		return le_Kind;
	}
	public void setLe_Kind(String le_Kind) {
		this.le_Kind = le_Kind;
	}
	
	public String getLe_Add() {
		return le_Add;
	}
	public void setLe_Add(String le_Add) {
		this.le_Add = le_Add;
	}
	public String getLe_Phone() {
		return le_Phone;
	}
	public void setLe_Phone(String le_Phone) {
		this.le_Phone = le_Phone;
	}
	public String getLe_Call() {
		return le_Call;
	}
	public void setLe_Call(String le_Call) {
		this.le_Call = le_Call;
	}
	public String getLe_Area() {
		return le_Area;
	}
	public void setLe_Area(String le_Area) {
		this.le_Area = le_Area;
	}
	public String getLe_Review() {
		return le_Review;
	}
	public void setLe_Review(String le_Review) {
		this.le_Review = le_Review;
	}
	public String getLe_ReviewAverage() {
		return le_ReviewAverage;
	}
	public void setLe_ReviewAverage(String le_ReviewAverage) {
		this.le_ReviewAverage = le_ReviewAverage;
	}
	public String getLe_useInfo() {
		return le_useInfo;
	}
	public void setLe_useInfo(String le_useInfo) {
		this.le_useInfo = le_useInfo;
	}
	public String getLe_companyInfo() {
		return le_companyInfo;
	}
	public void setLe_companyInfo(String le_companyInfo) {
		this.le_companyInfo = le_companyInfo;
	}
	public String getLe_refundInfo() {
		return le_refundInfo;
	}
	public void setLe_refundInfo(String le_refundInfo) {
		this.le_refundInfo = le_refundInfo;
	}
	public List<TicketVO> getTicketList() {
		return ticketList;
	}
	public void setTicketList(List<TicketVO> ticketList) {
		this.ticketList = ticketList;
	}
	public String getCompany_Name() {
		return company_Name;
	}
	public void setCompany_Name(String company_Name) {
		this.company_Name = company_Name;
	}
	public String getCompany_Number() {
		return company_Number;
	}
	public void setCompany_Number(String company_Number) {
		this.company_Number = company_Number;
	}
	
	public List<ImageFileVO> getImageList() {
		return imageList;
	}
	public void setImageList(List<ImageFileVO> imageList) {
		this.imageList = imageList;
	}
	public List<ImageFileVO> getExplanationImageList() {
		return explanationImageList;
	}
	public void setExplanationImageList(List<ImageFileVO> explanationImageList) {
		this.explanationImageList = explanationImageList;
	}
	@Override
	public String toString() {
		return "Le_productVO [le_ProductNum=" + le_ProductNum + ", c_Name=" + c_Name + ", le_Kind=" + le_Kind
				+ ", company_Name=" + company_Name + ", company_Number=" + company_Number + ", le_Add=" + le_Add
				+ ", le_Phone=" + le_Phone + ", le_Call=" + le_Call + ", le_Area=" + le_Area + ", le_Select="
				+ le_Select + ", le_Review=" + le_Review + ", le_ReviewAverage=" + le_ReviewAverage + ", le_useInfo="
				+ le_useInfo + ", le_companyInfo=" + le_companyInfo + ", le_refundInfo=" + le_refundInfo
				+ ", le_ticketNum=" + le_ticketNum + ", le_ticketName=" + le_ticketName + ", le_ticketDiscount="
				+ le_ticketDiscount + ", le_maxPeople=" + le_maxPeople + ", le_standardPeople=" + le_standardPeople
				+ ", le_n_Price=" + le_n_Price + ", le_h_Price=" + le_h_Price + ", le_n_startTime=" + le_n_startTime
				+ ", le_n_endTime=" + le_n_endTime + ", le_h_startTime=" + le_h_startTime + ", le_h_endTime="
				+ le_h_endTime + ", le_n_lastEntrance=" + le_n_lastEntrance + ", le_h_lastEntrance=" + le_h_lastEntrance
				+ ", ticketList=" + ticketList + ", imageList=" + imageList + ", explanationImageList="
				+ explanationImageList + "]";
	}
	
	
	
}
