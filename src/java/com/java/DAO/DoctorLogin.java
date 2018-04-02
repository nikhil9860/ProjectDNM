/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.DAO;

import com.java.DataBase.DoctorDataBaseHandler;
import com.java.POJO.DoctorLoginPojo;

/**
 *
 * @author DELL
 */
public class DoctorLogin 
{
    public static boolean Login(DoctorLoginPojo dlp)
    {
        String q="select * from Doctors where doctor_uname='"+dlp.getUname()+"' AND password='"+dlp.getPassword()+"';";
        
        if(DoctorDataBaseHandler.login(q))
            return true;
        
        return false;
    }
}
