package edu.per.librarymanagement;

import java.io.IOException;
import java.io.InputStream;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import edu.per.librarymanagement.Entity.FreeBookDao;
import edu.per.librarymanagement.Entity.FreeBookDaoImpl;
import edu.per.librarymanagement.Entity.UserDao;
import edu.per.librarymanagement.Entity.UserDaoImpl;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@EnableWebMvc
@Configuration
@ComponentScan(basePackages="edu.per.librarymanagement")
public class AppConfig implements WebMvcConfigurer  {

	
	@Bean
	public JdbcTemplate getjdbcTemplate()
	{
		JdbcTemplate template=new JdbcTemplate();	
		 template.setDataSource(getDriverManagerInfo());
		return template;
	}
	
	@Bean
	public DataSource getDriverManagerInfo() {
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		dataSource.setUrl("jdbc:mysql://localhost:3306/springjdbc51");
		dataSource.setUsername("root");
		dataSource.setPassword("12345");
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		return dataSource;
	}
//	
	@Bean
	public ViewResolver viewResolver() {
InternalResourceViewResolver resolver=new InternalResourceViewResolver();

resolver.setPrefix("/");
resolver.setSuffix(".jsp");
//
	return resolver;
	}
	
	@Bean
	public UserDao userDao() {
	    return new UserDaoImpl();
	}
//	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
	    registry.addResourceHandler("/images/**")
	            .addResourceLocations("/images/");
	}

	@Bean
	public FreeBookDao freeBookDao() {
		return new FreeBookDaoImpl();
	}
	

}
