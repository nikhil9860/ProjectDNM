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
        
        String sql="insert into Doctors values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = DataBaseHandler.getConnection().prepareStatement(sql);
            ps.setString(2,pojo.getFullname());
            ps.setString(3, pojo.getUsername());
            ps.setString(4, pojo.getPassword());
            ps.setString(5, pojo.getClinicname());
            ps.setString(6, pojo.getClinicaddress());
            ps.setString(7, pojo.getDoctor_contact_number());
            ps.setString(8, pojo.getClinic_contact());
            ps.setString(9, pojo.getClinic_landline());
            ps.setString(10, pojo.getDoctor_email());
            ps.setString(11, pojo.getQualification());
            ps.setString(12, pojo.getPicture());
            ps.setString(13, pojo.getGender());
            ps.setString(14, pojo.getCordinate());
            ps.setString(15, pojo.getCategory());
            ps.executeUpdate();
            return  true;
            
        } catch (SQLException ex) {
            Logger.getLogger(DrRegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
            
        return  false;
    }
    
}
