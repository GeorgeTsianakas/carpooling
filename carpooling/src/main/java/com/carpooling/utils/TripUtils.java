package com.carpooling.utils;

import java.lang.Math;

public class TripUtils {

public double absoluteDifference( double a, double b ){
    return Math.abs(a-b);
}

public boolean isLatCloseEnough ( double a , double b ){
    return  (a < 0.001 * b);
}

public boolean isLngCloseEnough ( double a , double b ){
    return (a < 0.001 * b * 1.25);
}
    
}
