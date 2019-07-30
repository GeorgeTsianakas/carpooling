package com.carpooling.controllers;

import com.carpooling.entities.User;
import com.carpooling.services.UserService;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.request.WebRequest;

@SessionAttributes({"loggedinuser"})
@Controller
public class EmailController {

    @Autowired
    public JavaMailSender emailSender;
    @Autowired
    UserService userService;

    @RequestMapping("/sendemail")
    public String sendMessage(WebRequest request) throws MessagingException {
        MimeMessage mailMessage = emailSender.createMimeMessage();
        String ouremail = "carpooling.team.project.cb7@gmail.com";
        String subject = request.getParameter("subject");
        String msg = request.getParameter("textarea");
        MimeMessageHelper helper = new MimeMessageHelper(mailMessage, true);
        helper.setTo(ouremail);
        helper.setText(msg);
        helper.setSubject(subject);
        emailSender.send(mailMessage);
        return "redirect:/selectaride";
    }

}
