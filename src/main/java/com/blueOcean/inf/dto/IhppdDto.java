package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class IhppdDto{
	/* 9_����_������_������_������ */
	private int IDX; //�Ϸù�ȣ
	private String RUTE_NM; //�׷θ�Ī
	private String PORTCL_NO; //������_����
	private String PORTCL_NM; //��������
	private String PORTCL_BERTH_NO; //������_���Ƚü�_����
	private String PORTCL_BERTH_PHOTO; //���Ƚü�����
	private String PORTCL_BERTH_KND; //���Ƚü�����
	private int BERTH_LT; //���Ƚü��Ը�_����
	private int BERTH_BT; //���Ƚü��Ը�_�ʺ�
	private int BERTH_HG; //���Ƚü��Ը�_����
	private int BERTH_HDG; //���ȼ�������
	private String RESIDE_AT; //���ֱ���
	private int RESIDE_POPLTN_CO; //�����α�
	private String CNVNC_FCLTY_PHOTO; //���ǽü�_����_���ϸ�
	private String CNVNC_FCLTY_KND; //���ǽü�_����
	private int CNVNC_FCLTY_NMPR_CO; //���ǽü�_�����ο�
	private String BKOFF_AT; //��ǥ������
	private String OP_DATE; //������
	private String SLNETR_PSNSHP_NO; //����_������_����
	private String SLNETR_PSNSHP_NM; //����_������_��Ī
}
