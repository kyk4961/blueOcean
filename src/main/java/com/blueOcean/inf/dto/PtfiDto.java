package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class PtfiDto{
	/* 1_�˻�_���_�_���� */
	private int IDX; //�Ϸù�ȣ
	private int SHIP_NO; //���ڹ�ȣ
	private String SHIP_GUBUN; //����(�/�Ϲݼ�)
	private float GROSS_TONNAGE; //�����
	private float REG_LENGTH; //����
	private float REG_BREADTH; //�ʺ�
	private float REG_DEPTH; //����
	private float NATURE; //����
	private String PURPOSE; //�뵵
	private String PURPOSE_GU; //���ο뵵
	private String REG_PORT; //������
}
