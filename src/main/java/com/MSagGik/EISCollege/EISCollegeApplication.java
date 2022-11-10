package com.MSagGik.EISCollege;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.MSagGik.EISCollege.mapper")
public class EISCollegeApplication {

    public static void main(String[] args) {
        SpringApplication.run(EISCollegeApplication.class, args);
    }

}
