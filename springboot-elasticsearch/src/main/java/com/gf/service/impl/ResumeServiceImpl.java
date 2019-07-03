package com.gf.service.impl;
import com.gf.dao.IResumeDao;
import com.gf.entity.Resume;
import com.gf.service.IResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

@Service
public class ResumeServiceImpl implements IResumeService {

    @Autowired
    private IResumeDao resumeDao;

    @Override
    public List<Resume> getAllResume(String userid) {
        return resumeDao.getAllResumes(userid);
    }

    @Override
    public List<Resume> getAllResumer(String positions,String userid) {
        return resumeDao.getAllResumer(positions,userid);
    }

    @Override
    public Resume getEmployResumeById(String resumeid){
        return resumeDao.getEmployResumeDetail(resumeid);
    }


    @Override
    public Resume getEmp(String resumeid){
        return resumeDao.getEmpResume(resumeid);
    }

    @Override
    public int insertResume(String usrid,String realname,String birthdays,String sex,String city,String phonenum, String email, String school, String education,String major,String workexp,String positions,String exsalary,String exaddress,String perdscp){
        Resume resumes = new Resume();
        resumes.setUserid(Integer.parseInt(usrid));
        resumes.setRealname(realname);
        resumes.setBirthdays(birthdays);
        resumes.setSex(sex);
        resumes.setCity(city);
        resumes.setPhonenum(phonenum);
        resumes.setEmail(email);
        resumes.setSchool(school);
        resumes.setEducation(education);
        resumes.setMajor(major);
        resumes.setWorkexp(workexp);
        resumes.setPositions(positions);
        resumes.setExsalary(exsalary);
        resumes.setExaddress(exaddress);
        resumes.setPerdscp(perdscp);
        return resumeDao.insertResumes(resumes);
    }

    @Override
    public Resume getResumeById(String id)
    {
        List<Resume> resumess = resumeDao.findResumeById(id);
        if(resumess.size()>0){
            return resumess.get(0);
        }
        return null;
    }

    @Override
    public int updater(String id,String realname,String birthdays,String sex,String city,String phonenum, String email, String school, String education,String major,String workexp,String positions,String exsalary,String exaddress,String perdscp){
//        System.out.println(id);
        Resume resume = new Resume();
        int resumeid=Integer.parseInt(id);
        resume.setResumeid(resumeid);
        resume.setRealname(realname);
        resume.setBirthdays(birthdays);
        resume.setSex(sex);
        resume.setCity(city);
        resume.setPhonenum(phonenum);
        resume.setEmail(email);
        resume.setSchool(school);
        resume.setEducation(education);
        resume.setMajor(major);
        resume.setWorkexp(workexp);
        resume.setPositions(positions);
        resume.setExsalary(exsalary);
        resume.setExaddress(exaddress);
        resume.setPerdscp(perdscp);
        return resumeDao.updater(resume);
    }


@Override
    public void deleteresume(Serializable id)

{
    resumeDao.deleteresume(id);
}


}


