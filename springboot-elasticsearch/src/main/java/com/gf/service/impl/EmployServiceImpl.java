package com.gf.service.impl;

import com.gf.dao.IEmployDao;
import com.gf.entity.Employ;
import com.gf.service.IEmployService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class EmployServiceImpl implements IEmployService {

    @Autowired
    private IEmployDao employDao;

    @Override
    public Employ login(Employ employ){
        return employDao.findEmploy(employ);
    }


    @Override
    public int addEmploy(String account,String pwd,String realname,String sex,String age,String userid){
        Employ newEmploy = new Employ();
        newEmploy.setAccount(account);
        newEmploy.setPwd(pwd);
        newEmploy.setRealName(realname);
        newEmploy.setSex(sex);
        newEmploy.setAge(Integer.parseInt(age));
        newEmploy.setUserid(Integer.parseInt(userid));
        return employDao.addEmploy(newEmploy);
    }
}
