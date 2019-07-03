package com.gf.service;


import com.gf.entity.Resume;

import java.util.List;

public interface IResumeService {
    List<Resume> getAllResume(String userid);

    List<Resume> getAllResumer(String positions, String userid);

    Resume getEmployResumeById(String resumeid);

    Resume getEmp(String resumeid);

    int insertResume(String usrid, String realname, String birthdays, String sex, String city, String phonenum, String email, String school, String education, String major, String workexp, String positions, String exsalary, String exaddress, String perdscp);

    void deleteresume(java.io.Serializable id);

    Resume getResumeById(String id);

    int updater(String id, String realname, String birthdays, String sex, String city, String phonenum, String email, String school, String education, String major, String workexp, String positions, String exsalary, String exaddress, String perdscp);

}

