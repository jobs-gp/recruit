package com.gf.controller;


import com.gf.service.IEmployService;
import com.gf.service.IEmployerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/register/")
public class RegisterController {

    @Autowired
    private IEmployService employService;

    @Autowired
    private IEmployerService employerService;

    //求职者注册
    @RequestMapping(value = "addEmployJsp",method = RequestMethod.GET)
    public String addEmployJsp(){
        return "register/employRegister";
    }

    @RequestMapping(value = "getEmployRegister" ,method = RequestMethod.POST)
    public String getEmployRegister(HttpServletRequest request){
        String account = request.getParameter("account");
        String pwd = request.getParameter("pwd");
        String realname = request.getParameter("realname");
        String sex = request.getParameter("sex");
        String age = request.getParameter("age");
        String userid = request.getParameter("userid");

        employService.addEmploy(account,pwd,realname,sex,age,userid);
        return "register/registerSuccess";
    }

    @RequestMapping(value = "addEmployerJsp",method = RequestMethod.GET)
    public String addEmployer(){
        return "register/hrRegister";
    }

    @RequestMapping(value = "getEmployerRegister",method = RequestMethod.POST)
    public String getEmployerRegister(HttpServletRequest request){
        String employerAccount = request.getParameter("employerAccount");
        String employerPwd = request.getParameter("employerPwd");
        String employerName = request.getParameter("employerName");
        String employerTel = request.getParameter("employerTel");
        String employerEmail = request.getParameter("employerEmail");
        String employerAddress = request.getParameter("employerAddress");
        String companyId = request.getParameter("companyId");
        employerService.addEmployer(employerAccount,employerPwd,employerName,employerTel,employerEmail,employerAddress,companyId);
        return "register/registerSuccess";
    }

}
//        try {
//            //URL链接中文参数乱码的若干处理方法
//            realname = new String(realname.getBytes("ISO-8859-1"), "UTF-8");
//        } catch (UnsupportedEncodingException e) {
//            e.printStackTrace();
//        }
