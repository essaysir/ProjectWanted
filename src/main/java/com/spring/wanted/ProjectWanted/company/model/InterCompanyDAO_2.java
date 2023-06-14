package com.spring.wanted.ProjectWanted.company.model;

import java.util.List;
import java.util.Map;

import com.spring.wanted.ProjectWanted.post.model.PostVO;
import com.spring.wanted.ProjectWanted.company.model.CompanyVO;

public interface InterCompanyDAO_2 {
	
	// job_select에필요한 값 가져오기	
	List<Map<String, String>> getJobList();
	
	// job_select에 따라 해당되는 duty_select 가져오기
	List<Map<String, String>> getDutyList(String jobCode);
	
	// TBL_POST에 등록하기
	void insertRecruit(PostVO postvo);
	void insertRecruitSkil(PostVO postvo, List<String> techcode);
	
	// 채용공고관리페이지 띄우기
	int getTotalPost(String company_id);
	
	//ajax로 Post호출하기
	List<Map<String, String>> getPost(Map<String, String> paraMap);
	
	//ajax로 수정페이지 띄우기
	List<Map<String, String>> getEditRecruit(String post_code);
	
	// 수정한거 등록하기
	void updateRecruit(PostVO postvo);
	
	// 기간만료 공고 삭제하기 
	int deleteRecruit(String post_code, Map<String, String> paraMap);
	
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
	
	// 공고삭제를위한 하나의 공고 가져오기
	PostVO getOneRecruit(String post_code);

	//멤버 정보가져오기
	List<Map<String, String>> getCompanyInfo(String company_id);

	//이름 업데이트하기
	int nameUpdate(Map<String, String> paraMap);
	
	//이름 업데이트하기
	int nickUpdate(Map<String, String> paraMap);
	
	//패스워드가져오기
	String getPasswd(String company_id);
	
	//패스워드 업데이트하기
	int passwdUpdate(Map<String, String> paraMap);
	
	// 프로필사진업데이트하기
	int profileImageUpdate(CompanyVO companyvo);
	
	// 원래프로필이미지 가져오기
	CompanyVO getCompanyImage(String company_id);
	
	// 회원탈퇴하기
	int companyExit(String company_id);
	
	// 회사상세이미지 업로드
	int companyDetailImageUpload(Map<String, String> paraMap);
	
	// 회사상세테이블에 존재하는지, 
	int countDetailImage(String company_id);
	
	// 존재한다면 그 이미지들 이름가져오기
	List<String> getDetailImageName(String company_id);
	
	// 회사상세테이블에 존재하는 모든것 지우기
	void deleteCompanyImage(String company_id);

	

	
	

}
