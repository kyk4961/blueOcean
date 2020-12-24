package com.blueOcean.inf.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
public class MybatisConfig {
	
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
		
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
		sessionFactory.setDataSource(dataSource);
		
		PathMatchingResourcePatternResolver matchingResolver = new PathMatchingResourcePatternResolver();
		
		sessionFactory.setMapperLocations(matchingResolver.getResources("classpath:mappers/*Mapper.xml"));
		sessionFactory.setConfigLocation(matchingResolver.getResource("classpath:mybatis/mybatis-config.xml"));
		
		return sessionFactory.getObject();
	}
	
}