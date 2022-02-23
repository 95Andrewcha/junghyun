package com.myspring.trip.model;

public class TicketVO {
	private String company_Name;
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
	
	
	public String getCompany_Name() {
		return company_Name;
	}
	public void setCompany_Name(String company_Name) {
		this.company_Name = company_Name;
	}
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
	@Override
	public String toString() {
		return "TicketVO [company_Name=" + company_Name + ", le_ticketNum=" + le_ticketNum + ", le_ticketName="
				+ le_ticketName + ", le_ticketDiscount=" + le_ticketDiscount + ", le_maxPeople=" + le_maxPeople
				+ ", le_standardPeople=" + le_standardPeople + ", le_n_Price=" + le_n_Price + ", le_h_Price="
				+ le_h_Price + ", le_n_startTime=" + le_n_startTime + ", le_n_endTime=" + le_n_endTime
				+ ", le_h_startTime=" + le_h_startTime + ", le_h_endTime=" + le_h_endTime + ", le_n_lastEntrance="
				+ le_n_lastEntrance + ", le_h_lastEntrance=" + le_h_lastEntrance + "]";
	}
	
	
	
}
