package com.gf.service;


import com.gf.entity.Employ;

public interface IEmployService {

    Employ login(Employ employ);

    int addEmploy(String account, String pwd, String realname, String sex, String age, String userid);
}
