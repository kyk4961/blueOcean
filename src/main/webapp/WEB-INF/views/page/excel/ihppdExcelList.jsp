<%@ page language="java" contentType="application/vnd.ms-excel; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

	response.setHeader("Content-Disposition", "attachment; filename=" + new String(("내항여객선기항지데이터").getBytes("KSC5601"),"8859_1") + ".xls");
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
											<th>항로명칭</th>
											<th>기항지<br>순번
											</th>
											<th>기항지명</th>
											<th>기항지<br>접안시설순번
											</th>
											<th>접안시설사진</th>
											<th>접안시설구분</th>
											<th>접안시설규모<br>길이
											</th>
											<th>접안시설규모<br>너비
											</th>
											<th>접안시설규모<br>높이
											</th>
											<th>접안선수방위</th>
											<th>거주구분</th>
											<th>거주인구</th>
											<th>편의시설<br>사진파일명
											</th>
											<th>편의시설<br>구분
											</th>
											<th>편의시설<br>수용인원
											</th>
											<th>매표소유무</th>
											<th>개관일</th>
											<th>기항여객선<br>순번
											</th>
											<th>기항여객선<br>명칭
											</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}" varStatus="i">
											<tr>
												<td>${i.index+1}</td>
												<td>${list.RUTE_NM}</td>
												<td>${list.PORTCL_NO}</td>
												<td>${list.PORTCL_NM}</td>
												<td>${list.PORTCL_BERTH_NO}</td>
												<td>${list.PORTCL_BERTH_PHOTO}</td>
												<td>${list.PORTCL_BERTH_KND}</td>
												<td>${list.BERTH_LT}</td>
												<td>${list.BERTH_BT}</td>
												<td>${list.BERTH_HG}</td>
												<td>${list.BERTH_HDG}</td>
												<td>${list.RESIDE_AT}</td>
												<td>${list.RESIDE_POPLTN_CO}</td>
												<td>${list.CNVNC_FCLTY_PHOTO}</td>
												<td>${list.CNVNC_FCLTY_KND}</td>
												<td>${list.CNVNC_FCLTY_NMPR_CO}</td>
												<td>${list.BKOFF_AT}</td>
												<td>${list.OP_DATE}</td>
												<td>${list.SLNETR_PSNSHP_NO}</td>
												<td>${list.SLNETR_PSNSHP_NM}</td>
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