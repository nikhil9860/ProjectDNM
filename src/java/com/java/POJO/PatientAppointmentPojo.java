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
public class PatientAppointmentPojo {
    private String patient_name;
    private String patient_gender;
    private String patient_age;
    private String patient_location;
    private String status;
 
    public PatientAppointmentPojo() {
    }

    public PatientAppointmentPojo(String patient_name, String patient_gender, String patient_age, String patient_location) {
        this.patient_name = patient_name;
        this.patient_gender = patient_gender;
        this.patient_age = patient_age;
        this.patient_location = patient_location;
    }
    
    /**
     * @return the patient_name
     */
    public String getPatient_name() {
        return patient_name;
    }

    /**
     * @return the patient_gender
     */
    public String getPatient_gender() {
        return patient_gender;
    }

    /**
     * @return the patient_age
     */
    public String getPatient_age() {
        return patient_age;
    }

    /**
     * @return the patient_location
     */
    public String getPatient_location() {
        return patient_location;
    }
}
