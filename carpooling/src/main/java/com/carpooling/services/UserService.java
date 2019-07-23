package com.carpooling.services;

import com.carpooling.entities.User;
import java.util.List;
import org.springframework.stereotype.Component;

@Component
public interface UserService {

public boolean checkIfUsernameExists(String username);
public User getUserByUsername(String username);
public void addUser(User user);
public void insert(User user);
public void update(User user);
public List<User> findAllUsers();
public User findUserByID(int userid);
public void deleteUserByID(int userid);
public User findUserByEmail(String email);
public User getUserFromTable(String email);
public int countRating();

}
