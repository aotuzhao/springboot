package com.ssm.springboot;

import org.junit.Test;

/**
 * @Author aotu
 * @Date 2018/12/14 9:27
 * @Description:
 */
public class MyTest {

    @Test
    public void testOne(){
        Integer a = 2;
        Integer d = 2;
        Integer b = new Integer(2);
        Integer c = new Integer(2);
        String sa = "2";
        Integer e = 127;
        Integer  f = 127;
        System.out.println(sa.equals(a));
        System.out.println(a.equals(b));
        System.out.println(a == b);
        System.out.println(a == d);
        System.out.println(b == c);
        System.out.println(e == f);

    }
}
