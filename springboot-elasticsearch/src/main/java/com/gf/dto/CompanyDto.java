package com.gf.dto;


import com.gf.entity.Company;
import com.gf.entity.Position;

import java.util.List;

public class CompanyDto {

    private String companyName;

    private String companyDscp;

    private String address;

    private String email;

    private String tel;

    private List<Position> positionList;

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyDscp() {
        return companyDscp;
    }

    public void setCompanyDscp(String companyDscp) {
        this.companyDscp = companyDscp;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public List<Position> getPositionList() {
        return positionList;
    }

    public void setPositionList(List<Position> positionList) {
        this.positionList = positionList;
    }


    public static CompanyDto from(Company company, List<Position> positionList) {
        CompanyDto companyDto = new CompanyDto();
        if (null != company){
            companyDto.setAddress(company.getAddress());
            companyDto.setCompanyDscp(company.getCompanyDscp());
            companyDto.setCompanyName(company.getCompanyName());
            companyDto.setEmail(company.getEmail());
            companyDto.setTel(company.getTel());
        }
        companyDto.setPositionList(positionList);
        return companyDto;
    }
}
