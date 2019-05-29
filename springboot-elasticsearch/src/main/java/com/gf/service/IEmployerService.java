package com.gf.service;


import com.gf.entity.Employer;

import javax.servlet.http.HttpSession;

public interface IEmployerService {

    /**
     * 根据当前登陆用户获取HR所在公司ID
     * @return
     */
    String getCompanyId(HttpSession session);

    Employer HrLogin(Employer employer);

    int addEmployer(String employerAccount, String employerPwd, String employerName, String employerTel, String employerEmail, String employerAddress, String companyId);
}
