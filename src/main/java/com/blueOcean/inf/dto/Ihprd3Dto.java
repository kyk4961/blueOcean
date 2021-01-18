package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class Ihprd3Dto{
	/* 7_내항_여객선_항로_데이터 */
	private int IDX; //일련번호
	private String CMPTNC_BROFFI_NM; //관할지사_명칭
	private String RUTE_NM; //항로명칭
	private String RUTE_CODE;
	private String RUTE_SCTN_NO;
	private String RUTE_SCTN_NM;
	private String SAIL_VSL_NO; //주요통항선박_순번
	private String SAIL_VSL_KND; //주요통항선박_유형
	private String SAIL_VSL_CN; //주요통항선박_내용
	private String NVGT_CHRT_PHOTO_NM; //항로도_사진_파일명
}
