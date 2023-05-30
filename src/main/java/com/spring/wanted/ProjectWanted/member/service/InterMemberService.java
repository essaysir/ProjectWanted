package com.spring.wanted.ProjectWanted.member.service;

import java.util.List;

public interface InterMemberService {

	List<String> getJob(); // TBL_JOB 에서 셀렉트 해오기

    List<String> getDuty(String jobname); // TBL_DUTY 에서 전체 SELECT 해오기
}
