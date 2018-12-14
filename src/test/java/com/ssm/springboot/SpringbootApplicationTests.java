package com.ssm.springboot;

import com.ssm.springboot.entity.Emp;
import com.ssm.springboot.mapper.EmpMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpringbootApplicationTests {

    @Autowired
    EmpMapper empMapper;



    @Test
    public void testSelectAll() {
       /* List<Emp> emps = empMapper.selectAll();
        for (Emp emp : emps) {
            System.out.println(emp);
        }*/

    }

    @Test
    public void testSelectOne(){
        List<Emp> hehe = empMapper.select(new Emp(null, "hehe", null, null, null));
        for (Emp emp : hehe) {
            System.out.println(emp);
        }
    }

    @Test
    public void testSelect(){
        Emp hehe = empMapper.selectOne(new Emp(null, "hehe", 235.8, null, null));
        System.out.println(hehe);
    }

    @Test
    public void testUpdate(){
        int i = empMapper.updateByPrimaryKey(new Emp(6, "呵呵", 235.8, 11, null));
        System.out.println(i);
    }

    @Test
    public void testInsert(){
        Emp emp=new Emp( "插入3", 235.8, 34, new Date());
        int hehe = empMapper.insert(emp);
        System.out.println(hehe);
        System.out.println(emp.getId());
    }


}
