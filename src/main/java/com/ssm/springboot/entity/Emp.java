package com.ssm.springboot.entity;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

/**
 * @author aotu
 * @description: TODO
 * @date 2018/12/11 17:01
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
@Table(name = "e_emp")
public class Emp implements Serializable {
    @Id
    @KeySql(useGeneratedKeys = true)
    private Integer id;
    private String name;
    private Double salary;

    private Integer age;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JSONField(format = "yyyy-MM-dd")
    private Date indate;

    public Emp(String name, Double salary, Integer age, Date indate) {
        this.name = name;
        this.salary = salary;
        this.age = age;
        this.indate = indate;
    }
}
