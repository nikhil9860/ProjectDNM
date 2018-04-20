/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.POJO;

/**
 *
 * @author DELL
 */
public class PaymentPojo 
{
    int appointment_id,fees;
    String status,patient_name,appointment_date;

    public PaymentPojo(int appointment_id, int fees, String status, String patient_name, String appointment_date) {
        this.appointment_id = appointment_id;
        this.fees = fees;
        this.status = status;
        this.patient_name = patient_name;
        this.appointment_date = appointment_date;
    }

    public int getAppointment_id() {
        return appointment_id;
    }

    public void setAppointment_id(int appointment_id) {
        this.appointment_id = appointment_id;
    }

    public int getFees() {
        return fees;
    }

    public void setFees(int fees) {
        this.fees = fees;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPatient_name() {
        return patient_name;
    }

    public void setPatient_name(String patient_name) {
        this.patient_name = patient_name;
    }

    public String getAppointment_date() {
        return appointment_date;
    }

    public void setAppointment_date(String appointment_date) {
        this.appointment_date = appointment_date;
    }
    
}
