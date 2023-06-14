package com.spring.wanted.ProjectWanted.company.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.spring.wanted.ProjectWanted.member.model.CareerVO;
import com.spring.wanted.ProjectWanted.member.model.LanguageVO;
import com.spring.wanted.ProjectWanted.member.model.MemberTechVO;
import com.spring.wanted.ProjectWanted.member.model.PerformanceVO;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;
import com.spring.wanted.ProjectWanted.member.model.RewardVO;
import com.spring.wanted.ProjectWanted.member.model.SchoolVO;

@Mapper
public interface InterCompanyMapper_1 {
	
	// 회사 지원자List 불러오기
	List<Map<String, String>> getcandidateList(Map<String, String> paraMap);

	
	// 지원자List 페이징 위한
	int getTotalCount(Map<String, String> paraMap);


	// 검색기능
	List<Map<String, String>> listSearchWithPaging(Map<String, String> paraMap);

	List<Map<String, String>> wordList(Map<String, String> paraMap);


	// 지원자 이력서 가져오기
	int getApplyResume(ResumeVO resumevo);
	void getLanguage(LanguageVO languageVO);
	void getReward(RewardVO rewardVO);
	void getSchool(SchoolVO schoolVO);
	void getCareer(CareerVO careerVO);
	void getPerformance(PerformanceVO performancevo);
	void getMemberTech(MemberTechVO memberTechVO);


	

	
	// 지원자 이력서 가져오기
//	List<ResumeVO> getApplyResume();

	
	










	
	
	

}
