package com.spring.wanted.ProjectWanted.member.model;

import java.util.List;

import lombok.Data;

@Data
public class ResumeVO {
    
	private int resume_Code;
    private String fk_UserId;
    private int isComplete;
    private String uploadFile;
    private String subject;
    private String introduce;
    private String uploadLink;
    private String skill;

    // join insert
    
    private List<LanguageVO> languagevo; // Language 테이블에 대응하는 VO 리스트
    private List<RewardVO> rewardvo; // Reward 테이블에 대응하는 VO 리스트
    private List<SchoolVO> schoolvo; // School 테이블에 대응하는 VO 리스트
    private List<CareerVO> careervo; // Career 테이블에 대응하는 VO 리스트
    private List<MemberTechVO> member_Techvo; // MemberTech 테이블에 대응하는 VO 리스트
}

