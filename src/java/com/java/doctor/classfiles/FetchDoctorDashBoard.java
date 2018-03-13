/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.doctor.classfiles;

import com.java.DataBase.DoctorDataBaseHandler;
import com.java.POJO.DoctorLoginPojo;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;

/**
 *
 * @author nikhil
 */
public class FetchDoctorDashBoard extends ActionSupport implements ModelDriven<DoctorLoginPojo>,ServletRequestAware{
    
    DoctorLoginPojo pojo = new DoctorLoginPojo();
    HttpServletRequest req;
    
    @Override
    public DoctorLoginPojo getModel() {
        return pojo;
                
    }
    
    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        req=hsr;
    }

    
    
   public  String execute(){
       
       try{
           String doctor_uname=pojo.getUname();
           String date= java.time.LocalDate.now().toString();
           
           String sql = "SELECT COUNT(*) FROM Appointments inner JOIN Doctors ON Appointments.doctor_id=Doctors.doctor_id WHERE Appointments.appointment_date='"+date+"' AND Doctors.doctor_uname='"+doctor_uname+"'";
           
           ResultSet rs = DoctorDataBaseHandler.getConnection().createStatement().executeQuery(sql);
           
           if(rs.next()){
               System.out.println("//////////"+rs.getString(1));
               req.setAttribute("total_appointments", rs.getString(1));
           }
       
       
       }catch(Exception e){
           e.printStackTrace();
       }
       
       
       return SUCCESS;
   }

    
    
}
