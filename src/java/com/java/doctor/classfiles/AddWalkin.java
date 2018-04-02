/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.doctor.classfiles;

import com.java.DataBase.DoctorDataBaseHandler;
import com.java.POJO.WalkinPojo;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.SQLException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author nikhil
 */
public class AddWalkin extends ActionSupport implements ModelDriven<WalkinPojo>,SessionAware{
    
    Map<String, Object> seesion;
    
    WalkinPojo pojo = new WalkinPojo();
    
    @Override
    public void setSession(Map<String, Object> map) {
        seesion=map;
    }

    @Override
    public WalkinPojo getModel() {
        return pojo;
    }
    
    public  String execute(){
        
        String add_paitent ="INSERT INTO `Patient`(`patient_id`, `patient_name`, `patient_address`, `patient_gender`, `patient_age`, `patient_location`, `app_user_id`) VALUES (NULL, '"+pojo.getPatient_name()+"', '"+pojo.getPatient_address()+"', '"+pojo.getGender()+"', '25', 'pune', '-1')";
        String doctor_email = seesion.get("uname").toString();
        String book_appointment=" ";
        
        try {
            
            DoctorDataBaseHandler.getConnection().createStatement().executeUpdate(add_paitent);
            System.out.println("////////////"+book_appointment);
            
        } catch (SQLException ex) {
            Logger.getLogger(AddWalkin.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       return SUCCESS;
    }

    
    
    
}
