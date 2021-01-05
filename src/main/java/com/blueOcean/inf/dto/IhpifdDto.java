package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class IhpifdDto{
	/* 8_내항_여객선_항로_위해요소_데이터 */
	private int IDX; //일련번호
	private String RUTE_NM; //항로명칭
	private String RISK_FCTR_NO; //위해요소_순번
	private String RISK_FCTR_KND_CODE; //위해요소_종류
	private String RISK_FCTR_LAT; //위해요소_위도
	private String RISK_FCTR_LONG; //위해요소_경도
	private String RISK_FCTR_POSC_DTL; //위해요소_위치_상세
	private String RISK_FCTR_CN; //위해요소_내용
	private String RISK_FCTR_PHOTO; //위해요소_사진_파일명
}
