package com.myspring.trip.model;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class AdminVO {

	private int admin_num; //관리자 번호
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String admin_Id; // 관리자 아이디
	@Size(min=2, max=4)
	@Pattern(regexp = "[가-힣]*")
	private String admin_name; // 관리자 이름
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String admin_pw; // 관리자 비밀번호
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String admin_pw2;
	
	private String admin_phone; //관리자 폰번호
	private String admin_email; // 관리자 이메일
	private String admin_aut; //관리자 권한
	
	private boolean adminIdExist; 
	
	private boolean adminLogin;
	
	private boolean loginAdminVO;
	
	
	
	public boolean isLoginAdminVO() {
		return loginAdminVO;
	}
	public void setLoginAdminVO(boolean loginAdminVO) {
		this.loginAdminVO = loginAdminVO;
	}
	public boolean isAdminLogin() {
		return adminLogin;
	}
	public void setAdminLogin(boolean adminLogin) {
		this.adminLogin = adminLogin;
	}
	public String getAdmin_pw2() {
		return admin_pw2;
	}
	public void setAdmin_pw2(String admin_pw2) {
		this.admin_pw2 = admin_pw2;
	}

	
	
	public int getAdmin_num() {
		return admin_num;
	}
	public void setAdmin_num(int admin_num) {
		this.admin_num = admin_num;
	}
	public String getAdmin_Id() {
		return admin_Id;
	}
	public void setAdmin_Id(String admin_Id) {
		this.admin_Id = admin_Id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_pw() {
		return admin_pw;
	}
	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}
	public String getAdmin_phone() {
		return admin_phone;
	}
	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
	}
	public String getAdmin_email() {
		return admin_email;
	}
	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}
	public String getAdmin_aut() {
		return admin_aut;
	}
	public void setAdmin_aut(String admin_aut) {
		this.admin_aut = admin_aut;
	}
	@Override
	public String toString() {
		return "AdminVO [admin_num=" + admin_num + ", admin_Id=" + admin_Id + ", admin_name=" + admin_name
				+ ", admin_pw=" + admin_pw + ", admin_phone=" + admin_phone + ", admin_email=" + admin_email
				+ ", admin_aut=" + admin_aut + "]";
	}
	
	
	
	public AdminVO() {
	
		this.adminIdExist = false;
		this.adminLogin = false;
	}
	public boolean isAdminIdExist() {
		return adminIdExist;
	}
	public void setAdminIdExist(boolean adminIdExist) {
		this.adminIdExist = adminIdExist;
	}
	

	
	
}
