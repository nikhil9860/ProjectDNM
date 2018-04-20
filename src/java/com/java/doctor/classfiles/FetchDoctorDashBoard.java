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
import java.util.Calendar;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
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
public class FetchDoctorDashBoard extends ActionSupport implements ModelDriven<PatientAppointmentPojo>,ServletRequestAware,SessionAware{
    
    PatientAppointmentPojo appointment_pojo = new PatientAppointmentPojo();
    ArrayList<PatientAppointmentPojo> list = new ArrayList<PatientAppointmentPojo>();
    HttpServletRequest req;
    Map<String, Object> session;
    String date= java.time.LocalDate.now().toString();
    String total_appointment_count;
    
      
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
           
          
           String appointment_details = "SELECT Patient.patient_name,Patient.patient_gender,Patient.patient_age,Patient.patient_location,Patient.status,Patient.appointment_date  FROM Patient "
                   + "inner JOIN Doctors ON Patient.doctor_id=Doctors.doctor_id"
                   + " WHERE Patient.appointment_date='"+date+"' And Patient.status='live'  AND Doctors.doctor_uname='"+doctor_uname+"'";
            
           
           
           ResultSet patient_details= DoctorDataBaseHandler.getConnection().createStatement().executeQuery(appointment_details);
           
           int count = 0;
           
           while(patient_details.next()){
               ++count; 
               PatientAppointmentPojo pojo = new PatientAppointmentPojo(patient_details.getString(1),patient_details.getString(2),patient_details.getString(3),patient_details.getString(4),patient_details.getString(5),patient_details.getString(6),count);
               
               
               list.add(pojo);
               req.setAttribute("patient_appointment_list",list);
               session.put("username",doctor_uname);
               
           }
           
           String total_appointments = "SELECT COUNT(*) FROM Patient inner JOIN Doctors ON Patient.doctor_id=Doctors.doctor_id WHERE Patient.appointment_date='"+date+"' AND Doctors.doctor_uname='"+doctor_uname+"'AND Patient.status= 'live'";  
           
           ResultSet total_appointments_resultset = DoctorDataBaseHandler.getConnection().createStatement().executeQuery(total_appointments);
          
            if(total_appointments_resultset.next()){
                total_appointment_count= total_appointments_resultset.getString(1);
            }
           
               
                req.setAttribute("total_appointment",total_appointment_count); 
           
          
            
       }catch(Exception e){
           e.printStackTrace();
       }
       
       
       
       
       return SUCCESS;
   }

   
   //showing appointmens using datepicker
   public  String showAppointment () throws SQLException{
       
       String doctor_uname=session.get("uname").toString();
       
         int count = 0;
          
         
        String appointment_details = "SELECT Patient.patient_name,Patient.patient_gender,Patient.patient_age,Patient.patient_location,Patient.status,Patient.appointment_date FROM Patient inner JOIN Doctors ON Patient.doctor_id=Doctors.doctor_id WHERE Patient.appointment_date='"+appointment_pojo.getAppointment_date()+"' And Patient.status='live' AND Doctors.doctor_uname='"+doctor_uname+"'";
           
           ResultSet patient_details= DoctorDataBaseHandler.getConnection().createStatement().executeQuery(appointment_details);
           
           while(patient_details.next()){
               ++count; 
               PatientAppointmentPojo pojo = new PatientAppointmentPojo(patient_details.getString(1),patient_details.getString(2),patient_details.getString(3),patient_details.getString(4),patient_details.getString(5),patient_details.getString(6),count);
                
               list.add(pojo);
               req.setAttribute("patient_appointment_list",list);
               
           }
           
           
           String total_appointments = "SELECT COUNT(*) FROM Patient inner JOIN Doctors ON Patient.doctor_id=Doctors.doctor_id WHERE Patient.appointment_date='"+appointment_pojo.getAppointment_date()+"' AND Doctors.doctor_uname='"+doctor_uname+"'AND Patient.status= 'live'";  
           
         
         
           ResultSet total_appointments_resultset = DoctorDataBaseHandler.getConnection().createStatement().executeQuery(total_appointments);
          
            if(total_appointments_resultset.next()){
                total_appointment_count= total_appointments_resultset.getString(1);
            }
           
               
             req.setAttribute("total_appointment",total_appointment_count);
           
           
           
     Timer timer = new Timer();
		TimerTask tt = new TimerTask(){
                    
			public void run(){
                                
                                
                            
				Calendar cal = Calendar.getInstance(); //this is the method you should use, not the Date(), because it is desperated.
 
				int hour = cal.get(Calendar.HOUR_OF_DAY);//get the hour number of the day, from 0 to 23
                                
				if(hour == 16){
                                    
                                    System.out.println("//// checking");
                                    try {
                                        String cancel_appointment = "UPDATE Patient inner JOIN Doctors ON Patient.doctor_id=Doctors.doctor_id SET status = 'cancel' WHERE Doctors.doctor_uname='"+doctor_uname+"' AND appointment_date <'"+date+"'";
                                        System.out.println("//////////"+cancel_appointment);
                                        DoctorDataBaseHandler.getConnection().createStatement().executeUpdate(cancel_appointment);
                                       
                                        System.out.println("auto canceled");
                                        
                                        
                                    } catch (SQLException ex) {
                                        Logger.getLogger(FetchDoctorDashBoard.class.getName()).log(Level.SEVERE, null, ex);
                                    }
                        
				}
                                
			}
		};
		timer.schedule(tt, 1000, 1000*60);//	delay the task 1 second, and then run task every five seconds
        
           
       
       
       return SUCCESS;
   }
    

    
   
    
}
