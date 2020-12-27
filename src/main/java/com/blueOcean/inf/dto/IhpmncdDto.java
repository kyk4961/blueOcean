package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class IhpmncdDto {
	/* 10_내항_여객선_월별_운항통제_데이터 */
	private int IDX; //일련번호
	private String YYYY; //연도
	private String MM; //월
	private String PASNGR_SAFE_CNTER; //관할지사_명칭
	private String RUTE_NO; //항로_순번
	private String RUTE_NM; //항로_명칭
	private int CTRL_TYPHOON; //통제일수_태풍
	private int CTRL_WDWV_WARN; //통제일수_풍랑경보
	private int CTRL_WDWV_ADV; //통제일수_풍랑주의보
	private int CRTL_DTRT_WR; //통제일수_기상악화
	private int CTRL_RSTC_VISIBIL; //통제일수_안개
	private int CTRL_ETC; //통제일수_기타
	private int NNAVI_ISPT; //휴항일수_선박검사
	private int NNAVI_IMPRMN; //휴항일수_선박정비
	private int NNAVI_ETC; //휴항일수_기타
}
