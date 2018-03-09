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
public class FeedBackPojo {
 
    private String feedback;
    private String app_user_name;
    private String doctor_name;
    private String rating;

    public FeedBackPojo(String feedback, String app_user_name, String doctor_name, String rating) {
        this.feedback = feedback;
        this.app_user_name = app_user_name;
        this.doctor_name = doctor_name;
        this.rating = rating;
    }

    
    
    public FeedBackPojo() {
        
    }

    /**
     * @return the feedback
     */
    public String getFeedback() {
        return feedback;
    }

    /**
     * @return the app_user_name
     */
    public String getApp_user_name() {
        return app_user_name;
    }

    /**
     * @return the doctor_name
     */
    public String getDoctor_name() {
        return doctor_name;
    }

    /**
     * @return the rating
     */
    public String getRating() {
        return rating;
    }

   
}
