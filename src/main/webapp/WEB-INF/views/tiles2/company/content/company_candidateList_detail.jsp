<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   



		<table class="containerTitle">

		<thead>
			<tr>
				<div style="display: flex; padding: 10px; border-top: solid 2px #ddd; width: 100%; justify-content: space-between;">
					<%-- 정렬Frm 시작 --%>
					<div class="col-auto">
					     <button class="btn btn-primary" type="button" id="defaultOpen" onclick="sortNew">지원 최신 순</button>
					     <button class="btn btn-primary" type="button" onclick="sortPast">지원 과거 순</button>
					     <button class="btn btn-primary" type="button" onclick="sortSubject">공고명 순</button>
					</div>
				    <%-- 정렬Frm 끝 --%>
					<%-- 검색 Frm 시작 --%>
					<div>
					<form name="searchFrm" style="display: flex; font-size: 13pt;">
				      <select name="searchType" id="searchType">
				         <option value="subject">공고명</option>
				         <option value="name">지원자명</option>
				      </select>
				      <input type="text" name="searchWord" id="searchWord" size="30" autocomplete="off" style="height: 35px;" /> 
				      <input type="text" style="display: none;"/>
				      <button type="button" id="search" class="btn btn-secondary btn-sm" onclick="goSearch()">검색</button>
				   </form>
				   <%-- 
				      <div id="displayList" style="border:solid 1px gray; border-top:0px; height:100px; margin-left:75px; margin-top:-1px; overflow:auto;">
   					  </div>
   					--%>  
				   </div>
				   <%-- 검색 Frm 끝 --%>
				</div>	
			</tr>
			
			<tr>
				<th class="formTitle" style="width: 28%;">공고명</th>
				<th class="formTitle" style="width: 10%;">지원자명</th>
				<th class="formTitle" style="width: 27%;">이력서</th>
				<th class="formTitle" style="width: 10%;">지원일자</th>
				<th class="formTitle" style="width: 15%;">현재상태</th>
			</tr>
</thead>
		
<tbody id="candidateList" style="font-size: 13pt;">
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

	</tbody>
		</table>	
	
	<%-- === #122. 페이지바 보여주기 === --%>  
	    <div align="center" style="border: solid 0px gray; width: 70%; margin: 20px auto; ">
			${pageBar}
	    </div>


