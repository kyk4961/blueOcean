<%@ page language="java" contentType="application/vnd.ms-excel; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

	response.setHeader("Content-Disposition", "attachment; filename=" + new String(("내항여객선운항데이터").getBytes("KSC5601"),"8859_1") + ".xls");
	response.setHeader("Content-Description", "JSP Generated Data"); 
	response.setContentType("application/vnd.ms-excel;charset=UTF-8");

%><!DOCTYPE html>
<html>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			
			<!--/span-->
			<div class="span10" id="content">
				<div class="row-fluid">
					<!-- block -->
					<div class="block">
						<div class="block-content collapse in" style="overflow-x: scroll;">
							<div class="" style="width: max-content;">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>순번</th>
											<th>관할지사<br>명칭</th>
											<th>항로명칭</th>
											<th>운항여객선<br>순번</th>
											<th>운항여객선<br>명칭</th>
											<th>항해구역</th>
											<th>총톤수</th>
											<th>여객정원</th>
											<th>승무정원</th>
											<th>차량적재대수</th>
											<th>선종</th>
											<th>하계<br>일일운항횟수</th>
											<th>동계<br>일일운항횟수</th>
											<th>속력(노트)</th>
											<th>운항거리(마일)</th>
											<th>소요시간(분)</th>
											<th>기관1개당<br>추진력</th>
											<th>기관개수</th>
											<th>선박건조<br>년</th>
											<th>선박건조<br>월</th>
											<th>선박건조<br>일</th>
											<th>선사명</th>
											<th>여객선사진<br>순번</th>
											<th>여객선사진<br>파일명</th>
											<th>최초출항지<br>명칭</th>
											<th>중간기항지<br>순번</th>
											<th>중간기항지<br>명칭</th>
											<th>중간기항지<br>소요시간</th>
											<th>종점지</th>
											<th>종점지<br>소요시간</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${i.index+1}</td>
												<td>${list.CMPTNC_BROFFI_CODE}</td>
												<td>${list.RUTE_NM}</td>
												<td>${list.PSNSHP_NO}</td>
												<td>${list.PSNSHP_NM}</td>
												<td>${list.NVGT_ZONE_NM}</td>
												<td>${list.PSNSHP_GT}</td>
												<td>${list.PASNGR_PCAPA_CO}</td>
												<td>${list.LOADING_CREW_CO}</td>
												<td>${list.CAR_LOADNG_ABLTY_CO}</td>
												<td>${list.KDSHIP_NM}</td>
												<td>${list.SMR_NVG_CO}</td>
												<td>${list.WTR_NVG_CO}</td>
												<td>${list.VOYAGE_VE_NOTE}</td>
												<td>${list.RUTE_DSTNC}</td>
												<td>${list.REQRE_TIME}</td>
												<td>${list.MENGN_KW_OUTPT_PER_1SET}</td>
												<td>${list.MENGN_CO}</td>
												<td>${list.CNSTR_YEAR}</td>
												<td>${list.CNSTR_MONTH}</td>
												<td>${list.CNSTR_DAY}</td>
												<td>${list.SHPCPN_NM}</td>
												<td>${list.PSNSHP_PHOTO_NO}</td>
												<td>${list.PSNSHP_PHOTO_NM}</td>
												<td>${list.FRST_OPORT_PRT_NM}</td>
												<td>${list.MID_PORTCL_NO}</td>
												<td>${list.MID_PORTCL_NM}</td>
												<td>${list.MID_PORTCL_REQRE_TIME}</td>
												<td>${list.FNL_PORTCL_NM}</td>
												<td>${list.FNL_PORTCL_REQRE_TIME}</td>
											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
						
					</div>
					<!-- /block -->
				</div>
			</div>
		</div>
		<hr>
	</div>
	
</body>
</html>