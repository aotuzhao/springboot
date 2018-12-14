package com.ssm.springboot.service;

import com.ssm.springboot.entity.Emp;

import java.util.List;

/**
 * @author aotu
 * @description: TODO
 * @date 2018/12/11 17:24
 */
public interface EmpService {
    List<Emp> queryAll();
}
