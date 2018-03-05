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
public class AppUsersPojo {
    
    private String name;
    private String user_email_id;
    private String mobile_number;
    private String location;
    private String gender;
    private String date_of_birth;

    public AppUsersPojo() {
    }

    
    public AppUsersPojo(String name, String user_email_id, String mobile_number, String location, String gender, String date_of_birth) {
        this.name = name;
        this.user_email_id = user_email_id;
        this.mobile_number = mobile_number;
        this.location = location;
        this.gender = gender;
        this.date_of_birth = date_of_birth;
    }
    

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the user_email_id
     */
    public String getUser_email_id() {
        return user_email_id;
    }

    /**
     * @param user_email_id the user_email_id to set
     */
    public void setUser_email_id(String user_email_id) {
        this.user_email_id = user_email_id;
    }

    /**
     * @return the mobile_number
     */
    public String getMobile_number() {
        return mobile_number;
    }

    /**
     * @param mobile_number the mobile_number to set
     */
    public void setMobile_number(String mobile_number) {
        this.mobile_number = mobile_number;
    }

    /**
     * @return the location
     */
    public String getLocation() {
        return location;
    }

    /**
     * @param location the location to set
     */
    public void setLocation(String location) {
        this.location = location;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the date_of_birth
     */
    public String getDate_of_birth() {
        return date_of_birth;
    }

    /**
     * @param date_of_birth the date_of_birth to set
     */
    public void setDate_of_birth(String date_of_birth) {
        this.date_of_birth = date_of_birth;
    }
    
}
