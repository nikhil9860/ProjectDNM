/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.doctor.classfiles;

import com.java.DataBase.DoctorDataBaseHandler;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.SQLException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author nikhil
 */
public class DoneAppointment extends ActionSupport implements ServletRequestAware,SessionAware{
    
    Map<String, Object> session;
    HttpServletRequest req;
    String doctor_uname;
    String patient_name;
    String appointment_date;
    
   
     @Override
    public void setSession(Map<String, Object> map) {
        session= map;
    }
    
    @Override
    public void setServletRequest(HttpServletRequest hsr) {
       req=hsr;
    }
    public  String execute(){
        
        patient_name= req.getParameter("patient_name");
        doctor_uname=session.get("uname").toString();
        appointment_date = req.getParameter("appointment_date");
        
        
        String sql = "UPDATE Patient inner JOIN Doctors ON Patient.doctor_id=Doctors.doctor_id SET Patient.status ='done' WHERE Patient.patient_name='"+patient_name+"' AND Patient.appointment_date = '"+appointment_date+"' AND Doctors.doctor_uname='"+doctor_uname+"'";
                        
        
        try {
            DoctorDataBaseHandler.getConnection().createStatement().executeUpdate(sql);
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DoneAppointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return SUCCESS;
    }

   

    
    
}
