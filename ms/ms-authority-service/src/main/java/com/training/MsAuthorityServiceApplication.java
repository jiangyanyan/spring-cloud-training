package com.training;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@MapperScan("com.training.dao")
@EnableDiscoveryClient
public class MsAuthorityServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(MsAuthorityServiceApplication.class, args);
	}
}
