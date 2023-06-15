<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
$(document).ready(function(){
	alert("헤헤헤");


});

</script>
		<table class="containerTitle">

		<thead>
			<tr>
				<div id="buttonSection">
					<%-- 정렬Frm 시작 --%>
					<div class="col-auto">
					     <button class="btn btn-primary" type="button" onclick="getCandidateList(3)">채용전 지원서</button>
					</div>
				    <%-- 정렬Frm 끝 --%>
					<%-- 검색 Frm 시작 --%>
					<div>
					<form name="searchFrm" style="display: flex; font-size: 13pt;" value="${searchWord}">
					    <select name="searchType" id="searchType">
					        <option value="subject">공고명</option>
					        <option value="name">지원자명</option>
					    </select>
					    <input type="text" name="searchWord" id="searchWord" size="30" autocomplete="off" style="height: 35px;"  placeholder="검색어를 입력하세요."  value="${searchWord}"/> 
					    <input type="text" style="display: none;"/>
					    <input type="hidden" id="searchType" name="searchType" />
					    <input type="hidden" id="searchWord" name="searchWord" />
					    
 					    <button type="submit" id="search" class="btn btn-secondary btn-sm" onclick="getCandidateList(${status}, ${currentShowPageNo}, $('select#searchType').val() , $('input#searchWord').val(), ${pageNo}, ${totalPage}, ${startRno}, ${endRno})">검색</button>
					
					</form>

				    
				    <%-- 검색어 입력시 자동글 완성하기 
				    <div id="displayList" style="border:solid 1px gray; border-top:0px; height:100px; margin-left:75px; margin-top:-1px; overflow:auto;">
				    </div>
				    --%>
				   </div>
				   <%-- 검색 Frm 끝 --%>
				</div>	
			</tr>
			
			<tr style="border: solid 2px #ddd;">
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
			<td class="formList" style="width: 27%;"><a href="resume?subject=${candidateList.resume_subject}">${candidateList.resume_subject}</a></td>
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
 
	<%-- 페이지바  --%>
    <ul id="pageBar" >
		<%-- [처음][이전] btn --%>
		<li><button id="pageArrow" type="button" onclick="getCandidateList(${status},'1')"><i class="fa-solid fa-backward"></i></button></li>
		<li><button id="pageArrow" type="button" onclick="getCandidateList(${status},${pageNo-1})"><i class="fa-solid fa-play fa-flip-both"></i></button></li>

		<c:forEach var="pageNo" begin="${pageNo}" end="${totalPage}">
		  <c:choose>
		    <c:when test="${pageNo eq currentShowPageNo}">
		      <li id="pageNo" style="text-align: center;">${pageNo}</li>
		    </c:when>
		    <c:otherwise>
		      <li>
		        <button id="pageBarNo" type="button" onclick="getCandidateList(${status},${pageNo})">${pageNo}</button>
		      </li>
		    </c:otherwise>
		  </c:choose>
		  <c:set var="loop" value="${loop + 1}" />
		  <c:set var="pageNo" value="${pageNo + 1}" />
		</c:forEach>
		
		<%-- [다음][마지막] btn --%>
		<li><button id="pageArrow" type="button" onclick="getCandidateList(${status}, ${pageNo+1})"><i class="fa-solid fa-play"></i></button></li>
		<li><button id="pageArrow" type="button" onclick="getCandidateList(${status}, ${totalPage})"><i class="fa-solid fa-backward fa-rotate-180"></i></button></li>
	</ul>







