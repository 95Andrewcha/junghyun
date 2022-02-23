package com.myspring.trip.model;

import java.util.Date;

public class NmemberVO {
	private String n_Id;
	private String admin_Id;
	private String n_Pw1;
	private String n_Pw2;
	private String n_Name;
	private String n_grade;
	private String reserv_num;
	private String reserv_day;
	public String getReserv_day() {
		return reserv_day;
	}
	public void setReserv_day(String reserv_day) {
		this.reserv_day = reserv_day;
	}
	public String getReserv_num() {
		return reserv_num;
	}
	public void setReserv_num(String reserv_num) {
		this.reserv_num = reserv_num;
	}
	public String getN_grade() {
		return n_grade;
	}
	public void setN_grade(String n_grade) {
		this.n_grade = n_grade;
	}
	
	private String n_memberNum;
	public String getN_memberNum() {
		return n_memberNum;
	}
	public void setN_memberNum(String n_memberNum) {
		this.n_memberNum = n_memberNum;
	}

	private String sex;
	private String email1;
	private String email2;
	private String birth_y;
	private String birth_m;
	private String birth_d;
	private String phone1;
	private String phone2;
	private String phone3;
	private String service1;
	private String service2;
	private String service3;
	private Date date;
	private int event_money;
	private int coupon_Num;
	private String level;
	private String settingday;
	public String getSettingday() {
		return settingday;
	}
	public void setSettingday(String settingday) {
		this.settingday = settingday;
	}
	
	
	public String getN_Id() {
		return n_Id;
	}
	public void setN_Id(String n_Id) {
		this.n_Id = n_Id;
	}
	public String getAdmin_Id() {
		return admin_Id;
	}
	public void setAdmin_Id(String admin_Id) {
		this.admin_Id = admin_Id;
	}
	public String getN_Pw1() {
		return n_Pw1;
	}
	public void setN_Pw1(String n_Pw1) {
		this.n_Pw1 = n_Pw1;
	}
	public String getN_Pw2() {
		return n_Pw2;
	}
	public void setN_Pw2(String n_Pw2) {
		this.n_Pw2 = n_Pw2;
	}
	public String getN_Name() {
		return n_Name;
	}
	public void setN_Name(String n_Name) {
		this.n_Name = n_Name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public String getBirth_y() {
		return birth_y;
	}
	public void setBirth_y(String birth_y) {
		this.birth_y = birth_y;
	}
	public String getBirth_m() {
		return birth_m;
	}
	public void setBirth_m(String birth_m) {
		this.birth_m = birth_m;
	}
	public String getBirth_d() {
		return birth_d;
	}
	public void setBirth_d(String birth_d) {
		this.birth_d = birth_d;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	public String getService1() {
		return service1;
	}
	public void setService1(String service1) {
		this.service1 = service1;
	}
	public String getService2() {
		return service2;
	}
	public void setService2(String service2) {
		this.service2 = service2;
	}
	public String getService3() {
		return service3;
	}
	public void setService3(String service3) {
		this.service3 = service3;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getEvent_money() {
		return event_money;
	}
	public void setEvent_money(int event_money) {
		this.event_money = event_money;
	}
	public int getCoupon_Num() {
		return coupon_Num;
	}
	public void setCoupon_Num(int coupon_Num) {
		this.coupon_Num = coupon_Num;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	@Override
	public String toString() {
		return "NmemberVO [n_Id=" + n_Id + ", admin_Id=" + admin_Id + ", n_Pw1=" + n_Pw1 + ", n_Pw2=" + n_Pw2
				+ ", n_Name=" + n_Name + ", sex=" + sex + ", email1=" + email1 + ", email2=" + email2 + ", birth_y="
				+ birth_y + ", birth_m=" + birth_m + ", birth_d=" + birth_d + ", phone1=" + phone1 + ", phone2="
				+ phone2 + ", phone3=" + phone3 + ", service1=" + service1 + ", service2=" + service2 + ", service3="
				+ service3 + ", date=" + date + ", event_money=" + event_money + ", coupon_Num=" + coupon_Num
				+ ", level=" + level + "]";
	}
	
	
}