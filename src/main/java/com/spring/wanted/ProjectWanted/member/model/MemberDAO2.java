package com.spring.wanted.ProjectWanted.member.model;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.spring.wanted.ProjectWanted.company.mapper.InterCompanyMapper_2;
import com.spring.wanted.ProjectWanted.member.mapper.InterMemberMapper2;

@Component
@Repository
public class MemberDAO2 implements InterMemberDAO2 {

	private final InterMemberMapper2 mapper2;
	
	@Autowired
	public MemberDAO2(InterMemberMapper2 mapper2) {
		this.mapper2 = mapper2;
	}

	// 이력서작성 페이지에서 입력 받은 데이터 insert 해주기
	@Override
	@Transactional(propagation=Propagation.REQUIRED, isolation=Isolation.READ_COMMITTED, rollbackFor= {Throwable.class})
	public int insertResume(ResumeVO resumevo) {
		
		int n = 
		
		mapper2.insertResume(resumevo);
		
		
		return 0;
		
		
		
		// ResumeVO에서 데이터 받아오기
//		resumevo.getResume_Code();
//		resumevo.getFk_UserId();
//		resumevo.getIsComplete();
//		resumevo.getUploadFile();
//		resumevo.getSubject();
//		resumevo.getIntroduce();
//		resumevo.getUploadLink();
//		resumevo.getSkill();
//		
//		resumevo.getLanguagevoList();
//		resumevo.getRewardvoList();
//		resumevo.getSchoolvoList();
//		resumevo.getCareervoList();
//		resumevo.getMember_TechvoList();
//		resumevo.getPerformancevoList();
//		
//		List<LanguageVO> languageList = resumevo.getLanguagevoList();
	}

	


}
