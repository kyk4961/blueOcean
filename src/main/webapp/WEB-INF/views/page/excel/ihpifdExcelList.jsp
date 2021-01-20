<%@ page language="java" contentType="application/vnd.ms-excel; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

	response.setHeader("Content-Disposition", "attachment; filename=" + new String(("내항여객선항로위해요소데이터").getBytes("KSC5601"),"8859_1") + ".xls");
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
											<th>항로명칭</th>
											<th>위해요소<br>순번
											</th>
											<th>위해요소<br>종류
											</th>
											<th>위해요소<br>위도
											</th>
											<th>위해요소<br>경도
											</th>
											<th>위해요소<br>위치상세
											</th>
											<th>위해요소<br>내용
											</th>
											<th>위해요소<br>사진파일명
											</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${i.index+1}</td>
												<td>${list.RUTE_NM}</td>
												<td>${list.RISK_FCTR_NO}</td>
												<td>${list.RISK_FCTR_KND_CODE}</td>
												<td>${list.RISK_FCTR_LAT}</td>
												<td>${list.RISK_FCTR_LONG}</td>
												<td>${list.RISK_FCTR_POSC_DTL}</td>
												<td>${list.RISK_FCTR_CN}</td>
												<td>${list.RISK_FCTR_PHOTO}</td>
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