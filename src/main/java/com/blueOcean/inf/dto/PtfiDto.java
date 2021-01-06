package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class PtfiDto{
	/* 1_검사_대상_어선_정보 */
	private int IDX; //일련번호
	private String SHIP_NO; //선박번호
	private String SHIP_GUBUN; //구분(어선/일반선)
	private float GROSS_TONNAGE; //총톤수
	private float REG_LENGTH; //길이
	private float REG_BREADTH; //너비
	private float REG_DEPTH; //깊이
	private float NATURE; //선질
	private String PURPOSE; //용도
	private String PURPOSE_GU; //세부용도
	private String REG_PORT; //선적항
}
