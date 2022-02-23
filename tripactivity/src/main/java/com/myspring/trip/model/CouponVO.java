package com.myspring.trip.model;

import java.sql.Date;

public class CouponVO {
	private int coupon_Number;
	private String coupon_name; // 쿠폰명
	private String issued; // 발급 구분   0,1,2,3,4,5 나눠서 0 모두 1 1성
	private Date startDate; // 쿠폰 시작일
	private Date endDate; //쿠폰 종료일
	private String couponContents; //쿠폰 내용
	private int cri_price; //사용 가능 기준 금액
	private int overlap; // 중복 사용 가능 여부 
	private String discount_price; // 할인금액
	private String issued2; // 발급 종류 ( 할인권, 시즌권 이런거)
	public int getCoupon_Number() {
		return coupon_Number;
	}
	public void setCoupon_Number(int coupon_Number) {
		this.coupon_Number = coupon_Number;
	}
	public String getCoupon_name() {
		return coupon_name;
	}
	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}
	public String getIssued() {
		return issued;
	}
	public void setIssued(String issued) {
		this.issued = issued;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getCouponContents() {
		return couponContents;
	}
	public void setCouponContents(String couponContents) {
		this.couponContents = couponContents;
	}
	public int getCri_price() {
		return cri_price;
	}
	public void setCri_price(int cri_price) {
		this.cri_price = cri_price;
	}
	public int getOverlap() {
		return overlap;
	}
	public void setOverlap(int overlap) {
		this.overlap = overlap;
	}
	public String getDiscount_price() {
		return discount_price;
	}
	public void setDiscount_price(String discount_price) {
		this.discount_price = discount_price;
	}
	public String getIssued2() {
		return issued2;
	}
	public void setIssued2(String issued2) {
		this.issued2 = issued2;
	}
	@Override
	public String toString() {
		return "CouponVO [coupon_Number=" + coupon_Number + ", coupon_name=" + coupon_name + ", issued=" + issued
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", couponContents=" + couponContents
				+ ", cri_price=" + cri_price + ", overlap=" + overlap + ", discount_price=" + discount_price
				+ ", issued2=" + issued2 + "]";
	}
	
	
}
	