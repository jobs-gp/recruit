package com.gf.dao;

import com.gf.entity.Employer;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface IEmpolyerDao {

    /**
     * 根据登陆账号获取雇主信息
     * @param account
     * @return
     */
    Employer findEmployerByAccount(@Param("account") String account);


    Employer findEmployer(Employer employer);

    int addEmployer(Employer newEmployer);

    List<Employer> getEmployer();

    void deleteemployers(java.io.Serializable companyId);

//    List<User> getAllUsers();
//    //接口形式定义了数据库操作方法
//
//    int insertUsers(User user);
//
//    void deleteUser(java.io.Serializable id);
//
//    int updateUsers(User edituser);
//
//
//    List<User> findUserById(@Param("autoid") String autoid);
////    public User selectByName(String username);


}
