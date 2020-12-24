package com.blueOcean.inf.dto;

import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ResDto<T> {
	private int rtnCd;
	private String rtnMsg;
	private T rtnObj;
	private List<T> rtnList;
}