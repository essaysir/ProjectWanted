package com.spring.wanted.ProjectWanted.common.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.wanted.ProjectWanted.common.mapper.InterCommonMapper;

@Repository
public class CommonDAO implements InterCommonDAO{

	private final InterCommonMapper mapper ;
	
	@Autowired
	public CommonDAO (InterCommonMapper mapper) {
		this.mapper = mapper ;
	}

	@Override
	public List<Map<String, String>> getSkill() {
		List<Map<String,String>> skillList = mapper.getSkill();

		return skillList;
	}

	@Override
	public List<Map<String, String>> searchSkill(String input_val) {
		List<Map<String,String>> skillList = mapper.searchSkill(input_val);
		
		return skillList;
	}

	@Override
	public int checkUserid(String userid) {
		int n = mapper.comp_checkUserid(userid);
		
		return n ;
	}
	
}
