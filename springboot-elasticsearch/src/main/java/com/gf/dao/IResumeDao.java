package com.gf.dao;


import com.gf.entity.Resume;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface IResumeDao {

    List<Resume> getAllResumes(@Param("userid") String userid);

    List<Resume> getAllResumer(@Param("positions") String positions, @Param("userid") String userid);

    List<Resume> getEmployResumeDetail(@Param("resumeid") String resumeid);

    int insertResumes(Resume resumes);
    //接口形式定义了数据库操作方法

    List<Resume> findResumeById(@Param("resumeid") String resumeid);

    int updater(Resume resume);

    void deleteresume(java.io.Serializable id);

//    List<Resume> findDeliverDetail(@Param("resumeid")String resumeid,@Param("userid")String userid);



}

