package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class Ihprd1Dto{
	/* 7_내항_여객선_항로_데이터 */
	private int IDX; //일련번호
	private String CMPTNC_BROFFI_NM; //관할지사_명칭
	private String RUTE_NM; //항로명칭
	private String RUTE_SCTN_NO; //항로구간_순번
	private String RUTE_SCTN_NM; //항로구간명
	private String MAX_FLOOD_DIR; //조류_최강창조류(유항)
	private String MAX_FLOOD_RATE; //조류_최강창조류(유속)
	private String MIN_FLOOD_DIR; //조류_최강낙조류(유항)
	private String MIN_FLOOD_RATE; //조류_최강낙조류(유속)
}
