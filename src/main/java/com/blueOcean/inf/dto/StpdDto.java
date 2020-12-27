package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class StpdDto{
	/* 2_선박_물건_검사_내역 */
	private int IDX; //일련번호
	private String FEE_GB; //조회명
	private String OFFICE_GUBUN; //검사지사
	private String ACCT_DATE; //접수일자
	private int MANU_QTY; //수량
	private String MANUF_UNIT; //단위
}
