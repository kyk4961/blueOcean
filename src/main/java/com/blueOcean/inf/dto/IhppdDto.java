package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class IhppdDto{
	/* 9_내항_여객선_기항지_데이터 */
	private int IDX; //일련번호
	private String RUTE_NM; //항로명칭
	private String PORTCL_NO; //기항지_순번
	private String PORTCL_NM; //기항지명
	private String PORTCL_BERTH_NO; //기항지_접안시설_순번
	private String PORTCL_BERTH_PHOTO; //접안시설사진
	private String PORTCL_BERTH_KND; //접안시설구분
	private int BERTH_LT; //접안시설규모_길이
	private int BERTH_BT; //접안시설규모_너비
	private int BERTH_HG; //접안시설규모_높이
	private int BERTH_HDG; //접안선수방위
	private String RESIDE_AT; //거주구분
	private int RESIDE_POPLTN_CO; //거주인구
	private String CNVNC_FCLTY_PHOTO; //편의시설_사진_파일명
	private String CNVNC_FCLTY_KND; //편의시설_구분
	private int CNVNC_FCLTY_NMPR_CO; //편의시설_수용인원
	private String BKOFF_AT; //매표소유무
	private String OP_DATE; //개관일
	private String SLNETR_PSNSHP_NO; //기항_여객선_순번
	private String SLNETR_PSNSHP_NM; //기항_여객선_명칭
}
