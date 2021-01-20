<%@ page language="java" contentType="application/vnd.ms-excel; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

	response.setHeader("Content-Disposition", "attachment; filename=" + new String(("내항여객선항로통항선박데이터").getBytes("KSC5601"),"8859_1") + ".xls");
	response.setHeader("Content-Description", "JSP Generated Data"); 
	response.setContentType("application/vnd.ms-excel;charset=UTF-8");

%><!DOCTYPE html>
<html>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			
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
											<th>관할지사<br>명칭
											</th>
											<th>항로명칭</th>
											<th>항로코드</th>
											<th>항로구간<br>순번
											</th>
											<th>항로구간명</th>
											<th>주요통항선박<br>순번
											</th>
											<th>주요통항선박<br>유형
											</th>
											<th>항로<br>사진파일명
											</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${i.index+1}</td>
												<td>${list.CMPTNC_BROFFI_NM}</td>
												<td>${list.RUTE_NM}</td>
												<td>${list.RUTE_CODE}</td>
												<td>${list.RUTE_SCTN_NO}</td>
												<td>${list.RUTE_SCTN_NM}</td>
												<td>${list.SAIL_VSL_NO}</td>
												<td>${list.SAIL_VSL_KND}</td>
												<td>${list.SAIL_VSL_PHOTO_NM}</td>
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