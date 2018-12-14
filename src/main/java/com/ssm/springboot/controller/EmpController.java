package com.ssm.springboot.controller;

import com.ssm.springboot.entity.Emp;
import com.ssm.springboot.service.EmpService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @Author aotu
 * @Date 2018/12/13 20:15
 * @Description:
 */
@Controller
@RequestMapping("/emp")
@Log4j
public class EmpController {

    @Autowired
    EmpService empService;

    @RequestMapping("/showAll")
    public String queryAll(Model model){
        model.addAttribute("emps",empService.queryAll());
        log.debug("this is a test message");
        return "view/emplist";
    }


    @RequestMapping("/queryAll")
    @ResponseBody
    public List<Emp> queryJsonAll() {
        return empService.queryAll();
    }
}
