package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class IhprdDto{
	/* 7_내항_여객선_항로_데이터 */
	private int IDX; //일련번호
	private String CMPTNC_BROFFI_CODE; //관할지사_명칭
	private String RUTE_NM; //항로명칭
	private String RUTE_SCTN_NO; //항로구간_순번
	private String RUTE_SCTN_NM; //항로구간명
	private String MAX_FLOOD_DIR; //조류_최강창조류(유항)
	private String MAX_FLOOD_RATE; //조류_최강창조류(유속)
	private String MIN_FLOOD_DIR; //조류_최강낙조류(유항)
	private String MIN_FLOOD_RATE; //조류_최강낙조류(유속)
	private String TIDE_PORTCL_NO; //조석_기항지_순번
	private String TIDE_PORTCL_NM; //조석_기항지_명칭
	private String TIDE_SYNDC; //조석_삭망
	private String TIDE_FLQM; //조석_양현
	private String TIDE_STRD_PORTCL; //조석_평균항
	private String TIDE_TIME_DIFF; //조석_조시차
	private String SAIL_VSL_NO; //주요통항선박_순번
	private String SAIL_VSL_KND; //주요통항선박_유형
	private String SAIL_VSL_CN; //주요통항선박_내용
	private String NVGT_CHRT_PHOTO_NM; //항로도_사진_파일명
}
