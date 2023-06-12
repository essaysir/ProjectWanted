package com.spring.wanted.ProjectWanted.member.model;

import lombok.Data;

@Data
public class MemberTechVO {

	private int member_Tech_Code;
    private int fk_Tech_Code;
    private String fk_UserId;
    private int resume_Code;
}
