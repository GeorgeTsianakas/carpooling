package com.carpooling.validators;

import com.carpooling.entities.User;
import com.carpooling.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class RegisterValidator implements Validator {

    @Autowired
    private UserService userService;

    @Override
    public boolean supports(Class<?> type) {
        return User.class.equals(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;
        boolean check = userService.checkIfUsernameExists(user.getUsername());
        if (check) {
            errors.rejectValue("username", "username.unique");
        }
    }

}
