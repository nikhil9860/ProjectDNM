/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.doctor.classfiles;

import com.java.DataBase.DoctorDataBaseHandler;
import com.java.POJO.DoctorLoginPojo;
import com.java.POJO.FeedBackPojo;
import com.java.POJO.PatientAppointmentPojo;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author nikhil
 */
public class FetchDoctorDashBoard extends ActionSupport implements ModelDriven<PatientAppointmentPojo>,ServletRequestAware,SessionAware{
    
    PatientAppointmentPojo appointment_pojo = new PatientAppointmentPojo();
    ArrayList<PatientAppointmentPojo> list = new ArrayList<PatientAppointmentPojo>();
    HttpServletRequest req;
    Map<String, Object> session;
    String date= java.time.LocalDate.now().toString();
    
    
      
     @Override
    public PatientAppointmentPojo getModel() {
        return  appointment_pojo;
    }
    
    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        req=hsr;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        
       session=map; 
    }

      
    
   public  String execute(){
       String doctor_uname=session.get("uname").toString();
        
       try{
           
           
           
           String appointment_sql = "SELECT COUNT(*) FROM Appointments inner JOIN Doctors ON Appointments.doctor_id=Doctors.doctor_id WHERE Appointments.appointment_date='"+date+"' AND Doctors.doctor_uname='"+doctor_uname+"'";
           
           ResultSet appointment_rs = DoctorDataBaseHandler.getConnection().createStatement().executeQuery(appointment_sql);
           
           if(appointment_rs.next()){
               
               req.setAttribute("total_appointments",appointment_rs.getString(1));
           }
       
       
           String appointment_details = "SELECT Patient.patient_name,Patient.patient_gender,Patient.patient_age,Patient.patient_location,Appointments.status,Appointments.appointment_date  FROM Appointments "
                   + "inner JOIN Patient ON Appointments.patient_id=Patient.patient_id "
                   + "inner JOIN Doctors ON Appointments.doctor_id=Doctors.doctor_id"
                   + " WHERE Appointments.appointment_date='"+date+"' And Appointments.status='live'  AND Doctors.doctor_uname='"+doctor_uname+"'";
           



           ResultSet patient_details= DoctorDataBaseHandler.getConnection().createStatement().executeQuery(appointment_details);
           
           while(patient_details.next()){
               PatientAppointmentPojo pojo = new PatientAppointmentPojo(patient_details.getString(1),patient_details.getString(2),patient_details.getString(3),patient_details.getString(4),patient_details.getString(5),patient_details.getString(6));
                
               list.add(pojo);
               req.setAttribute("patient_appointment_list",list);
               
           }
           
           
           
       }catch(Exception e){
           e.printStackTrace();
       }
       
       
       
       
       return SUCCESS;
   }

   
   //showing appointmens using datepicker
   public  String showAppointment () throws SQLException{
       
       String doctor_uname=session.get("uname").toString();
       
       
       
       
        String appointment_details = "SELECT Patient.patient_name,Patient.patient_gender,Patient.patient_age,Patient.patient_location,Appointments.status,Appointments.appointment_date  FROM Appointments "
                   + "inner JOIN Patient ON Appointments.patient_id=Patient.patient_id "
                   + "inner JOIN Doctors ON Appointments.doctor_id=Doctors.doctor_id"
                   + " WHERE Appointments.appointment_date='"+appointment_pojo.getAppointment_date()+"' And Appointments.status='live' AND Doctors.doctor_uname='"+doctor_uname+"'";
           
        

           ResultSet patient_details= DoctorDataBaseHandler.getConnection().createStatement().executeQuery(appointment_details);
           
           while(patient_details.next()){
               PatientAppointmentPojo pojo = new PatientAppointmentPojo(patient_details.getString(1),patient_details.getString(2),patient_details.getString(3),patient_details.getString(4),patient_details.getString(5),patient_details.getString(6));
                
               list.add(pojo);
               req.setAttribute("patient_appointment_list",list);
               
           }
           
       
       
       return SUCCESS;
   }
    

    
   
    
}
