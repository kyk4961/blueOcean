package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class IhpndDto{
	/* 6_내항_여객선_운항_데이터 */
	private int IDX; //일련번호
	private String CMPTNC_BROFFI_CODE; //관할지사_명칭
	private String RUTE_NM; //항로명칭
	private String PSNSHP_NO; //운항여객선_순번
	private String PSNSHP_NM; //운항여객선명칭
	private String NVGT_ZONE_NM; //항해구역
	private int PSNSHP_GT; //총톤수
	private int PASNGR_PCAPA_CO; //여객정원
	private int LOADING_CREW_CO; //승무정원
	private int CAR_LOADNG_ABLTY_CO; //차량적재대수
	private String KDSHIP_NM; //선종
	private int SMR_NVG_CO; //하계_일일_운항횟수
	private int WTR_NVG_CO; //동계_일일_운항횟수
	private int VOYAGE_VE_NOTE; //속력(노트)
	private int RUTE_DSTNC; //운항거리(마일)
	private int REQRE_TIME; //소요시간(분)
	private int MENGN_KW_OUTPT_PER_1SET; //기관_1개당_추진력
	private int MENGN_CO; //기관개수
	private String CNSTR_YEAR; //선박_건조_년
	private String CNSTR_MONTH; //선박_건조_월
	private String CNSTR_DAY; //선박_건조_일
	private String SHPCPN_NM; //선사명
	private String PSNSHP_PHOTO_NO; //여객선사진_순번
	private String PSNSHP_PHOTO_NM; //여객선_사진_파일명
	private String FRST_OPORT_PRT_NM; //최초출항지_명칭
	private String MID_PORTCL_NO; //중간기항지_순번
	private String MID_PORTCL_NM; //중간기항지_명칭
	private int MID_PORTCL_REQRE_TIME; //중간기항지_소요시간
	private String FNL_PORTCL_NM; //종점지
	private int FNL_PORTCL_REQRE_TIME; //종점지_소요시간
}
