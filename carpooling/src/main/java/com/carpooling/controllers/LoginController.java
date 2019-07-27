package com.carpooling.controllers;

import com.carpooling.entities.User;
import com.carpooling.services.UserService;
import com.carpooling.validators.LoginValidator;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;
    @Autowired
    private LoginValidator loginValidator;

    @InitBinder
    private void initBinder(WebDataBinder binder) {
        binder.setValidator(loginValidator);
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLoginPage(ModelMap mm) {
        mm.addAttribute("user", new User());
        return "login";
    }

    @RequestMapping(value = "/selectaride", method = RequestMethod.POST)
    public String doLogin(ModelMap mm, @Valid @ModelAttribute("user") User user, BindingResult br, HttpSession session) {
        if (br.hasErrors()) {
            return "redirect:/login";
        } else {
            mm.addAttribute("loggedinuser", userService.getUserByUsername(user.getUsername()));
            session.setAttribute("loggedinuser", userService.getUserByUsername(user.getUsername()));
            return "selectaride";
        }
    }

    public static HttpSession session() {
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        return attr.getRequest().getSession(true); // true == allow create
    }

    @GetMapping("/logout")
    public ModelAndView doLogout(HttpServletRequest request, SessionStatus status) {
        HttpSession session = request.getSession();
        session.removeAttribute("loggedinuser");
        status.setComplete();
        session.invalidate();
        RequestMappingHandlerAdapter rmha = new RequestMappingHandlerAdapter();
        rmha.setCacheSeconds(0);
        // remove cookie if present!
        CookieHandler.removeCookie(request.getCookies());
        return new ModelAndView("redirect:/login");
    }

}
