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
 
    String feedback,app_user_name,doctor_name;

    public FeedBackPojo() {
        
    }

    public FeedBackPojo(String feedback, String app_user_name, String doctor_name) {
        this.feedback = feedback;
        this.app_user_name = app_user_name;
        this.doctor_name = doctor_name;
    }
    
}
