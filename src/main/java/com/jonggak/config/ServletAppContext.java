package com.jonggak.config;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.jonggak.mapper.GradeMapper;
import com.jonggak.mapper.LectureMapper;
import com.jonggak.mapper.TimeTableMapper;
import com.jonggak.mapper.UserMapper;
 
@EnableWebMvc
@ComponentScan("com.jonggak.controller")
@ComponentScan("com.jonggak.service")
@PropertySource("/WEB-INF/properties/db.properties")
public class ServletAppContext implements WebMvcConfigurer {
	@Value("${db.classname}")
	private String db_classname;
	
	@Value("${db.url}")
	private String db_url;
	
	@Value("${db.username}")
	private String db_username;
	
	@Value("${db.password}")
	private String db_password;
	
//	@Autowired
//	private TopMenuService topMenuService;
	
	// Controller�쓽 硫붿꽌�뱶媛� 諛섑솚�븯�뒗 jsp�쓽 �씠由� �븵�뮘�뿉 寃쎈줈�� �솗�옣�옄瑜� 遺숉�二쇰룄濡� �꽕�젙�븳�떎.
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/", ".jsp");
	}
	
	// �젙�쟻 �뙆�씪�쓽 寃쎈줈瑜� 留ㅽ븨�븳�떎.
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
	}
	
	// �뜲�씠�꽣踰좎씠�뒪 �젒�냽 �젙蹂대�� 愿�由ы븯�뒗 Bean
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(db_classname);
		source.setUrl(db_url);
		source.setUsername(db_username);
		source.setPassword(db_password);
		
		return source;
	}
	
	// 荑쇰━臾멸낵 �젒�냽 �젙蹂대�� 愿�由ы븯�뒗 媛앹껜
	@Bean
	public SqlSessionFactory factory(BasicDataSource source) throws Exception{
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		factoryBean.setDataSource(source);
		SqlSessionFactory factory = factoryBean.getObject();
		return factory;
	}
	
	// Mapper Bean �깮�꽦
	
	@Bean
	public MapperFactoryBean<GradeMapper> getGradeMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<GradeMapper> factoryBean = new MapperFactoryBean<GradeMapper>(GradeMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<LectureMapper> getLectureMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<LectureMapper> factoryBean = new MapperFactoryBean<LectureMapper>(LectureMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<UserMapper> getUserMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<UserMapper> factoryBean = new MapperFactoryBean<UserMapper>(UserMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<TimeTableMapper> getTimeTableMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<TimeTableMapper> factoryBean = new MapperFactoryBean<TimeTableMapper>(TimeTableMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
}
