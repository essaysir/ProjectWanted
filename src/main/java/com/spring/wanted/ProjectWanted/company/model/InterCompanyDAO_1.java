package com.spring.wanted.ProjectWanted.company.model;

import java.util.List;
import java.util.Map;

import com.spring.wanted.ProjectWanted.member.model.CareerVO;
import com.spring.wanted.ProjectWanted.member.model.LanguageVO;
import com.spring.wanted.ProjectWanted.member.model.MemberTechVO;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.member.model.PerformanceVO;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;
import com.spring.wanted.ProjectWanted.member.model.RewardVO;
import com.spring.wanted.ProjectWanted.member.model.SchoolVO;

public interface InterCompanyDAO_1 {

	// 회사 지원자List 불러오기
	List<Map<String, String>> getcandidateList(Map<String, String> paraMap);

	// 지원자List 페이징
	int getTotalCount(Map<String, String> paraMap);

	// 검색기능
	List<Map<String, String>> listSearchWithPaging(Map<String, String> paraMap);

	List<Map<String, String>> wordList(Map<String, String> paraMap);

	// ==== 지원자 이력서 데이터 가져오기 ==== //
	int getResumeCode(String subject);

	int getApplyCode(int resumeCode);
	
	ResumeVO getApplyResume(int resumeCode, int applyCode);

	List<CareerVO> getCareer(int resumeCode, int applyCode);

	List<LanguageVO> getLanguage(int resumeCode, int applyCode);

	List<RewardVO> getReward(int resumeCode, int applyCode);

	List<SchoolVO> getSchool(int resumeCode, int applyCode);

	List<PerformanceVO> getPerformance(int resumeCode, int applyCode);

	List<MemberTechVO> getMemberTech(int resumeCode, int applyCode);

	ApplyVO getStatus(int resumeCode, int applyCode);

	List<Map<String, String>> careerList(String jobName);

	List<Map<String, String>> postCntByjob();

	



	




	



	



	


	
	

}
