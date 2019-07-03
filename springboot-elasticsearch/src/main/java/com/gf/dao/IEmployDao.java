package com.gf.dao;


import com.gf.entity.Employ;

import java.util.List;

public interface IEmployDao {

    Employ findEmploy(Employ employ);

    int addEmploy(Employ newEmploy);

    List<Employ> findEmployDetail();

    void deleteemploys(java.io.Serializable userid);
}
