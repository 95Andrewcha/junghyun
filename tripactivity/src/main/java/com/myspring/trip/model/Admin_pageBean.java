package com.myspring.trip.model;

public class Admin_pageBean {

	//최소 페이지 번호
	private int min;
	
	//최대 페이지 번호
	private int max;
	
	//이전 버튼의 페이지 번호
	private int prevPage;
	
	//다음 버튼의 페이지 번호
	private int nextPage;
	
	// 전체 페이지 개수
	private int pageCnt;
	
	//현재 페이지 번호
	private int currentPage;
	
	//contentCnt : 전체 글의 개수, currnetPange : 현재 글 번호, ContentPageCnt:페이지 글의 개수, paginationCnt : 페이지 버튼의 개수
	public Admin_pageBean(int contentCnt, int currentPage, int contentPageCnt, int paginationCnt) {
		
		//현재 페이지 번호
		this.currentPage = currentPage;
		
		//전체 페이지 개수
		pageCnt = contentCnt / contentPageCnt;
		
		if(contentCnt % contentPageCnt >0) {
			pageCnt++;
		}
		// 0 : 1  // 1: 11 // 2:21
		min = ((currentPage - 1) / contentPageCnt) * contentPageCnt +1;
		// 최소값 = (현재페이지 -1) 나누기 현재페이지
		max = min + paginationCnt -1;
		
		if(max > pageCnt) {
			max = pageCnt;
		}
		
		prevPage = min -1 ;
		nextPage = max + 1;
		if(nextPage > pageCnt) {
			nextPage=pageCnt;
		}
		
	}

	public int getMin() {
		return min;
	}

	public void setMin(int min) {
		this.min = min;
	}

	public int getMax() {
		return max;
	}

	public void setMax(int max) {
		this.max = max;
	}


	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getPageCnt() {
		return pageCnt;
	}

	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

}
