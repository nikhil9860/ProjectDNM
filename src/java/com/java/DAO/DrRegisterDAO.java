/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.DAO;

import com.java.DataBase.DataBaseHandler;
import java.sql.DatabaseMetaData;
import com.java.POJO.DrRegisterPojo;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nikhil
 */
public class DrRegisterDAO {
    
    
    public static boolean register(DrRegisterPojo pojo){
        
     
        String sql="insert into Doctors(doctor_name,doctor_uname,password,clinic_name,clinic_address,personal_phone_no,clinic_phone_no,clinic_landline_no,doctor_email_id,doctor_qualification,photo,gender,address_cordinates,category_id)   values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = DataBaseHandler.getConnection().prepareStatement(sql);
            ps.setString(1,pojo.getFullname());
            ps.setString(2, pojo.getUsername());
            ps.setString(3, pojo.getPassword());
            ps.setString(4, pojo.getClinicname());
            ps.setString(5, pojo.getClinicaddress());
            ps.setString(6, pojo.getDoctor_contact_number());
            ps.setString(7, pojo.getClinic_contact());
            ps.setString(8, pojo.getClinic_landline());
            ps.setString(9, pojo.getDoctor_email());
            ps.setString(10, pojo.getQualification());
            ps.setString(11, pojo.getPicture());
            ps.setString(12, pojo.getGender());
            ps.setString(13, pojo.getCordinate());
            ps.setInt(14,Integer.parseInt(pojo.getCategory()));
           
            if(DataBaseHandler.doInsert(ps)){
                return  true;
            }
            
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DrRegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
            
        return  false;
    }
    
}
