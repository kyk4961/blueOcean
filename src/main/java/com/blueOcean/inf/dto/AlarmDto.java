package com.blueOcean.inf.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AlarmDto{
	@ApiModelProperty(hidden=true)
	private Integer idx;
	@ApiModelProperty(value="디바이스 ID", example="7c8862dd8df81ebe")
	private String deviceId;
	@ApiModelProperty(value="알림코드", example="A001")
	private String alarmCd;
	@ApiModelProperty(value="알림메세지", example="근처에 위험지역이 있습니다.")
	private String alarmMsg;
	@ApiModelProperty(value="위도", example="37.2135165")
	private String lat;
	@ApiModelProperty(value="경도", example="127.1346352")
	private String lng;
	@ApiModelProperty(hidden=true)
	private String createDt;
}
