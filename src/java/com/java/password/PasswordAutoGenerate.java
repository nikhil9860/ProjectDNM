/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.password;


import java.security.SecureRandom;

/**
 *
 * @author nikhil
 */
public class PasswordAutoGenerate {
    static final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz@#$_";
static SecureRandom rnd = new SecureRandom();
static final String OTP = "0123456789";

public static String getPass()
{
  StringBuilder sb = new StringBuilder(8);
   for( int i = 0; i <=8; i++ ) 
      sb.append( AB.charAt( rnd.nextInt(AB.length()) ) );
   
   
   return sb.toString();
}

public static void getOTP()
{
  StringBuilder sb = new StringBuilder( 6);
   for( int i = 0; i < 6; i++ ) 
      sb.append( OTP.charAt( rnd.nextInt(OTP.length()) ) );
   //System.out.println("OTP"+sb.toString());
}
}
