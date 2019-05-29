package com.gf.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author wangchenyu  on 2019/5/29 9:25
 */
@RestController
public class IndexController {

    @RequestMapping("/index")
    public ModelAndView hello() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        return mv;
    }
}
