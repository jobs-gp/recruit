package com.gf.dao;


import com.gf.entity.Company;
import org.springframework.data.repository.query.Param;

public interface ICompanyDao {


    /**
     * 根据登录HR获取公司信息
     * @param companyId
     * @return
     */
    Company findCompanyById(@Param("companyId") String companyId);
}
