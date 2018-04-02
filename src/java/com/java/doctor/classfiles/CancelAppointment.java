/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.doctor.classfiles;

import com.java.DataBase.DoctorDataBaseHandler;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author nikhil
 */
public class CancelAppointment extends ActionSupport implements ServletRequestAware,SessionAware {
    
    Map<String, Object> session;
    
    HttpServletRequest req;
    String paitent_name;
    String date;
    String doctor_uname;
    
    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        req=hsr;
    }
    
     @Override
    public void setSession(Map<String, Object> map) {
        session=map;
    }

    
    public  String execute(){
        paitent_name = req.getParameter("patient_name");
        doctor_uname=session.get("uname").toString();
        date= req.getParameter("appointment_date");
        
        String cancel_appointment = "UPDATE Appointments inner JOIN Patient ON Appointments.patient_id=Patient.patient_id inner JOIN Doctors ON Appointments.doctor_id = Doctors.doctor_id SET Appointments.status = 'cancel' WHERE Patient.patient_name='"+paitent_name+"' AND Appointments.appointment_date='"+date+"' AND Doctors.doctor_uname='"+doctor_uname+"'";
    
        try {
            
            
            
            DoctorDataBaseHandler.getConnection().createStatement().executeUpdate(cancel_appointment);
            
        } catch (SQLException ex) {
            Logger.getLogger(CancelAppointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        
           
        return SUCCESS;
    }

   
    
    
}
