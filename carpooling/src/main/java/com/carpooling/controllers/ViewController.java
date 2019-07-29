package com.carpooling.controllers;

import com.carpooling.entities.Trip;
import com.carpooling.entities.User;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViewController {

    @GetMapping("selectaride")
    public String handleRequest(Model model) {
        return "selectaride";
    }

    @GetMapping("offeraride")
    public String sendToOfferARideForm(ModelMap mm, HttpSession session) {
        Trip trip = new Trip();
        User logged = (User) session.getAttribute("loggedinuser");
        mm.addAttribute("newtrip", trip);
        return "offerarideform1";
    }

    @GetMapping("findaride")
    public String sendToFindARideForm(Model model) {
        return "findarideform1";
    }

    @GetMapping("profile")
    public String sendToProfilePage(Model model) {
        return "profile";
    }

    @GetMapping("ridesoffered")
    public String sendToRidesOffered(Model model) {
        return "ridesoffered";
    }

    @GetMapping("ridestook")
    public String sendToRidesTook(Model model) {
        return "ridestook";
    }

    @GetMapping("home")
    public String homeRedirect(Model model) {
        return "login";
    }

    @GetMapping("admin")
    public String sendToadministratorPage(Model model) {
        return "administratorform1";
    }
    
    @GetMapping("donate")
    public String donateCarpooling(Model model) {
        return "donate";
    }
    
}
