package com.elasticsearh.jobs.jobs.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author wangchenyu  on 2019/5/29 9:25
 */
@RestController
public class HelloController {

    @RequestMapping("/hello")
    public ModelAndView hello() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("msg", "this a msg from HelloWorldController");
        mv.setViewName("test");
        return mv;
    }
}
