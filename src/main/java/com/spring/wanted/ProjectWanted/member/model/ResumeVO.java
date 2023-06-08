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
    
    private List<CareerVO> careervo;
    private List<RewardVO> rewardvo;
    private List<SchoolVO> shoolvo;
    private List<LanguageVO> languagevo;

    
    private List<LanguageVO> languages; // Language 테이블에 대응하는 VO 리스트
    private List<RewardVO> rewards; // Reward 테이블에 대응하는 VO 리스트
    private List<SchoolVO> schools; // School 테이블에 대응하는 VO 리스트
    private List<CareerVO> careers; // Career 테이블에 대응하는 VO 리스트
    private List<MemberTechVO> member_Techs; // MemberTech 테이블에 대응하는 VO 리스트
}

