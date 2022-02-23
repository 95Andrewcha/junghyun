package com.myspring.trip.model;

public class CartDTO {

	private int cartId;
    
	private String n_Id;
    
    private String c_Id;
    
    private int le_ProductNum;
    
    private int ac_ProductNum;
    
    private int ac_roomNum;
    
    public int getAc_roomNum() {
		return ac_roomNum;
	}

	public void setAc_roomNum(int ac_roomNum) {
		this.ac_roomNum = ac_roomNum;
	}


	private int bookCount;
    
    //book
    
    private String ac_CompanyName;
    
    private String company_Name;
    
    private int price;
    
    private double bookDiscount;
    
    // 추가
    private int salePrice;
    
    private int totalPrice;

    public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
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

	public int getBookCount() {
		return bookCount;
	}

	public void setBookCount(int bookCount) {
		this.bookCount = bookCount;
	}

	public String getAc_CompanyName() {
		return ac_CompanyName;
	}

	public void setAc_CompanyName(String ac_CompanyName) {
		this.ac_CompanyName = ac_CompanyName;
	}

	public String getCompany_Name() {
		return company_Name;
	}

	public void setCompany_Name(String company_Name) {
		this.company_Name = company_Name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public double getBookDiscount() {
		return bookDiscount;
	}

	public void setBookDiscount(double bookDiscount) {
		this.bookDiscount = bookDiscount;
	}

	public int getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}

	public void initSaleTotal() {
		this.salePrice = (int) (this.price * (1-this.bookDiscount));
		this.totalPrice = this.salePrice*this.bookCount;
	}


    @Override
	public String toString() {
		return "CartDTO [cartId=" + cartId + ", n_Id=" + n_Id + ", c_Id=" + c_Id + ", le_ProductNum=" + le_ProductNum
				+ ", ac_ProductNum=" + ac_ProductNum + ", bookCount=" + bookCount + ", ac_CompanyName=" + ac_CompanyName
				+ ", company_Name=" + company_Name + ", price=" + price + ", bookDiscount=" + bookDiscount
				+ ", salePrice=" + salePrice + ", totalPrice=" + totalPrice + "]";
	}
}
