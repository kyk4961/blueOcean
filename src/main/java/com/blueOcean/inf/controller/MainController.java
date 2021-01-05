package com.blueOcean.inf.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.blueOcean.inf.service.ExcelService;

@Controller
public class MainController {
	
	@Autowired
	private ExcelService excelService;
	
	@RequestMapping(value="/")
	public String main(HttpServletRequest request) throws Exception {
		return "redirect:/ptfiList";
	}
	
	@RequestMapping(value="/excel/upload", method = RequestMethod.POST)
	public String excelUpload(HttpServletRequest request, @RequestParam("file") MultipartFile file, @RequestParam("excelType") String excelType) throws IOException {
		excelService.importExcelData(file, excelType);
		String referer = request.getHeader("referer");
		return "redirect:" + referer;
	}
}