package com.gf.controller;

import com.gf.entity.Resume;
import com.gf.service.IResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
@RequestMapping("/resume/")
public class ResumeController {

    @Autowired
    private IResumeService resumeService;
//求职者登录时查旬全部简历
    @RequestMapping(value = "getResume", method = RequestMethod.GET)
    public String getResume(HttpServletRequest request) {
        String userid = request.getParameter("userid");
        List<Resume> re = resumeService.getAllResume(userid);
        request.setAttribute("resume", re);
        return "resume/resume";
    }

    //投递时查看个人简历
    @RequestMapping(value = "getOneResume",method = RequestMethod.GET)
    public String getOneResume(HttpServletRequest request){
        String positions = request.getParameter("positions");
        String userid = request.getParameter("userid");
//        System.out.println(userid);
        try {
            positions = new String(positions.getBytes("ISO-8859-1"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        List<Resume> oneresume = resumeService.getAllResumer(positions,userid);
//        System.out.println(positions+userid);
        request.setAttribute("oneresume",oneresume);
        return "resume/chooseresume";
    }


    //HR查看求职者的简历
    @RequestMapping(value = "getEmployResume",method = RequestMethod.GET)
    public String getEmployResume(HttpServletRequest request){
        String resumeid = request.getParameter("resumeid");
        Resume employresume = resumeService.getEmployResumeById(resumeid);
        request.setAttribute("employresume",employresume);
        return "resume/getemployresume";
    }

    @RequestMapping(value = "perResume",method = RequestMethod.GET)
    public String perRusume(HttpServletRequest request){
        String resumeid = request.getParameter("resumeid");
        Resume emp = resumeService.getEmp(resumeid);
        request.setAttribute("emp",emp);
        return "resume/employGetOwnResume";
    }






//添加简历
    @RequestMapping(value = "addreJsp",method = RequestMethod.GET)
    public String addreJsp(){
        return "resume/addresume";
    }
    @RequestMapping(value = "addResume",method = RequestMethod.POST)
    public String addResume(HttpServletRequest request){
        String userid = request.getParameter("userid");
        String realname = request.getParameter("realname");
        String birthdays = request.getParameter("birthdays");
        String sex = request.getParameter("sex");
        String city = request.getParameter("city");
        String phonenum = request.getParameter("phonenum");
        String email = request.getParameter("email");
        String school = request.getParameter("school");
        String education = request.getParameter("education");
        String major = request.getParameter("major");
        String workexp = request.getParameter("workexp");
        String positions = request.getParameter("positions");
        String exsalary = request.getParameter("exsalary");
        String exaddress = request.getParameter("exaddress");
        String perdscp = request.getParameter("perdscp");

        int addresume = resumeService.insertResume(userid,realname,birthdays,sex,city,phonenum,email,school,education,major,workexp,positions,exsalary,exaddress,perdscp);
        return "redirect:/employ/getEmployInfo";
    }


    //修改简历
    @RequestMapping(value = "/updatereJsp",method = RequestMethod.POST)
    public String updatereJsp(HttpServletRequest request) {
        String id = request.getParameter("resumeid");
        Resume resume = resumeService.getResumeById(id);
        request.setAttribute("resume" ,resume);
        return "resume/editresume";
    }

    @RequestMapping(value = "/updateResumes",method = RequestMethod.POST)
    public String updateResumes(HttpServletRequest request)
    {
        String id = request.getParameter("resumeid");
        String realname = request.getParameter("realname");
        String birthdays = request.getParameter("birthdays");
        String sex = request.getParameter("sex");
        String city = request.getParameter("city");
        String phonenum = request.getParameter("phonenum");
        String email = request.getParameter("email");
        String school = request.getParameter("school");
        String education = request.getParameter("education");
        String major = request.getParameter("major");
        String workexp = request.getParameter("workexp");
        String positions = request.getParameter("positions");
        String exsalary = request.getParameter("exsalary");
        String exaddress = request.getParameter("exaddress");
        String perdscp = request.getParameter("perdscp");
        resumeService.updater(id,realname,birthdays,sex,city,phonenum,email,school,education,major,workexp,positions,exsalary,exaddress,perdscp);
        return "redirect:/employ/getEmployInfo";
    }


//删除简历
@RequestMapping("/deleteresume")
    public String deleteresume(int id)
{
    resumeService.deleteresume(id);
    return "redirect:/employ/getEmployInfo";
}

}