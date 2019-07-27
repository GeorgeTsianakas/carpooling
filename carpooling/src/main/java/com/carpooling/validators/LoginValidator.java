package com.carpooling.validators;

import at.favre.lib.crypto.bcrypt.BCrypt;
import com.carpooling.entities.User;
import com.carpooling.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class LoginValidator implements Validator {

    @Autowired
    private UserService userService;

    @Override
    public boolean supports(Class<?> type) {
        return User.class.equals(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;

        //Check username
        boolean checkusername = userService.checkIfUsernameExists(user.getUsername());
        if (!checkusername) {
            errors.rejectValue("username", "username.wrong");
        } else {
            BCrypt.Result result = BCrypt.verifyer().verify(user.getPassword().toCharArray(), userService.getUserByUsername(user.getUsername()).getPassword());
            boolean checkpassword = result.verified;
            if (!checkpassword) {
                errors.rejectValue("password", "password.wrong");
            }
        }
    }

}
