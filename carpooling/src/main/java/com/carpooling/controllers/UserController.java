package com.carpooling.controllers;

import com.carpooling.entities.User;
import com.carpooling.services.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class UserController {
    
@RequestMapping(value="/register", method=RequestMethod.POST)
public String registerUser(@ModelAttribute("register") User user, ModelMap map){
    String url = "https://5.189.135.166:3011/user/createUser";
    RestTemplate template = new RestTemplate();
    User valid_user = new User(user.getUserid());
    if(valid_user==null){
	template.postForEntity(url, user, Boolean.class);
	map.addAttribute("success","true");
	return "login";
	}else{
	map.addAttribute("success","false");
	return "login";
        }
}    

@Autowired
UserService userService;

@RequestMapping(value = "/insertuser", method = RequestMethod.GET)
public String insertUser(ModelMap mm) {
    User user = new User();
    mm.addAttribute("user", user);
    return "insertuser";
}

@RequestMapping(value = "/doinsertuser", method = RequestMethod.POST)
public RedirectView doinsertUser(ModelMap mm, @ModelAttribute("user") User user) {
    userService.insert(user);
    return new RedirectView("allusers");
}

@RequestMapping(value = "/allusers", method = RequestMethod.GET)
public String allUsers(ModelMap mm) {
    List<User> users = userService.findAllUsers();
    mm.put("users", users);
    return "allusers";
}

@RequestMapping(value = "/updateuser/{id}", method = RequestMethod.GET)
public String updateUser(ModelMap mm, @PathVariable int id) {
    User olduser = userService.findUserByID(id);
    User newuser = new User();
    mm.addAttribute("newuser", newuser);
    mm.addAttribute("olduser", olduser);
    return "updateuser";
}

@RequestMapping(value = "/updateuser/doupdateuser", method = RequestMethod.POST)
public String doupdateUser(ModelMap mm, @ModelAttribute("newuser") User newuser) {
    userService.update(newuser);
    return "redirect:/allusers";
}

@RequestMapping(value = "/deleteuser/{id}", method = RequestMethod.GET)
public String deleteUser(ModelMap mm, @PathVariable int id) {
    userService.deleteUserByID(id);
    return "redirect:/allusers";
}

}
