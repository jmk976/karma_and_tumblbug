package com.karma_and_tumblbug.p1.util;

import java.util.HashMap;
import java.util.Map;

public class Pager {
	//1 DB에서 일정갯수만큼 조회
	//2 JSP 페이지에 일정한 갯수만큼 번호를 curPager번호 출력

	protected long perPage; //DB에서 조회할 갯수 (몇개씩 조회할거냐)
	protected long perBlock; //JSP에 출력할 갯수 (몇개씩 출력할거냐)

	protected Pager() {
		this.perPage=10;
		this.perBlock=5;
		this.curPage=1;
	}

	protected long curPage; //현재 페이지 번호

	protected long startRow;
	protected long lastRow;

	//rownum 계산하는 메서드
	public void makeRow() {
		//		curpage			startrow		lastrow
		//		1				1				10
		//		2				11				20
		//		3				21				30
		this.startRow = (this.curPage-1)*perPage+1;
		this.lastRow = this.curPage*this.perPage;
	}

//--------------------------------------------------------------- 페이징 계산	
	
	protected long totalPage;
	protected long startNum;
	protected long lastNum;
	protected boolean pre;
	protected boolean next;

	//페이징 계산하는 메서드
	public void makeNum(long totalCount) {
		//1. 전체글의 갯수로 전체 페이지 갯수 구하기
		this.totalPage = totalCount/this.perPage;
		if(totalCount%this.perPage !=0) {
			totalPage++;
		}
		
		//2. 전체페이지 전체 block 수 구하기
		long totalBlock = this.totalPage / this.perBlock;
		if(this.totalPage%this.perBlock !=0) {
			totalBlock++;
		}
		
		//3. curPage 이용해서 curBlock 구하기
		// curPage		curBlock
		// 1			1
		// 2			1
		// 5			1
		// 6			2
		long curBlock = this.curPage / this.perBlock;
		if(this.curPage%this.perBlock !=0) {
			curBlock++;
		}
	
		//4. curBlock으로 startNum, lastNum 구하기
		// curBlock	startNum	lastNum
		//	1		1			5
		//	2		6			10
		//	3		11			15
		this.startNum = (curBlock-1)*this.perBlock+1;
		this.lastNum = curBlock*this.perBlock;
		
		//5. curBlock이 totalBlock 과 같다면
		if(curBlock == totalBlock) {
			this.lastNum = this.totalPage;
		}
		
		//6. 이전, 다음 유무
		if(curBlock > 1) {
			this.pre=true;
		}
		
		if(curBlock != totalBlock) {
			this.next = true;
		}
	}
	

	public long getPerPage() {
		return perPage;
	}

	public void setPerPage(long perPage) {
		this.perPage = perPage;
	}

	public long getPerBlock() {
		return perBlock;
	}

	public void setPerBlock(long perBlock) {
		this.perBlock = perBlock;
	}

	public long getCurPage() {
		return curPage;
	}

	public void setCurPage(long curPage) {
		this.curPage = curPage;
	}



	public long getStartRow() {
		return startRow;
	}

	public void setStartRow(long startRow) {
		this.startRow = startRow;
	}

	public long getLastRow() {
		return lastRow;
	}

	public void setLastRow(long lastRow) {
		this.lastRow = lastRow;
	}

	public long getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(long totalPage) {
		this.totalPage = totalPage;
	}

	public long getStartNum() {
		if(startNum < 1) {
			startNum = 1;
		}
		return startNum;
	}

	public void setStartNum(long startNum) {
		this.startNum = startNum;
	}

	public long getLastNum() {
		if(lastNum < 1) {
			lastNum = 1;
		}
		return lastNum;
	}

	public void setLastNum(long lastNum) {
		this.lastNum = lastNum;
	}

	public boolean isPre() {
		return pre;
	}

	public void setPre(boolean pre) {
		this.pre = pre;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}
	
	
	//------------------- 검색----------------------
	
	protected String kind; //검색할 column명 담은 변수
	protected String search; //검색어 담은 변수
	
	
	
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getSearch() {
		if(this.search == null) {
			this.search="";
		}
		return search;
	}
	public void setSearch(String search) {
		if(search == null) {
			search = "";
		}
		this.search = search;
	}
	
	
	
	protected String boardSort;

	public String getBoardSort() {
		return boardSort;
	}


	public void setBoardSort(String boardSort) {
		this.boardSort = boardSort;
	}
	


	
	
}
