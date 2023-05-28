package com.spring.wanted.ProjectWanted.company.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InterCompanyMapper_2 {

	List<Map<String, String>> getJobList();

}
