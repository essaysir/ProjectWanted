package com.spring.wanted.ProjectWanted.common.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.spring.wanted.ProjectWanted.common.model.InterCommonDAO;

@Service
public class CommonService implements InterCommonService {
	
	private final InterCommonDAO cdao ;

	@Autowired
	public CommonService ( InterCommonDAO cdao) {
		this.cdao = cdao ;
	}
	
	@Override
	public String getSkill() {
		List<Map<String,String>> skillList = cdao.getSkill();
		Gson gson = new Gson();
		String json = gson.toJson(skillList);
		
		return json;
	}

	@Override
	public String searchSkill(String input_val) {
		List<Map<String,String>> skillList = cdao.searchSkill(input_val);
		Gson gson = new Gson();
		String json = gson.toJson(skillList);
		
		return json;
	}

	@Override
	public String checkUserid(String userid) {
		int n = cdao.checkUserid(userid);
		if ( n == 1 ) {
			return  "tiles2/company/content/company_loginpassword" ;
		}
		else {
			return "tiles2/company/content/company_signup"; 
		}
	}

}
