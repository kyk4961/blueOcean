<%@ page language="java" contentType="application/vnd.ms-excel; charset=UTF-8" 
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

	response.setHeader("Content-Disposition", "attachment; filename=" + new String(("내항여객선월별운항통제데이터").getBytes("KSC5601"),"8859_1") + ".xls");
	response.setHeader("Content-Description", "JSP Generated Data"); 
	response.setContentType("application/vnd.ms-excel;charset=UTF-8");

%>
<!DOCTYPE html>
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
											<th>연도</th>
											<th>월</th>
											<th>관할지사<br>명칭
											</th>
											<th>항로<br>순번
											</th>
											<th>항로<br>명칭
											</th>
											<th>통제일수<br>태풍
											</th>
											<th>통제일수<br>풍랑경보
											</th>
											<th>통제일수<br>풍랑주의보
											</th>
											<th>통제일수<br>기상악화
											</th>
											<th>통제일수<br>안개
											</th>
											<th>통제일수<br>기타
											</th>
											<th>휴항일수<br>선박검사
											</th>
											<th>휴항일수<br>선박정비
											</th>
											<th>휴항일수<br>기타
											</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${i.index+1}</td>
												<td>${list.YYYY}</td>
												<td>${list.MM}</td>
												<td>${list.CMPTNC_BROFFI_NM}</td>
												<td>${list.RUTE_NO}</td>
												<td>${list.RUTE_NM}</td>
												<td>${list.CTRL_TYPHOON}</td>
												<td>${list.CTRL_WDWV_WARN}</td>
												<td>${list.CTRL_WDWV_ADV}</td>
												<td>${list.CRTL_DTRT_WR}</td>
												<td>${list.CTRL_RSTC_VISIBIL}</td>
												<td>${list.CTRL_ETC}</td>
												<td>${list.NNAVI_ISPT}</td>
												<td>${list.NNAVI_IMPRMN}</td>
												<td>${list.NNAVI_ETC}</td>
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