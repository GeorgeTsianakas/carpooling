package com.carpooling.controllers;

import com.carpooling.entities.Trip;
import com.carpooling.entities.User;

import java.io.UnsupportedEncodingException;
import java.util.Base64;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

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

    @GetMapping("/profile")
    public String sendToProfilePage(ModelMap modelmap, HttpSession session) {
        User user = (User) session.getAttribute("loggedinuser");
        if (user.getPhoto() != null) {
            byte[] encodeBase64 = Base64.getEncoder().encode(user.getPhoto());      //.encodeBase64(user.getPhoto());
            String base64Encoded;
            try {
                base64Encoded = new String(encodeBase64, "UTF-8");
                modelmap.put("userImage", base64Encoded);
            } catch (UnsupportedEncodingException ex) {
                Logger.getLogger(ViewController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
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

    @GetMapping("email/{id}")
    public String sendMessage(Model model, @PathVariable int id) {
        return "email";
    }

    @GetMapping("payment")
    public String paymentPage(Model model) {
        return "payment";
    }

}
