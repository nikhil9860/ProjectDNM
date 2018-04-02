/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.doctor.classfiles;

import com.java.DataBase.DoctorDataBaseHandler;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;

/**
 *
 * @author nikhil
 */
public class DoneAppointment extends ActionSupport implements ServletRequestAware{
    
    HttpServletRequest req;
    
    String patient_name;
    String appointment_date;
    
    
    @Override
    public void setServletRequest(HttpServletRequest hsr) {
       req=hsr;
    }
    public  String execute(){
        
        patient_name= req.getParameter("patient_name");
        
        appointment_date = req.getParameter("appointment_date");
        
        
        String sql = "UPDATE Appointments inner JOIN Patient ON Appointments.patient_id=Patient.patient_id SET Appointments.status = 'done' WHERE Patient.patient_name='"+patient_name+"' AND Appointments.appointment_date='"+appointment_date+"'";
        
        try {
            DoctorDataBaseHandler.getConnection().createStatement().executeUpdate(sql);
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DoneAppointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return SUCCESS;
    }

    
    
}
