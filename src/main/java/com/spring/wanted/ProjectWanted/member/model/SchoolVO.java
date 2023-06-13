package com.spring.wanted.ProjectWanted.member.model;

import lombok.Data;

@Data
public class SchoolVO {
	
    private int school_code;
    private int fk_resume_code;
    private String school;
    private String major;
    private String content;
    private String start_date;
    private String end_date;
}
