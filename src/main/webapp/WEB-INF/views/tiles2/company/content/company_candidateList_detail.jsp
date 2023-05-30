<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty candidateList}">
	<c:forEach items="${candidateList}" var="candidateList">
		<tr style="height: 80px; text-align: center;">
			<td class="formList" style="width: 28%;">[&nbsp;${candidateList.post_subject}&nbsp;]</td>
			<td class="formList" style="width: 10%;">${candidateList.name}</td>
			<td class="formList" style="width: 27%;">${candidateList.resume_subject}</td>
			<td class="formList" style="width: 10%;">${candidateList.applydate}</td>
			<c:choose>
				<c:when test="${candidateList.status eq '합격'}">
					<td class="formList" style="color:blue; font-size:15pt; width:15%;">${candidateList.status}</td>
				</c:when>	
				<c:when test="${candidateList.status eq '불합격'}">
					<td class="formList" style="color:red; font-size:15pt; width:15%;">${candidateList.status}</td>
				</c:when>	
				<c:otherwise>
					<td class="formList" style="color:black; font-size:15pt; width:15%;">${candidateList.status}</td>
				</c:otherwise>
			</c:choose>
		</tr>
	</c:forEach>
</c:if>

<c:if test="${empty candidateList}">
	<tr style="height: 80px; text-align: center;">
		<td class="formList" colspan="5">지원자 목록이 없습니다.</td>
	</tr>	
</c:if>


