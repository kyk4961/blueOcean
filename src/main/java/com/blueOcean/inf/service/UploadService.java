package com.blueOcean.inf.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FilenameUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UploadService {

	@Autowired
	protected SqlSessionTemplate dao;
	
	public void importExcelData(MultipartFile file, String excelType) throws IOException {
		String extension = FilenameUtils.getExtension(file.getOriginalFilename());

	    if (!extension.equals("xlsx") && !extension.equals("xls")) {
	      throw new IOException("엑셀파일만 업로드 해주세요.");
	    }
	    
	    Workbook workbook = null;
	    
	    // Excel 버전 체크
	    if (extension.equals("xlsx")) {
	      workbook = new XSSFWorkbook(file.getInputStream());
	    } else if (extension.equals("xls")) {
	      workbook = new HSSFWorkbook(file.getInputStream());
	    }
	    
	    Sheet worksheet = workbook.getSheetAt(0);
	    
	    // null 예외 처리용 String List
	    List<String> exceptionStr = new ArrayList<>();
	    exceptionStr.add("");
	    exceptionStr.add("-");
	    exceptionStr.add("?");
	    
	    // 최상위 ROW - 컬럼명 추출
	    Row headerRow = worksheet.getRow(0);
	    List<String> columnList = new ArrayList<>();
	    for (int j=0; j<headerRow.getPhysicalNumberOfCells(); j++) {
	    	if (headerRow.getCell(j) != null && !exceptionStr.contains(headerRow.getCell(j).toString()) ) {
	    		columnList.add(headerRow.getCell(j).toString());
	    	}
	    }
	    
	    // 세번째 ROW부터 데이터 추출하여, Key - Value 형태로 값 담기
	    Map<String, Object> map = new HashMap<>();
	    List<Map<String, String>> importMapList = new ArrayList<>();
	    int startNum = 1;
	    if(excelType.equals("fehd") || 
    		excelType.equals("fmd") ||
    		excelType.equals("fprd") ||
    		excelType.equals("ptfi1") ||
    		excelType.equals("ptfi2") ||
    		excelType.equals("stpd")) {
	    	startNum = 1;
	    } else {
	    	startNum = 2;
	    }
	    for (int i=startNum; i<worksheet.getPhysicalNumberOfRows(); i++) {
	      boolean isData = false;
	      Row row = worksheet.getRow(i);
	      
	      Map<String, String> importMap = new HashMap<>();
	      for (int j=0; j<columnList.size(); j++) {
	    	  if (row.getCell(j) == null || exceptionStr.contains(row.getCell(j).toString()) ) {
	    		  importMap.put(columnList.get(j), null);
	    	  } else {
	    		  isData = true;
	    		  importMap.put(columnList.get(j), row.getCell(j).toString());
	    	  }
	      }
	      
	      // ROW가 전체 null값일 경우, import 제외
	      if (isData) {
	    	  importMapList.add(importMap);
	      }
	    }
	    
	    map.put("list", importMapList);

	    switch(excelType) {
		    case "fehd": // 어선 기관 마력 데이터
		    	dao.insert("fehdMapper.insertFehd", map);
		        break;
		    case "fmd": // 어선 측정 데이터
		    	dao.insert("fmdMapper.insertFmd", map);
		        break;
		    case "fprd": // 어선 검사 신청 내역
		    	dao.insert("fprdMapper.insertFprd", map);
		        break;
		    case "ihpifd": // 내항 여객선 항로 위해요소 데이터
		    	dao.insert("ihpifdMapper.insertIhpifd", map);
		        break;
		    case "ihpmncd": // 내항 여객선 월별 운항통제 데이터
		    	dao.insert("ihpmncdMapper.insertIhpmncd", map);
		        break;
		    case "ihpnd": // 내항 여객선 운항 데이터
		    	dao.insert("ihpndMapper.insertIhpnd", map);
		        break;
		    case "ihppd": // 내항 여객선 기항지 데이터
		    	dao.insert("ihppdMapper.insertIhppd", map);
		        break;
		    case "ihprd1": // 내항 여객선 항로 조류 데이터
		    	dao.insert("ihprdMapper.insertIhprd1", map);
		        break;
		    case "ihprd2": // 내항 여객선 항로 조석 데이터
		    	dao.insert("ihprdMapper.insertIhprd2", map);
		        break;
		    case "ihprd3": // 내항 여객선 항로 통항선박 데이터
		    	dao.insert("ihprdMapper.insertIhprd3", map);
		        break;
		    case "ptfi1": // 검사 대상 어선 정보
		    	dao.insert("ptfiMapper.insertPtfi1", map);
		        break;
		    case "ptfi2": // 검사 대상 어선 정보
		    	dao.insert("ptfiMapper.insertPtfi2", map);
		        break;
		    case "stpd": // 선박 물건 검사 내역
		    	dao.insert("stpdMapper.insertStpd", map);
		        break;
		    default:
		    	throw new IOException("올바르지 않은 유형입니다.");
	    }
	    
	}

	public void imageUpload(List<MultipartFile> files, String excelType) {
		try{
	        for(int i=0;i<files.size();i++){
	            files.get(i).transferTo(new File("C:\\data\\image\\"+files.get(i).getOriginalFilename()));
	        }
	    }catch (IllegalStateException | IOException e){
	        e.printStackTrace();
	    }
		
	}

	public void dataClear(String excelType) throws IOException{
		switch(excelType) {
	    case "fehd": // 어선 기관 마력 데이터
	    	dao.insert("fehdMapper.deleteFehd");
	        break;
	    case "fmd": // 어선 측정 데이터
	    	dao.insert("fmdMapper.deleteFmd");
	        break;
	    case "fprd": // 어선 검사 신청 내역
	    	dao.insert("fprdMapper.deleteFprd");
	        break;
	    case "ihpifd": // 내항 여객선 항로 위해요소 데이터
	    	dao.insert("ihpifdMapper.deleteIhpifd");
	        break;
	    case "ihpmncd": // 내항 여객선 월별 운항통제 데이터
	    	dao.insert("ihpmncdMapper.deleteIhpmncd");
	        break;
	    case "ihpnd": // 내항 여객선 운항 데이터
	    	dao.insert("ihpndMapper.deleteIhpnd");
	        break;
	    case "ihppd": // 내항 여객선 기항지 데이터
	    	dao.insert("ihppdMapper.deleteIhppd");
	        break;
	    case "ihprd1": // 내항 여객선 항로 데이터
	    	dao.insert("ihprdMapper.deleteIhprd1");
	        break;
	    case "ihprd2": // 내항 여객선 항로 데이터
	    	dao.insert("ihprdMapper.deleteIhprd2");
	        break;
	    case "ihprd3": // 내항 여객선 항로 데이터
	    	dao.insert("ihprdMapper.deleteIhprd3");
	        break;
	    case "ptfi1": // 검사 대상 어선 정보
	    	dao.insert("ptfiMapper.deletePtfi1");
	        break;
	    case "ptfi2": // 검사 대상 어선 정보
	    	dao.insert("ptfiMapper.deletePtfi2");
	        break;
	    case "stpd": // 선박 물건 검사 내역
	    	dao.insert("stpdMapper.deleteStpd");
	        break;
	    default:
	    	throw new IOException("올바르지 않은 유형입니다.");
    }
	}
	
}
