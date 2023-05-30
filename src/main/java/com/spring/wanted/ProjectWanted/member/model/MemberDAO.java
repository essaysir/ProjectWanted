package com.spring.wanted.ProjectWanted.member.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.spring.wanted.ProjectWanted.member.mapper.InterMemberMapper;

@Component
@Repository
public class MemberDAO implements InterMemberDAO {

	@Autowired
	private InterMemberMapper mapper ;
	
	@Override
	public List<String> getJob() {
		List<String> JobList = mapper.getJob();
		
		return JobList ;
	}

	@Override
	public List<String> getDuty(String jobname) {
		List<String> dutyList = mapper.getDuty(jobname);
		return dutyList;
	}


}
