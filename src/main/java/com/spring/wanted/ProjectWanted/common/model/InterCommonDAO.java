package com.spring.wanted.ProjectWanted.common.model;

import java.util.List;
import java.util.Map;

public interface InterCommonDAO {

	List<Map<String, String>> getSkill();

	List<Map<String, String>> searchSkill(String input_val); 

}
