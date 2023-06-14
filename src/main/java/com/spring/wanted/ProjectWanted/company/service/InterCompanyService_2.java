package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

public interface InterCompanyService_2 {
	
	// job_select에필요한 값 가져오기	
	List<Map<String, String>> getJobList();
	
	// job_select에 따라 해당되는 duty_select 가져오기
	List<Map<String, String>> getDutyList(String jobCode);
	
	// TBL_POST에 등록하기
	void insertRecruit(PostVO postvo, MultipartHttpServletRequest mrequest);
	void insertRecruitSkil(PostVO postvo, List<String> techcode, MultipartHttpServletRequest mrequest);
	
	// 채용공고관리페이지 띄우기
	int getTotalPost(String company_id);
	
	//ajax로 Post호출하기
	String getPost(Map<String, String> paraMap);
	
	//ajax로 수정페이지 띄우기
	List<Map<String, String>> getEditRecruit(String post_code);
	
	// 수정한거 등록하기
	void updateRecruit(PostVO postvo);
	
	// 기간만료 공고 삭제하기 
	int deleteRecruit(String post_code, HttpServletRequest request);
	
	// 공고 중단하기
	int stopRecruit(String post_code);
	
	//ajax로 결제 상세페이지 띄우기
	List<Map<String, String>> viewPostPayment(String post_code);
	
	//결제완료 후 pay_status update하기
	void updatePostPayment(String post_code);
	
	//ajax로 연장상세페이지 띄우기
	List<Map<String, String>> viewExtendPost(String post_code);
	
	//결제완료 후 deadline update하기
	void updateExtendPost(String post_code);
	
	// 멤버 정보가져오기
	List<Map<String, String>> getCompanyInfo(String company_id);
	
	// 이름업데이트하기
	int nameUpdate(Map<String, String> paraMap);
	
	// 닉네임업데이트하기
	int nickUpdate(Map<String, String> paraMap);
	
	//비밀번호 일치 여부
	String getPasswd(String company_id);
	
	// 패스워드 업데이트하기
	int passwdUpdate(Map<String, String> paraMap);
	
	// 프로필사진업데이트하기
	int profileImageUpdate(CompanyVO companyvo, MultipartHttpServletRequest mrequest);
	
	// 회원탈퇴처리
	int companyExit(String company_id, HttpServletRequest request);

	int companyDetailImageUpload(MultipartHttpServletRequest mrequest);

}
