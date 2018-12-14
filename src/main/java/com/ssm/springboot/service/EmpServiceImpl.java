package com.ssm.springboot.service;

import com.ssm.springboot.entity.Emp;
import com.ssm.springboot.mapper.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author aotu
 * @description: TODO
 * @date 2018/12/11 17:25
 */
@Service
@Transactional
public class EmpServiceImpl implements EmpService {

    @Autowired
    private EmpMapper empMapper;


    @Override
    public List<Emp> queryAll() {
        return empMapper.selectAll();
    }
}
