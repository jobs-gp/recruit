package com.gf.controller;


import com.gf.entity.Admin;
import com.gf.entity.Company;
import com.gf.entity.Employ;
import com.gf.entity.Employer;
import com.gf.service.IAdminService;
import com.gf.service.ICompanyService;
import com.gf.service.IEmployService;
import com.gf.service.IEmployerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private IAdminService adminService;

    @Autowired
    private IEmployService employService;

    @Autowired
    private IEmployerService employerService;

    @Autowired
    private ICompanyService companyService;

    @RequestMapping(value = "adminJsp",method = RequestMethod.GET)
    public String adminJsp(){
        return "loginPage/adminLogin";
    }

    @RequestMapping("login")
    public String login(Admin admin, Map<String,Object> map, HttpSession session, HttpServletRequest request){
        //登录
        Admin resultAdmin = adminService.login(admin);
        if(resultAdmin!=null){
            //跳转welcome界面
            session.setAttribute("admin",resultAdmin);
            List<Company> CompanyInfo = companyService.getCompanyInfom();
            request.setAttribute("companyAll",CompanyInfo);
            List<Employ> EmployInfo = employService.getEmployInfom();
            request.setAttribute("employAll",EmployInfo);
            List<Employer> EmployerInfo = employerService.getEmployerInfom();
            request.setAttribute("employerAll",EmployerInfo);
            return "admin/getAllUsers";
        }
        else {
            //跳转到index界面
            //登录时填写的用户数据
            map.put("admin",admin);
            //错误信息
            map.put("error","用户名或密码错误，请重新填写");
            return "loginPage/dlsb";
        }
    }

    @RequestMapping(value = "getCompanyinfo",method = RequestMethod.GET)
    public String getCompanyinfo(HttpServletRequest request){
        List<Company> CompanyInfo = companyService.getCompanyInfom();
        request.setAttribute("companyAll",CompanyInfo);
        return "admin/getAllUsers";
    }

    @RequestMapping(value = "getEmployinfo",method = RequestMethod.GET)
    public String getEmployInfo(HttpServletRequest request){
        List<Employ> EmployInfo = employService.getEmployInfom();
        request.setAttribute("employAll",EmployInfo);
        return "admin/getAllUsers";
    }

    @RequestMapping(value = "getEmployerinfo",method = RequestMethod.GET)
    public String getEmployerInfo(HttpServletRequest request){
        List<Employer> EmployerInfo = employerService.getEmployerInfom();
        request.setAttribute("employerAll",EmployerInfo);
        return "admin/getAllUsers";
    }

    @RequestMapping("/deleteCompany")
    public String deleteCompany(String companyId)
    {
        System.out.println(companyId);
        companyService.deletecompany(companyId);
        return "redirect:/admin/login";
    }

    @RequestMapping("/deleteEmploy")
    public String deleteEmploy(int userid)
    {
        employService.deleteemploy(userid);
        return "redirect:/admin/login";
    }

    @RequestMapping("/deleteEmployer")
    public String deleteEmployer(String companyId)
    {
        employerService.deleteemployer(companyId);
        return "redirect:/admin/login";
    }

}
//管理员
