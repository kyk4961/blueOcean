package com.blueOcean.inf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blueOcean.inf.dto.IhpmrwdDto;
import com.blueOcean.inf.dto.PagingDto;
import com.blueOcean.inf.service.IhpmrwdService;

@Controller
public class IhpmrwdController {

	@Autowired
	private IhpmrwdService ihpmrwdService;

	@RequestMapping(value = "/ihpmrwdList")
	public String ihpmrwdList(Model model, @RequestParam(defaultValue = "1") int page) throws Exception {
		PagingDto paging = new PagingDto();
		int totalCount = ihpmrwdService.selectIhpmrwdCnt();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		List<IhpmrwdDto> list = ihpmrwdService.selectIhpmrwdListPage(paging);

		model.addAttribute("paging", paging);
		model.addAttribute("list", list);

		return "page/ihpmrwdList";
	}
}