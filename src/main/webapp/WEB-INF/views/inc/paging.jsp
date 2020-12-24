<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${paging.totalCount ne '0'}">
	<div class="pagination text-center">
		<ul>
		<li><a href="javascript:goPage(${paging.firstPageNo})" >&lt;&lt;</a></li>
	    <li><a href="javascript:goPage(${paging.prevPageNo})" >&lt;</a></li>
	        <c:forEach var="i" begin="${paging.startPageNo}" end="${paging.endPageNo}" step="1">
	            <c:choose>
	                <c:when test="${i eq paging.pageNo}"><li class="active"><a href="javascript:goPage(${i})">${i}</a></li></c:when>
	                <c:otherwise><li><a href="javascript:goPage(${i})">${i}</a></li></c:otherwise>
	            </c:choose>
	        </c:forEach>
	    <li><a href="javascript:goPage(${paging.nextPageNo})" >&gt;</a></li>
	    <li><a href="javascript:goPage(${paging.finalPageNo})" >&gt;&gt;</a></li>
		</ul>
	</div>
</c:if>