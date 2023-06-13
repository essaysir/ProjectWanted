package com.spring.wanted.ProjectWanted.common.service;

import java.util.List;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;

public interface InterCommonService {

			String getSkill(); // 기술스택에 들어가는 추천 기술스택

			String searchSkill(String input_val); // 기술 스택에서 검색시를 위해서 데이터 가져오기

			String checkUserid(String userid); // 회사 로그인 버전 

			void register(CompanyVO cvo); //  회사 회원가입

}
