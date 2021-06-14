package com.softeem;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@SpringBootApplication
@MapperScan("com.softeem.mapper")
public class ApofoodRun {
    public static void main(String[] args) {
        SpringApplication.run(ApofoodRun.class,args);
    }
}
