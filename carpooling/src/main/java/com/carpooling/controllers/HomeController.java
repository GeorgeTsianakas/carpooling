package com.carpooling.controllers;

import com.carpooling.entities.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

//@RequestMapping("/")
@Controller
public class HomeController {

    @GetMapping("/")
    public String home(ModelMap mm) {
        mm.put("userforsignin", new User());
        mm.put("userforsignup", new User());
        return "index";
    }

//    @RequestMapping
//    public String homeReturn(ModelMap mm) {
//        return "index";
//    }

}
