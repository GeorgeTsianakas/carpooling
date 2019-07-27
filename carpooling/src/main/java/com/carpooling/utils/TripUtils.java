package com.carpooling.utils;

import com.carpooling.dtos.Place;
import java.lang.Math;
import org.springframework.stereotype.Component;

@Component
public class TripUtils {

    public double absoluteDifference(double a, double b) {
        return Math.abs(a - b);
    }

    public boolean isLatCloseEnough(double a, double b) {
        return (a < 0.001 * b);
    }

    public boolean isLngCloseEnough(double a, double b) {
        return (a < 0.001 * b * 1.25);
    }

    public boolean isWithinRadius(Place place1, Place place2, double radiusCoefficient) {
        if (this.isLatCloseEnough(this.absoluteDifference(place1.getLat(), place2.getLat()), radiusCoefficient)) {
            if (this.isLngCloseEnough(this.absoluteDifference(place1.getLng(), place2.getLng()), radiusCoefficient)) {
                // αν ο κωδικας μπει εδω μεσα τοτε τα δυο σημεια ειναι κοντα μεταξυ τους (ακτινα ~110 μετρων ).
                // αλλαζοντας το radiusCoefficient μπορουμε να δωσουμε μεγαλυτερες ακτινες 
                // πχ για radiusCoefficient = 2.0 εχουμε μια ακτινα ~220 μετρων κοκ.
                return true;
            }
        }
        return false;
    }

}
