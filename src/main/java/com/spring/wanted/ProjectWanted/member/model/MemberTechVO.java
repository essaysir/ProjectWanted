package com.spring.wanted.ProjectWanted.member.model;

import lombok.Data;

@Data
public class MemberTechVO {

	private int member_tech_code;
    private int fk_tech_code;
    private String fk_userid;
    private int fk_resume_code;
}
