package com.gf.service.impl;

import com.gf.dao.IAdminDao;
import com.gf.entity.Admin;
import com.gf.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class AdminServiceImpl implements IAdminService {
    @Autowired
    private IAdminDao adminDao;

    @Override
    public Admin login(Admin admin){
        return adminDao.findAdmin(admin);
    }

}
