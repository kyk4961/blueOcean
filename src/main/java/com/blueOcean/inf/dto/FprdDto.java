package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class FprdDto{
	/* 3_�_�˻�_��û_���� */
	private int IDX; //�Ϸù�ȣ
	private int ACCT_YEAR; //�����⵵
	private int ACCT_NO; //������ȣ
	private String ACCT_DATE; //������¥
	private String SHIP_KIND; //�˻�����
	private String OFFICE_GUBUN; //�˻�����
	private String ACCT_GUBUN; //�������
}
