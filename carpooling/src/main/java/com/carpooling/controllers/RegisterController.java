package com.carpooling.controllers;

import at.favre.lib.crypto.bcrypt.BCrypt;
import com.carpooling.entities.User;
import com.carpooling.services.UserService;
import com.carpooling.validators.RegisterValidator;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "register")
public class RegisterController {
    
@Autowired
private UserService userService;
@Autowired
private RegisterValidator registerValidator;
    
    @InitBinder
    private void initBinder(WebDataBinder binder){
        binder.setValidator(registerValidator);    
        // Date - YYYY-MM-dd
        SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(
                dateFormat, false));
    }
      
    @RequestMapping(value = "/createaccount", method = RequestMethod.GET)
    public String showRegistrationPage(ModelMap mm){
        mm.addAttribute("user", new User());
        return "register";
    }
 
    @RequestMapping(value = "/docreateaccount", method = RequestMethod.POST)
    public String doRegister(ModelMap mm,@Valid @ModelAttribute("user") User user,BindingResult br){
        if (br.hasErrors()) {
            return "register";
        } else {
            user.setRole("appuser");
            String bcryptHashString = BCrypt.withDefaults().hashToString(12, user.getPassword().toCharArray());
            user.setPassword(bcryptHashString);
            userService.addUser(user);
            mm.addAttribute("loggedinuser", userService.getUserByUsername(user.getUsername()));
            return "home";
        }
    }
    
}
