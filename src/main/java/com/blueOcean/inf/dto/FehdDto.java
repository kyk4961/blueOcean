package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class FehdDto{
	/* 5_�_���_����_������ */
	private int IDX; //�Ϸù�ȣ
	private String MAIN_KIND; //�ֱ��
	private int MAIN_QTY; //�ֱ����
	private int MCE_KW; //������
	private int MCE_PS; //������
	private float GROSS_TONNAGE; //�����
	private String PURPOSE; //���ڿ뵵
	private String PURPOSE_GU; //���ڿ뵵����
	private String NATURE; //��ü�����ڵ�
	private String LAUNCH_DATE; //��������
}