package com.spring.wanted.ProjectWanted.member.model;

import lombok.Data;

@Data
public class SchoolVO {
	
    private int school_Code;
    private int fk_Resume_Code;
    private String school;
    private String major;
    private String content;
    private String start_Date;
    private String end_Date;
}
