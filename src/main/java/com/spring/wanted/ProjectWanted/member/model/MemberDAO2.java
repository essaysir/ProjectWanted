package com.spring.wanted.ProjectWanted.member.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.spring.wanted.ProjectWanted.member.mapper.InterMemberMapper2;

@Component
@Repository
public class MemberDAO2 implements InterMemberDAO2 {

	private final InterMemberMapper2 mapper2;
	
	@Autowired
	public MemberDAO2(InterMemberMapper2 mapper2) {
		this.mapper2 = mapper2;
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED, isolation=Isolation.READ_COMMITTED, rollbackFor= {Throwable.class})
	public int insertResume(ResumeVO resumevo) {
			
		int n = 1;
		
		try {
	        n = mapper2.insertResume(resumevo); // 이력서 작성 페이지에서 입력 받은 데이터 insert 해주기
	        System.out.println(" 확인용 n1 :  " + n  );
	        
	        if (n == 1) {
	        	// Career 테이블에 데이터 삽입
	        	if (resumevo.getCareervoList() != null && !resumevo.getCareervoList().isEmpty()) {
	        		for (CareerVO careerVO : resumevo.getCareervoList()) {
	        			// System.out.println(" 확인용 resume_code :  " + resumevo.getResume_code());
	        			// System.out.println(" 확인용 carrerVO : " + careerVO);
	        			careerVO.setFk_resume_code(resumevo.getResume_code());
	        			
	        			n = mapper2.insertCareer(careerVO);
	        			System.out.println(" 확인용 careerCode : " + careerVO.getCareer_code());
	        			careerVO.setCareer_code(careerVO.getCareer_code());
	        			System.out.println(" 확인용 n2 :  " + n  );
	        			if ( careerVO.getPerformancevoList() != null && !careerVO.getPerformancevoList().isEmpty() ) {
	        				for ( PerformanceVO performVO : careerVO.getPerformancevoList() ) {
	        					performVO.setFk_career_code(careerVO.getCareer_code());
	        					performVO.setFk_resume_code(careerVO.getFk_resume_code());
	        					n= mapper2.insertPerformance(performVO);
	        					System.out.println(" 확인용 n3 : " + n );
	        				}
	        			}
	        			
	        		}// end of for (CareerVO careerVO : resumevo.getCareervoList())
	        	}// end of if (resumevo.getCareervoList() != null && !resumevo.getCareervoList().isEmpty())--------------------
	            
	        	// School 테이블에 데이터 삽입
	        	if (resumevo.getSchoolvoList() != null && !resumevo.getSchoolvoList().isEmpty()) {
	        		for (SchoolVO schoolVO : resumevo.getSchoolvoList()) {
	        			schoolVO.setFk_resume_code(resumevo.getResume_code());
	        			n = mapper2.insertSchool(schoolVO);
	        			System.out.println(" 확인용 n4 :  " + n  );
	        		}
	        	}
	        	// MemberTech 테이블에 데이터 삽입
	        	if (resumevo.getMember_techvoList() != null && !resumevo.getMember_techvoList().isEmpty()) {
	        		for (MemberTechVO memberTechVO : resumevo.getMember_techvoList()) {
	        			memberTechVO.setFk_resume_code(resumevo.getResume_code());
	        			memberTechVO.setFk_userid(resumevo.getFk_userid());
	        			n = mapper2.insertMemberTech(memberTechVO);
	        			System.out.println(" 확인용 n5 :  " + n  );
	        			
	        		}
	        	}
	        	// Reward 테이블에 데이터 삽입
	        	if (resumevo.getRewardvoList() != null && !resumevo.getRewardvoList().isEmpty()) {
	        		for (RewardVO rewardVO : resumevo.getRewardvoList()) {
	        			rewardVO.setFk_resume_code(resumevo.getResume_code());
	        			n = mapper2.insertReward(rewardVO);
	        			System.out.println(" 확인용 n6 :  " + n  );
	        		}
	        	}
	        	
	        	// Language 테이블에 데이터 삽입
	            if (resumevo.getLanguagevoList() != null && !resumevo.getLanguagevoList().isEmpty()) {
	                for (LanguageVO languageVO : resumevo.getLanguagevoList()) {
	                    languageVO.setFk_resume_code(resumevo.getResume_code());
	                    System.out.println( " 확인용 lang : " + languageVO.getFk_resume_code());
	                    n = mapper2.insertLanguage(languageVO);
	                    System.out.println(" 확인용 n7 :  " + n  );
	                }
	            }





	        }
	    } catch (Exception e) {
	        // 롤백 처리
	    	e.printStackTrace();
	        TransactionAspectSupport.currentTransactionStatus().setRollbackOnly(); // 트랜잭션 내에서 예외가 발생하면 데이터 일관성을 유지하기 위해 롤백 처리를 수행
	        n = 0; // 실패 시 0으로 설정
	    }
		
	    
	        
		return n;
	}

	
	


}
