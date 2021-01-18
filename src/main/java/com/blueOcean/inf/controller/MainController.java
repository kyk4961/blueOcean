package com.blueOcean.inf.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.blueOcean.inf.service.UploadService;

@Controller
public class MainController {
	
	@Autowired
	private UploadService uploadService;
	
	@RequestMapping(value="/")
	public String main(HttpServletRequest request) throws Exception {
		return "redirect:/ptfi1List";
	}
	
	@RequestMapping(value="/excel/upload", method = RequestMethod.POST)
	public String excelUpload(HttpServletRequest request, @RequestParam("file") MultipartFile file, @RequestParam("excelType") String excelType) throws IOException {
		uploadService.importExcelData(file, excelType);
		String referer = request.getHeader("referer");
		return "redirect:" + referer;
	}
	
	@RequestMapping(value="/dataClear", method = RequestMethod.POST)
	public String dataClear(HttpServletRequest request, @RequestParam("excelType") String excelType) throws IOException {
		uploadService.dataClear(excelType);
		String referer = request.getHeader("referer");
		return "redirect:" + referer;
	}
	
	@RequestMapping(value = "/imgList")
	public String ihpmncdList() throws Exception {
		return "page/imageList";
	}
	
	@RequestMapping(value="/image/upload", method = RequestMethod.POST)
	public String imageUpload(HttpServletRequest request, @RequestParam("file") List<MultipartFile> files, @RequestParam("excelType") String excelType) throws IOException {
		uploadService.imageUpload(files, excelType);
		String referer = request.getHeader("referer");
		return "redirect:" + referer;
	}
}