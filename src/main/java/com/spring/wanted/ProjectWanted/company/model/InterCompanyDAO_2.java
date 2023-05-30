package com.spring.wanted.ProjectWanted.company.model;

import java.util.List;
import java.util.Map;

public interface InterCompanyDAO_2 {
	
	// job_select에필요한 값 가져오기	
	List<Map<String, String>> getJobList();
	
	// job_select에 따라 해당되는 duty_select 가져오기
	List<Map<String, String>> getDutyList(String jobCode);

}
