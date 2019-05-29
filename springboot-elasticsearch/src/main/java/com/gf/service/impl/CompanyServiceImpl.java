package com.gf.service.impl;

import com.gf.dao.ICompanyDao;
import com.gf.dao.IPositionDao;
import com.gf.dto.CompanyDto;
import com.gf.entity.Company;
import com.gf.entity.Position;
import com.gf.service.ICompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public class CompanyServiceImpl implements ICompanyService {

    @Autowired
    private ICompanyDao companyDao;

    @Autowired
    private IPositionDao positionDao;




    /**
     * 根据公司ID获取当前公司信息
     * @param companyId
     * @return
     */
    @Override
    public CompanyDto getCompany(String companyId) {
        Company company = companyDao.findCompanyById(companyId);
        //根据公司id获取此公司所有职位
        List<Position> positionList = positionDao.findPositionByCompanyId(companyId);
        CompanyDto companyDto = CompanyDto.from(company, positionList);
        return companyDto;
    }

}
