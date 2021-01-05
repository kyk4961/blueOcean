package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class PagingDto{
	 private int pageSize; // �Խ� �� ��
	    private int firstPageNo; // ù ��° ������ ��ȣ
	    private int prevPageNo; // ���� ������ ��ȣ
	    private int startPageNo; // ���� ������ (����¡ �׺� ����)
	    private int pageNo; // ������ ��ȣ
	    private int endPageNo; // �� ������ (����¡ �׺� ����)
	    private int nextPageNo; // ���� ������ ��ȣ
	    private int finalPageNo; // ������ ������ ��ȣ
	    private int totalCount; // �Խ� �� ��ü ��
	    private int totalPageCnt;
	    private int limitStartNo;
	    
	    public void setTotalCount(int totalCount) {
	        this.totalCount = totalCount;
	        this.makePaging();
	    }

	    private void makePaging() {
	        if (this.totalCount == 0) return; // �Խ� �� ��ü ���� ���� ���
	        if (this.pageNo == 0) this.setPageNo(1); // �⺻ �� ����
	        if (this.pageSize == 0) this.setPageSize(10); // �⺻ �� ����

	        int finalPage = (totalCount + (pageSize - 1)) / pageSize; // ������ ������
	        if (this.pageNo > finalPage) this.setPageNo(finalPage); // �⺻ �� ����

	        if (this.pageNo < 0 || this.pageNo > finalPage) this.pageNo = 1; // ���� ������ ��ȿ�� üũ

	        boolean isNowFirst = pageNo == 1 ? true : false; // ���� ������ (��ü)
	        boolean isNowFinal = pageNo == finalPage ? true : false; // ������ ������ (��ü)

	        int startPage = ((pageNo - 1) / 10) * 10 + 1; // ���� ������ (����¡ �׺� ����)
	        int endPage = startPage + 10 - 1; // �� ������ (����¡ �׺� ����)

	        if (endPage > finalPage) { // [������ ������ (����¡ �׺� ����) > ������ ������] ���� ū ���
	            endPage = finalPage;
	        }

	        this.setFirstPageNo(1); // ù ��° ������ ��ȣ

	        if (isNowFirst) {
	            this.setPrevPageNo(1); // ���� ������ ��ȣ
	        } else {
	            this.setPrevPageNo(((pageNo - 1) < 1 ? 1 : (pageNo - 1))); // ���� ������ ��ȣ
	        }

	        this.setStartPageNo(startPage); // ���� ������ (����¡ �׺� ����)
	        this.setEndPageNo(endPage); // �� ������ (����¡ �׺� ����)

	        if (isNowFinal) {
	            this.setNextPageNo(finalPage); // ���� ������ ��ȣ
	        } else {
	            this.setNextPageNo(((pageNo + 1) > finalPage ? finalPage : (pageNo + 1))); // ���� ������ ��ȣ
	        }
	        this.setLimitStartNo((pageNo - 1) * pageSize);
	        
	        this.setFinalPageNo(finalPage); // ������ ������ ��ȣ
	    }


}