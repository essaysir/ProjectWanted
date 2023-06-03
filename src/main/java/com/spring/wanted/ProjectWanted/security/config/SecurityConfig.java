package com.spring.wanted.ProjectWanted.security.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig  {
		
	
	// Bcrypt 는 패스워드는 해쉬로 암호화해주는 클래스
		// autowire 하기 위해 bean 으로 등록
		@Bean
		PasswordEncoder passwordEncoder() {
			return new BCryptPasswordEncoder();
		}
	
	 @Bean
	    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
	        http
	                .csrf().disable() // httpBasic().disable().csrf().disable(): rest api이므로 basic auth 및 csrf 보안을 사용하지 않는다는 설정
	                //.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS) // JWT를 사용하기 때문에 세션을 사용하지 않는다는 설정
	                //.and()
	                .formLogin()
	                	.loginPage("/wanted/login")
	                	.loginProcessingUrl("/wanted/login")
	                	.defaultSuccessUrl("/wanted/")
	                .and()	
	                
	                .authorizeRequests()
	                .antMatchers("/static/bootstrap-4.6.0-dist/*", 
	                		"/static/images/main_image/**", 
	                		"/static/jquery-ui-1.13.1.custom/*", 
	                		"/static/js/*", 
	                		"/static/OwlCarousel/*", 
	                		"/static/smarteditor/*", 
	                		"/wanted/company/*" , "/wanted/login" , "/wanted").permitAll() // 해당 API에 대해서는 모든 요청을 허가한다는 설정	                
	                //	                .antMatchers("/**").hasAnyRole("USER") // 그 외 페이지는 로그인 한 유저만 사용 가능
	        		.anyRequest().authenticated(); // 이 밖에 모든 요청에 대해서 인증을 필요로 한다는 설정
	                
	        return http.build();
	    }
	 

	
	
}
