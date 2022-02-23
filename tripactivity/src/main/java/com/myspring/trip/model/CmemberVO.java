package com.myspring.trip.model;

import java.util.Date;

public class CmemberVO {
	private String c_Id;
	private String admin_Id;
	private String c_Pw1;
	private String c_Pw2;
	private String c_Name;
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
	private String company_Name;
	private String company_Number;
	private String alert_Count;
	
	public String getAlert_Count() {
		return alert_Count;
	}
	public void setAlert_Count(String alert_Count) {
		this.alert_Count = alert_Count;
	}
	public String getC_Id() {
		return c_Id;
	}
	public void setC_Id(String c_Id) {
		this.c_Id = c_Id;
	}
	public String getAdmin_Id() {
		return admin_Id;
	}
	public void setAdmin_Id(String admin_Id) {
		this.admin_Id = admin_Id;
	}
	public String getC_Pw1() {
		return c_Pw1;
	}
	public void setC_Pw1(String c_Pw1) {
		this.c_Pw1 = c_Pw1;
	}
	public String getC_Pw2() {
		return c_Pw2;
	}
	public void setC_Pw2(String c_Pw2) {
		this.c_Pw2 = c_Pw2;
	}
	public String getC_Name() {
		return c_Name;
	}
	public void setC_Name(String c_Name) {
		this.c_Name = c_Name;
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
	@Override
	public String toString() {
		return "CmemberVO [c_Id=" + c_Id + ", admin_Id=" + admin_Id + ", c_Pw1=" + c_Pw1 + ", c_Pw2=" + c_Pw2
				+ ", c_Name=" + c_Name + ", sex=" + sex + ", email1=" + email1 + ", email2=" + email2 + ", birth_y="
				+ birth_y + ", birth_m=" + birth_m + ", birth_d=" + birth_d + ", phone1=" + phone1 + ", phone2="
				+ phone2 + ", phone3=" + phone3 + ", service1=" + service1 + ", service2=" + service2 + ", service3="
				+ service3 + ", date=" + date + ", event_money=" + event_money + ", coupon_Num=" + coupon_Num
				+ ", level=" + level + ", company_Name=" + company_Name + ", company_Number=" + company_Number + "]";
	}
	
	
}
