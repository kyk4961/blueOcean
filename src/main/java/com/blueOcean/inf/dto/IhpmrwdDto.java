package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class IhpmrwdDto{
	/* 11_����_������_�ֿ�_�׷�_���_������ */
	private int IDX; //�Ϸù�ȣ
	private String RUTE_NM; //�׷θ�Ī
	private String WR_INFO_NO; //�����������
	private String WR_OBSV_TM; //�ð�
	private String WR_OBSV_LAT; //���_����_����
	private String WR_OBSV_LONG; //���_����_�浵
	private String WIND_DIR; //ǳ��
	private String WIND_SPD; //ǳ��
	private String WVHGT; //�İ�
	private String RST_WIND_SPD; //ǳ��_��������
	private String RST_WVHGT; //�İ�_��������
}
