package com.spring.wanted.ProjectWanted.post.model;

import java.util.List;

import lombok.Data;

@Data
public class FilterData {
	/* private int job_code; */
	private List<String> job_code;
    private List<String> duty_code;
    private List<String> region_detail_code;
    private List<String> career;
    private List<String> tech_code;
    private List<String> tag_name;
    
}
