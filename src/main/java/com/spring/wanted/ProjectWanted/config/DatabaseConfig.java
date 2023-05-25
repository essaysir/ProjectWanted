package com.spring.wanted.ProjectWanted.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
public class DatabaseConfig {
	
	@Bean
	public SqlSessionFactory sqlsession(DataSource ds) throws Exception{
		SqlSessionFactoryBean sqlsession = new SqlSessionFactoryBean();
		sqlsession.setDataSource(ds);
		sqlsession.setMapperLocations(
				new PathMatchingResourcePatternResolver().getResources("classpath:/mapper/*.xml"));
		return (SqlSessionFactory)sqlsession.getObject();
	}

	
}
