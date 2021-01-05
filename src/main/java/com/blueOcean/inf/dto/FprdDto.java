package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class FprdDto{
	/* 3_어선_검사_신청_내역 */
	private int IDX; //일련번호
	private int ACCT_YEAR; //접수년도
	private int ACCT_NO; //접수번호
	private String ACCT_DATE; //접수날짜
	private String SHIP_KIND; //검사종류
	private String OFFICE_GUBUN; //검사지사
	private String ACCT_GUBUN; //접수방법
}
