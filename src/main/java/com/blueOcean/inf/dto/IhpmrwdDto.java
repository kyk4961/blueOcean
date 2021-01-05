package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class IhpmrwdDto{
	/* 11_내항_여객선_주요_항로_기상_데이터 */
	private int IDX; //일련번호
	private String RUTE_NM; //항로명칭
	private String WR_INFO_NO; //기상정보순번
	private String WR_OBSV_TM; //시각
	private String WR_OBSV_LAT; //기상_측정_위도
	private String WR_OBSV_LONG; //기상_측정_경도
	private String WIND_DIR; //풍향
	private String WIND_SPD; //풍속
	private String WVHGT; //파고
	private String RST_WIND_SPD; //풍속_통제기준
	private String RST_WVHGT; //파고_통제기준
}
