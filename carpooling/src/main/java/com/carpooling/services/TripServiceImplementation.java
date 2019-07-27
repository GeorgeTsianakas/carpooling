package com.carpooling.services;

import com.carpooling.entities.Trip;
import com.carpooling.entities.User;
import com.carpooling.repositories.TripRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TripServiceImplementation implements TripService {

    @Autowired
    TripRepository tripRepository;

    @Override
    public void insert(Trip trip) {
        tripRepository.save(trip);
    }

    @Override
    public void update(Trip trip) {
        tripRepository.save(trip);
    }

    @Override
    public List<Trip> findAllTrips() {
        return tripRepository.findAll();
    }

    @Override
    public Trip findTripByID(int tripid) {
        Trip trip = tripRepository.findById(tripid).get();
        return trip;
    }

    @Override
    public void deleteTripByID(int tripid) {
        tripRepository.deleteById(tripid);
    }

    @Override
    public List<Trip> findAllTripsByDriverid(User u) {
        return tripRepository.findByDriverid(u);
    }

}
