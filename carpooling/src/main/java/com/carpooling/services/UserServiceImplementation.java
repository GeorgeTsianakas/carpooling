package com.carpooling.services;

import com.carpooling.entities.User;
import com.carpooling.repositories.UserRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImplementation implements UserService{

@Autowired
UserRepository userRepository;
    
    @Override
    public void insert(User user) {
    userRepository.save(user);
    }

    @Override
    public void update(User user) {
    userRepository.save(user);    
    }

    @Override
    public List<User> findAllUsers() {
    return userRepository.findAll();
    }

    @Override
    public User findUserByID(int userid) {
    User user = userRepository.findById(userid).get();
    return user;    
    }

    @Override
    public void deleteUserByID(int userid) {
    userRepository.deleteById(userid);    
    }

    @Override
    public User findUserByEmail(String email) {
    User user = userRepository.findUserByEmail(email);
    return user;
    }
    
    @Override
    public User getUserFromTable(String email) {
    return userRepository.findUserByEmail(email);
    }
    
    //TODO
    @Override
    public int countRating() {
    return 0;    
    }
    
    @Override
    public boolean checkIfUsernameExists(String username) {
        return userRepository.existsUserByUsername(username);
    }
    
    @Override
    public User getUserByUsername(String username) {
        return userRepository.findUserByUsername(username);
    }
    
    @Override
    public void addUser(User user) {
        userRepository.save(user);
    }
    
}
