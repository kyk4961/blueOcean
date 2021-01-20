<%@ page language="java" contentType="application/vnd.ms-excel; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

	response.setHeader("Content-Disposition", "attachment; filename=" + new String(("내항여객선항로조석데이터").getBytes("KSC5601"),"8859_1") + ".xls");
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
											<th>관할지사<br>명칭
											</th>
											<th>항로명칭</th>
											<th>항로구간<br>순번
											</th>
											<th>항로구간명</th>
											<th>조석기항지<br>순번
											</th>
											<th>조석기항지<br>명칭
											</th>
											<th>조석<br>삭망
											</th>
											<th>조석<br>양현
											</th>
											<th>조석<br>평균항
											</th>
											<th>조석<br>조시차
											</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${i.index+1}</td>
												<td>${list.CMPTNC_BROFFI_NM}</td>
												<td>${list.RUTE_NM}</td>
												<td>${list.RUTE_SCTN_NO}</td>
												<td>${list.TIDE_PORTCL_NO}</td>
												<td>${list.TIDE_PORTCL_NM}</td>
												<td>${list.TIDE_SYNDC}</td>
												<td>${list.TIDE_FLQM}</td>
												<td>${list.TIDE_STRD_PORTCL}</td>
												<td>${list.TIDE_TIME_DIFF}</td>
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