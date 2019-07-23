package com.carpooling.services;

import com.carpooling.entities.Trip;
import java.util.List;
import org.springframework.stereotype.Component;

@Component
public interface TripService {

public void insert(Trip trip);
public void update(Trip trip);
public void deleteTripByID(int tripid);
public List<Trip> findAllTrips();
public Trip findTripByID(int tripid);
   
}
