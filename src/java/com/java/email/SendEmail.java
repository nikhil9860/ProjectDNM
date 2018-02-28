/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.email;

import com.java.POJO.DrRegisterPojo;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;

/**
 *
 * @author nikhil
 */
public class SendEmail {
    
    
    public static void sendMail(String uname,String pass ){
        try {
            EmailUtility.sendEmail("smtp.gmail.com","465","nikhil9860official@gmail.com","<0nikhil9>","nikhil9860@gmail.com","test","hello new user your username is :"+uname+" and password is :"+pass);
        } catch (MessagingException ex) {
            Logger.getLogger(SendEmail.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
        
}
