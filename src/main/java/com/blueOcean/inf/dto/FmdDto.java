package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class FmdDto{
	/* 4_어선_측정_데이터 */
	private int IDX; //일련번호
	private String APPL_GUBUN; //신청구분
	private String REG_PORT; //선적항
	private String SHIP_GUBUN; //선박종류
	private String NATURE; //선질
	private String SBUILDER_ADD; //조선지
	private String LAUNCH_DATE; //진수일
	private float GROSS_TONNAGE; //총톤수
	private float MEASURED_LEN; //Lt
	private float MEASURED_BREAD; //Bt
	private float MEASURED_DPTM; //Dm
	private float MEASURED_DPTS; //Ds
	private float MEASURED_CTR; //C
	private float MEASURE_LEN; //LOA
	private float TOT_BULK; //폐위장소의합계용적
	private float TOT_DN_BULK; //상갑판아래의용적
	private float TOT_UP_BULK; //상갑판위합계용적
	private float EXPT_TOT_BULK; //제외장소합계용적
}
