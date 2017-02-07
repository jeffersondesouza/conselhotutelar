package org.conselho.config;

import java.beans.PropertyVetoException;
import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.mchange.v2.c3p0.ComboPooledDataSource;

@Configuration
@EnableTransactionManagement
public class JpaConfigurator {

	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory(){
		LocalContainerEntityManagerFactoryBean factoryBean = new LocalContainerEntityManagerFactoryBean();
		
		JpaVendorAdapter jpaVendorAdapter = new HibernateJpaVendorAdapter();	
		factoryBean.setJpaVendorAdapter(jpaVendorAdapter);
		
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setUsername("root");
		dataSource.setPassword("duppoe");
		dataSource.setUrl("jdbc:mysql://localhost/conselho");
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		
		factoryBean.setDataSource(dataSource);
		
		Properties props = new Properties();
		props.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQL5Dialect");
		props.setProperty("hibernate.show_sql", "true");
		props.setProperty("hibernate.hbm2ddl.auto", "update");
//		props.setProperty("hibernate.hbm2ddl.auto", "create");
		
		
		factoryBean.setJpaProperties(props);
		factoryBean.setPackagesToScan("org.conselho.models");
		
		return factoryBean;
	}
	
	
	
	@Bean
	public JpaTransactionManager transactionManager(EntityManagerFactory entityManagerFactory){
		return new JpaTransactionManager(entityManagerFactory);
	}

}
