package com.gf.controller;


import com.gf.entity.Deliveryrecord;
import com.gf.service.IDeliveryrecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

@Controller
@RequestMapping("/deliveryrecord/")
public class DeliveryrecordController {

    @Autowired
    private IDeliveryrecordService deliveryrecordService;


    @RequestMapping(value = "/addDeliveryrecord",method = RequestMethod.GET)
    public String addDeliveryrecord(HttpServletRequest request){
        String positionid = request.getParameter("positionid");
        String resumeid = request.getParameter("resumeid");
        String userid= request.getParameter("userid");
        String realname = request.getParameter("realname");
        try {
            //URL链接中文参数乱码的若干处理方法
            realname = new String(realname.getBytes("ISO-8859-1"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        String positions = request.getParameter("positions");
        try {
            //URL链接中文参数乱码的若干处理方法
            positions = new String(positions.getBytes("ISO-8859-1"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        deliveryrecordService.adddeliveryrecord(positionid,resumeid,userid,realname,positions);
        return "deliveryrecord/addSuccess";
    }
    //改
    @RequestMapping(value = "/updateRecordJsp",method = RequestMethod.POST)
    public String updateRecordJsp(HttpServletRequest request) {
        String id = request.getParameter("deliverid");
        Deliveryrecord de = deliveryrecordService.getDeliveryRecordById(id);
        request.setAttribute("deliver", de);
        System.out.println(id);
        return "deliveryrecord/updateDeliverRecord";
    }
    @RequestMapping(value = "/updateDeliverRecord",method = RequestMethod.POST)
    public String updateDeliverRecord(HttpServletRequest request){
        String id = request.getParameter("deliverid");
        String acceptorrefuse = request.getParameter("acceptorrefuse");
        System.out.println(id);
        deliveryrecordService.updateDeliver(id,acceptorrefuse);
        return "redirect:/company/getCompany";
        }


    }


