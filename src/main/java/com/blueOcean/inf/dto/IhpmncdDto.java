package com.blueOcean.inf.dto;

import lombok.Data;

@Data
public class IhpmncdDto {
	/* 10_����_������_����_��������_������ */
	private int IDX; //�Ϸù�ȣ
	private String YYYY; //����
	private String MM; //��
	private String PASNGR_SAFE_CNTER; //��������_��Ī
	private String RUTE_NO; //�׷�_����
	private String RUTE_NM; //�׷�_��Ī
	private int CTRL_TYPHOON; //�����ϼ�_��ǳ
	private int CTRL_WDWV_WARN; //�����ϼ�_ǳ���溸
	private int CTRL_WDWV_ADV; //�����ϼ�_ǳ�����Ǻ�
	private int CRTL_DTRT_WR; //�����ϼ�_����ȭ
	private int CTRL_RSTC_VISIBIL; //�����ϼ�_�Ȱ�
	private int CTRL_ETC; //�����ϼ�_��Ÿ
	private int NNAVI_ISPT; //�����ϼ�_���ڰ˻�
	private int NNAVI_IMPRMN; //�����ϼ�_��������
	private int NNAVI_ETC; //�����ϼ�_��Ÿ
}
