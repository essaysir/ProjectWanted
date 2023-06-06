package com.spring.wanted.ProjectWanted.common.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InterCommonMapper {

	List<Map<String, String>> getSkill();

	List<Map<String, String>> searchSkill(String input_val);

}
