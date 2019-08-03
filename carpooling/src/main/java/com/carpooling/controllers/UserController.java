package com.carpooling.controllers;

import com.carpooling.entities.User;
import com.carpooling.services.UserService;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class UserController {

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerUser(@ModelAttribute("register") User user, ModelMap map) {
        String url = "https://5.189.135.166:3011/user/createUser";
        RestTemplate template = new RestTemplate();
        User valid_user = new User(user.getUserid());
        if (valid_user == null) {
            template.postForEntity(url, user, Boolean.class);
            map.addAttribute("success", "true");
            return "login";
        } else {
            map.addAttribute("success", "false");
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
        return "redirect:/adminallusers";
    }

    @PostMapping("/rate")
    public String rateDriverOfATrip(
            @RequestParam("driver") int id,
            @RequestParam("rating") int rating) {

        User user = userService.findUserByID(id); // get the driver from db
        user.setRating(user.getRating() + rating); // get his rating, add the new rating and set new rating
        user.setRatedby(user.getRatedby() + 1); // increase rated by 1
        userService.update(user);  // persist updated fields
        return "redirect:/selectaride";
    }

    @RequestMapping(value = "/adminallusers", method = RequestMethod.GET)
    public String getAdminAllUsers(ModelMap mm) {
        List<User> users = userService.findAllUsers();
        mm.put("users", users);
        return "adminallusers";
    }

    @RequestMapping(value = "updateuser", method = RequestMethod.GET)
    public String updateProfileUser(ModelMap mm, HttpSession session) {
        User u = (User) session.getAttribute("loggedinuser");
        mm.addAttribute("user", u);
        return "updateuserprofile";
    }

    @RequestMapping(value = "updatetheprofile", method = RequestMethod.POST)
    public String doupdateProfileUser(ModelMap mm, @ModelAttribute("user") User u, HttpSession session) {
        User user = (User) session.getAttribute("loggedinuser");
        user.setUsername(u.getUsername());
        user.setCellphone(u.getCellphone());
        user.setBirthdate(u.getBirthdate());
        user.setFirstname(u.getFirstname());
        user.setLastname(u.getLastname());
        userService.update(user);
        return "redirect:/profile";
    }

    @PostMapping("/uploadphoto")
    public String uploadProfilePic(@RequestParam("photo") MultipartFile mf, HttpSession session) {
        User user = (User) session.getAttribute("loggedinuser");
        try {
            user.setPhotofilename(mf.getOriginalFilename());
            user.setPhoto(mf.getBytes());
            userService.update(user);
        } catch (IOException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "profile";
    }

}
