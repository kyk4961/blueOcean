package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class FmdDto{
	/* 4_�_����_������ */
	private int IDX; //�Ϸù�ȣ
	private String APPL_GUBUN; //��û����
	private String REG_PORT; //������
	private String SHIP_GUBUN; //��������
	private String NATURE; //����
	private String SBUILDER_ADD; //������
	private String LAUNCH_DATE; //������
	private float GROSS_TONNAGE; //�����
	private float MEASURED_LEN; //Lt
	private float MEASURED_BREAD; //Bt
	private float MEASURED_DPTM; //Dm
	private float MEASURED_DPTS; //Ds
	private float MEASURED_CTR; //C
	private float MEASURE_LEN; //LOA
	private float TOT_BULK; //����������հ����
	private float TOT_DN_BULK; //���ǾƷ��ǿ���
	private float TOT_UP_BULK; //�������հ����
	private float EXPT_TOT_BULK; //��������հ����
}
