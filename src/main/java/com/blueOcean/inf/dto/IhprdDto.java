package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class IhprdDto{
	/* 7_����_������_�׷�_������ */
	private int IDX; //�Ϸù�ȣ
	private String CMPTNC_BROFFI_CODE; //��������_��Ī
	private String RUTE_NM; //�׷θ�Ī
	private String RUTE_SCTN_NO; //�׷α���_����
	private String RUTE_SCTN_NM; //�׷α�����
	private String MAX_FLOOD_DIR; //����_�ְ�â����(����)
	private String MAX_FLOOD_RATE; //����_�ְ�â����(����)
	private String MIN_FLOOD_DIR; //����_�ְ�������(����)
	private String MIN_FLOOD_RATE; //����_�ְ�������(����)
	private String TIDE_PORTCL_NO; //����_������_����
	private String TIDE_PORTCL_NM; //����_������_��Ī
	private String TIDE_SYNDC; //����_���
	private String TIDE_FLQM; //����_����
	private String TIDE_STRD_PORTCL; //����_�����
	private String TIDE_TIME_DIFF; //����_������
	private String SAIL_VSL_NO; //�ֿ����׼���_����
	private String SAIL_VSL_KND; //�ֿ����׼���_����
	private String SAIL_VSL_CN; //�ֿ����׼���_����
	private String NVGT_CHRT_PHOTO_NM; //�׷ε�_����_���ϸ�
}
