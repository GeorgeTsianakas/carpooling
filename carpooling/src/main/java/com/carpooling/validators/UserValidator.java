package com.carpooling.validators;

import com.carpooling.entities.User;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class UserValidator implements Validator {

@Override
    public boolean supports(Class<?> type) {
        return User.class.equals(type);
    }

@Override
public void validate(Object o, Errors errors) {
        User user = (User) o;
        if (!user.getFirstname().matches("^[a-zA-Z]*$")) {
            errors.rejectValue("firstname", "name.only.letters");
        }
        if (!user.getLastname().matches("^[a-zA-Z]*$")) {
            errors.rejectValue("lastname", "name.only.letters");
        }
    }
    
}
