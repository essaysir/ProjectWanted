package com.spring.wanted.ProjectWanted.company.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InterCompanyMapper_2 {

	List<String> getJobList();

}
