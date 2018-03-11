/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.POJO;

/**
 *
 * @author nikhil
 */
public class DoctorRating {
   
    private String average;
    private String doctor_name;

    public DoctorRating() {
    }

    
    public DoctorRating(String average, String doctor_name) {
        this.average = average;
        this.doctor_name = doctor_name;
    }
    
    

    /**
     * @return the average
     */
    public String getAverage() {
        return average;
    }

    /**
     * @return the doctor_name
     */
    public String getDoctor_name() {
        return doctor_name;
    }
}
