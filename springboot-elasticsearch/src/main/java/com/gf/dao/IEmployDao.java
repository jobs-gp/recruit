package com.gf.dao;


import com.gf.entity.Employ;

public interface IEmployDao {

    Employ findEmploy(Employ employ);

    int addEmploy(Employ newEmploy);
}
