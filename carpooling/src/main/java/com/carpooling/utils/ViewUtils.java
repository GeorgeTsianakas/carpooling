package com.carpooling.utils;

import com.carpooling.entities.Trip;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViewUtils {
  
@GetMapping("selectaride")
public String handleRequest (Model model) {
    return "selectaride";
}
  
@GetMapping("offeraride")
public String sendToOfferARideForm(ModelMap mm){
    Trip trip = new Trip();
    //User logged = (User) session.getAttribute("loggedinuser");
    mm.addAttribute("newtrip",trip);
    return "offerarideform1";
}
  
@GetMapping("findaride")
public String sendToFindARideForm(Model model){
    return "findarideform1";
}

@GetMapping("profile")
public String sendToProfilePage(Model model){
    return "profile";
}    

@GetMapping("ridesoffered")
public String sendToRidesOffered(Model model){
    return "ridesoffered";
}

@GetMapping("ridestook")
public String sendToRidesTook(Model model){
    return "ridestook";
}  

}
