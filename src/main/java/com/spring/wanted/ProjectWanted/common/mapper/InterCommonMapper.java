package com.spring.wanted.ProjectWanted.common.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;

@Mapper
public interface InterCommonMapper {

	List<Map<String, String>> getSkill();

	List<Map<String, String>> searchSkill(String input_val);

	int comp_checkUserid(String userid);   // 회사 아이디가 존재하는 지 알아오는 메소드

	void register_comp(CompanyVO cvo); // 회사 회원가입

	//int getRegionDetailCodeByNames(String regionName, String regionDetailName);
	// 

	int getRegionDetailCodeByNames(CompanyVO cvo);

	

}
