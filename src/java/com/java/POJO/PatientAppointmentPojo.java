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

    /**
     * @return the appointment_number
     */
    public int getAppointment_number() {
        return appointment_number;
    }
    private String patient_name;
    private String patient_gender;
    private String patient_age;
    private String patient_location;
    private String status;
    private String appointment_date;
    private  int appointment_number;
 
    public PatientAppointmentPojo() {
    }

    public PatientAppointmentPojo(String patient_name, String patient_gender, String patient_age, String patient_location, String status, String appointment_date, int appointment_number) {
        this.patient_name = patient_name;
        this.patient_gender = patient_gender;
        this.patient_age = patient_age;
        this.patient_location = patient_location;
        this.status = status;
        this.appointment_date = appointment_date;
        this.appointment_number = appointment_number;
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

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param patient_name the patient_name to set
     */
    public void setPatient_name(String patient_name) {
        this.patient_name = patient_name;
    }

    /**
     * @param patient_gender the patient_gender to set
     */
    public void setPatient_gender(String patient_gender) {
        this.patient_gender = patient_gender;
    }

    /**
     * @param patient_age the patient_age to set
     */
    public void setPatient_age(String patient_age) {
        this.patient_age = patient_age;
    }

    /**
     * @param patient_location the patient_location to set
     */
    public void setPatient_location(String patient_location) {
        this.patient_location = patient_location;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the appointment_date
     */
    public String getAppointment_date() {
        return appointment_date;
    }

    /**
     * @param appointment_date the appointment_date to set
     */
    public void setAppointment_date(String appointment_date) {
        this.appointment_date = appointment_date;
    }
}
