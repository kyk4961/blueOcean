package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class FehdDto{
	/* 5_어선_기관_마력_데이터 */
	private int IDX; //일련번호
	private String MAIN_KIND; //주기관
	private int MAIN_QTY; //주기관수
	private int MCE_KW; //기관출력
	private int MCE_PS; //기관출력
	private float GROSS_TONNAGE; //총톤수
	private String PURPOSE; //선박용도
	private String PURPOSE_GU; //선박용도구분
	private String NATURE; //선체재질코드
	private String LAUNCH_DATE; //진수일자
}