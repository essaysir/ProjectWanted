package com.spring.wanted.ProjectWanted.post.model;

import java.util.List;

import lombok.Data;

@Data
public class PostVO {
	
	private String post_code;
	private	String fk_company_id;
	private String fk_duty_code;
	private String subject;
	private String career;
	private String info;
	private String mainduty;
	private String quality;
	private String image;
	private String salary;
	private String createday;
	private String deadline;
	private	String viewcount;
	private String pay_status;
	
	private List<String> techcode ;
	
}
