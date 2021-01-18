package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class Ihprd2Dto{
	/* 7_내항_여객선_항로_데이터 */
	private int IDX; //일련번호
	private String CMPTNC_BROFFI_NM; //관할지사_명칭
	private String RUTE_NM; //항로명칭
	private String RUTE_SCTN_NO; //항로구간_순번
	private String TIDE_PORTCL_NO; //조석_기항지_순번
	private String TIDE_PORTCL_NM; //조석_기항지_명칭
	private String TIDE_SYNDC; //조석_삭망
	private String TIDE_FLQM; //조석_양현
	private String TIDE_STRD_PORTCL; //조석_평균항
	private String TIDE_TIME_DIFF; //조석_조시차
}
