package com.carpooling.dtos;

public class Place {

double lat;
double lng;
		
public Place(){
            
}	
		
public Place(double lat, double lng ){
    this.lat = lat;
    this.lng = lng;
}
		
public double getLat(){
    return this.lat;
}
		
public void setLat(double lat){
    this.lat = lat ;
		}
		
public double getLng(){
    return this.lng;
}
		
public void setLng(double lng){
    this.lng = lng ;
}
		
}
