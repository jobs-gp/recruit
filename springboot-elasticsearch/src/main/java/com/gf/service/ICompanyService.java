package com.gf.service;


import com.gf.dto.CompanyDto;
import com.gf.entity.Company;

import java.util.List;

public interface ICompanyService {

    /**
     * 获取当前登录HR的公司信息
     * @return
     */
    CompanyDto getCompany(String companyId);

    List<Company> getCompanyInfom();

    void deletecompany(java.io.Serializable companyId);

    int insertCompany(String companyName,String companyDscp,String address,String tel,String email,String companyId);
//    String getAllpositions();
//
//    List<DeliverDetail> getAllinfor();
}
