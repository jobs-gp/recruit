package com.gf.service.impl;

import com.gf.dao.IEmpolyerDao;
import com.gf.entity.Employer;
import com.gf.service.IEmployerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.List;

@Component
public class EmployerServiceImpl implements IEmployerService {

    @Autowired
    private IEmpolyerDao empolyerDao;

    @Override
    public String getCompanyId(HttpSession session) {
        String account = (String) session.getAttribute("employerName");
        Employer employer = empolyerDao.findEmployerByAccount(account);
        if (null != employer) {
            return employer.getCompanyId();
        }
        return null;
    }


    @Override
    public Employer HrLogin(Employer employer){
        return empolyerDao.findEmployer(employer);
    }

    @Override
    public int addEmployer(String employerAccount,String employerPwd,String employerName,String employerTel,String employerEmail,String employerAddress,String companyId){
        Employer newEmployer = new Employer();
        newEmployer.setEmployerAccount(employerAccount);
        newEmployer.setEmployerPwd(employerPwd);
        newEmployer.setEmployerName(employerName);
        newEmployer.setEmployerTel(employerTel);
        newEmployer.setEmployerEmail(employerEmail);
        newEmployer.setEmployerAddress(employerAddress);
        newEmployer.setCompanyId(companyId);
        return empolyerDao.addEmployer(newEmployer);
    }

    @Override
    public List<Employer> getEmployerInfom(){
        return empolyerDao.getEmployer();
    }

    @Override
    public void deleteemployer(Serializable companyId){
        empolyerDao.deleteemployers(companyId);
    }
}
