package com.carpooling.repositories;

import com.carpooling.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User,Integer>{

public User findUserByEmail(String email);
public User findUserByUsername(String username);
public boolean existsUserByUsername(String username);

}