package com.spring.wanted.ProjectWanted.company.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.spring.wanted.ProjectWanted.company.mapper.InterCompanyMapper_1;
import com.spring.wanted.ProjectWanted.member.model.CareerVO;
import com.spring.wanted.ProjectWanted.member.model.LanguageVO;
import com.spring.wanted.ProjectWanted.member.model.MemberTechVO;
import com.spring.wanted.ProjectWanted.member.model.PerformanceVO;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;
import com.spring.wanted.ProjectWanted.member.model.RewardVO;
import com.spring.wanted.ProjectWanted.member.model.SchoolVO;

@Component
@Repository
public class CompanyDAO_1 implements InterCompanyDAO_1 {
	
	private final InterCompanyMapper_1 mapper;
	
	@Autowired
	public CompanyDAO_1(InterCompanyMapper_1 mapper) {
		this.mapper = mapper;
	}

	
	// 회사 지원자List 불러오기
	@Override
	public List<Map<String, String>> getcandidateList(Map<String, String> paraMap) {
		List<Map<String, String>> candidateList = mapper.getcandidateList(paraMap);
		return candidateList;
	}

	
	// 지원자List 페이징 위한
	@Override
	public int getTotalCount(Map<String, String> paraMap) {
		int n = mapper.getTotalCount(paraMap);
		return n;
	}
	
	
	// 검색
	@Override
	public List<Map<String, String>> listSearchWithPaging(Map<String, String> paraMap) {
		List<Map<String, String>> candidateList = mapper.listSearchWithPaging(paraMap);
		return candidateList;
	}
	
	
	@Override
	public List<Map<String, String>> wordList(Map<String, String> paraMap) {
		List<Map<String, String>> wordSearchShow = mapper.wordList(paraMap);
		return wordSearchShow;
	}


	// 지원자 이력서 데이터 가져오기
	@Override
	@Transactional
	public List<ResumeVO> resumeContent() {
		// TODO Auto-generated method stub
		return null;
	}

/*	
	// 지원자 이력서 데이터 가져오기
	@Override
	@Transactional
	public int getApplyResume(ResumeVO resumevo) {
		
		int n = 1;
		
		try {
	        n = mapper.getApplyResume(resumevo); // 이력서 작성 페이지에서 입력 받은 데이터 insert 해주기

	        if (n == 1) {
	            // 어학
	            if (resumevo.getLanguagevoList() != null && !resumevo.getLanguagevoList().isEmpty()) {
	                for (LanguageVO languageVO : resumevo.getLanguagevoList()) {
	                    languageVO.setFk_Resume_code(resumevo.getResume_code());
	                    mapper.getLanguage(languageVO);
	                }
	            }

	            // 수상
	            if (resumevo.getRewardvoList() != null && !resumevo.getRewardvoList().isEmpty()) {
	                for (RewardVO rewardVO : resumevo.getRewardvoList()) {
	                    rewardVO.setFk_resume_code(resumevo.getResume_code());
	                    mapper.getReward(rewardVO);
	                }
	            }

	            // 학력
	            if (resumevo.getSchoolvoList() != null && !resumevo.getSchoolvoList().isEmpty()) {
	                for (SchoolVO schoolVO : resumevo.getSchoolvoList()) {
	                    schoolVO.setFk_resume_code(resumevo.getResume_code());
	                    mapper.getSchool(schoolVO);
	                }
	            }

	            // 경력
	            if (resumevo.getCareervoList() != null && !resumevo.getCareervoList().isEmpty()) {
	                for (CareerVO careerVO : resumevo.getCareervoList()) {
	                    careerVO.setFk_resume_code(resumevo.getResume_code());
	                    
	                    mapper.getCareer(careerVO);
	                    
	                    if( careerVO.getPerformancevoList() != null && !careerVO.getPerformancevoList().isEmpty() ) {
	                    	for( PerformanceVO performancevo : careerVO.getPerformancevoList()) {
	                    		performancevo.setFk_career_code(careerVO.getCareer_code());
	                    		mapper.getPerformance(performancevo);
	                    	}// end of or( PerformanceVO pvo : careerVO.getPerformancevoList())----------------------
	                    }// end of if( careerVO.getPerformancevoList() != null && !careerVO.gtPerformancevoList().isEmpty() )
	                }// end of for (CareerVO careerVO : resumevo.getCareervoList())
	            }// end of if (resumevo.getCareervoList() != null && !resumevo.getCareervoList().isEmpty())--------------------

	            // MemberTech 
	            if (resumevo.getMember_techvoList() != null && !resumevo.getMember_techvoList().isEmpty()) {
	                for (MemberTechVO memberTechVO : resumevo.getMember_techvoList()) {
	                    memberTechVO.setFk_resume_code(resumevo.getResume_code());
	                    mapper.getMemberTech(memberTechVO);
	                }
	            }

	        }
	    } catch (Exception e) {
	    	e.printStackTrace();
	        TransactionAspectSupport.currentTransactionStatus().setRollbackOnly(); // 트랜잭션 내에서 예외가 발생하면 데이터 일관성을 유지하기 위해 롤백 처리를 수행
	        n = 0; // 실패 시 0으로 설정
	    }
		return n;
	}
*/	


/*
	// 지원자 이력서 데이터 가져오기
	@Override
	public List<ResumeVO> resumeContent() {
		List<ResumeVO> resumeContent = mapper.getApplyResume();
		return resumeContent;
	}
*/



	



	


	

}
