package com.carpooling.repositories;

import com.carpooling.entities.Trip;
import com.carpooling.entities.User;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TripRepository extends JpaRepository<Trip, Integer> {

    public List<Trip> findByDriverid(User u);

}
