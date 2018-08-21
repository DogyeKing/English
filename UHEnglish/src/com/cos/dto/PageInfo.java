//페이징 처리 관련 정보를 저장하는 클래스

package com.cos.dto;

public class PageInfo {

	private int page;
	private int maxpPage;
	private int startPage;
	private int endPage;
	private int listCount;

	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getMaxpPage() {
		return maxpPage;
	}
	public void setMaxpPage(int maxpPage) {
		this.maxpPage = maxpPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getListCount() {
		return listCount;
	}
	public void setListCount(int listCount) {
		this.listCount = listCount;
	}

	
}
