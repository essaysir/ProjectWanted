package com.spring.wanted.ProjectWanted.member.model;

import lombok.Data;

@Data
public class CareerVO {

	private int career_Code;
    private int fk_Resume_Code;
    private String company;
    private String department;
    private String content;
    private String start_Date;
    private String end_Date;
}
