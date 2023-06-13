package com.spring.wanted.ProjectWanted.common.model;

import java.util.List;
import java.util.Map;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;

public interface InterCommonDAO {

	List<Map<String, String>> getSkill();

	List<Map<String, String>> searchSkill(String input_val);

	int checkUserid(String userid);

	void register_comp(CompanyVO cvo); 

}
