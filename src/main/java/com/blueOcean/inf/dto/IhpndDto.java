package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class IhpndDto{
	/* 6_����_������_����_������ */
	private int IDX; //�Ϸù�ȣ
	private String CMPTNC_BROFFI_CODE; //��������_��Ī
	private String RUTE_NM; //�׷θ�Ī
	private String PSNSHP_NO; //���׿�����_����
	private String PSNSHP_NM; //���׿�������Ī
	private String NVGT_ZONE_NM; //���ر���
	private int PSNSHP_GT; //�����
	private int PASNGR_PCAPA_CO; //��������
	private int LOADING_CREW_CO; //�¹�����
	private int CAR_LOADNG_ABLTY_CO; //����������
	private String KDSHIP_NM; //����
	private int SMR_NVG_CO; //�ϰ�_����_����Ƚ��
	private int WTR_NVG_CO; //����_����_����Ƚ��
	private int VOYAGE_VE_NOTE; //�ӷ�(��Ʈ)
	private int RUTE_DSTNC; //���װŸ�(����)
	private int REQRE_TIME; //�ҿ�ð�(��)
	private int MENGN_KW_OUTPT_PER_1SET; //���_1����_������
	private int MENGN_CO; //�������
	private String CNSTR_YEAR; //����_����_��
	private String CNSTR_MONTH; //����_����_��
	private String CNSTR_DAY; //����_����_��
	private String SHPCPN_NM; //�����
	private String PSNSHP_PHOTO_NO; //����������_����
	private String PSNSHP_PHOTO_NM; //������_����_���ϸ�
	private String FRST_OPORT_PRT_NM; //����������_��Ī
	private String MID_PORTCL_NO; //�߰�������_����
	private String MID_PORTCL_NM; //�߰�������_��Ī
	private int MID_PORTCL_REQRE_TIME; //�߰�������_�ҿ�ð�
	private String FNL_PORTCL_NM; //������
	private int FNL_PORTCL_REQRE_TIME; //������_�ҿ�ð�
}
