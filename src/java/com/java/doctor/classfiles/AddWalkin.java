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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
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
        String doctor_email = seesion.get("uname").toString();
        
        Calendar year = Calendar.getInstance();
       String dob = pojo.getDOB();
       
       String age[] = new String[10];
        
        for(String split : dob.split("-")){
            age[0]=split;
            break;
        }
        
        int current_year = year.getWeekYear();
        int paitent_age = Integer.parseInt(age[0]);
        
        paitent_age=current_year-paitent_age;
        
        
        String doctor_id = "";
        
        String sql = "select Doctors.doctor_id from Doctors where doctor_email_id ='"+doctor_email+"'";
        
        try {
            ResultSet rs = DoctorDataBaseHandler.getConnection().createStatement().executeQuery(sql);
            
            if(rs.next()){
                
                doctor_id=rs.getString(1);
            }
            
            
        
        } catch (SQLException ex) {
            Logger.getLogger(AddWalkin.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        String add_paitent ="INSERT INTO `Patient` (`patient_id`, `patient_name`, `patient_location`, `patient_gender`, `patient_age`, `app_user_id`, `doctor_id`, `appointment_date`, `appointment_time`, `status`) VALUES (NULL, '"+pojo.getPatient_name()+"', '"+pojo.getPatient_address()+"', '"+pojo.getGender()+"', '"+paitent_age+"', '-1', '"+doctor_id+"', '"+pojo.getAppointment_date()+"', '"+pojo.getAppointment_time()+"', 'live')";
        
       try{
             DoctorDataBaseHandler.getConnection().createStatement().executeUpdate(add_paitent);
           
       }catch (SQLException ex) {
            Logger.getLogger(AddWalkin.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        
       
        
       return SUCCESS;
    }

   
    
    
}
