/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.admin.classfiles;

import com.java.DataBase.DataBaseHandler;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author nikhil
 */
public class FetchAdminDashBoard extends ActionSupport implements SessionAware{
    
    String doctor_count,appuser_count,feedback_count;
    
    Map<String, Object> session;

    @Override
    public void setSession(Map<String, Object> map) {
        session= map;
    }
    
//    for admin dashboard data fetch 
     public String execute(){
            
            try{
            
                String sql = "SELECT COUNT(*) FROM Doctors";
                String app = "SELECT COUNT(*) FROM AppUser";
                String feedback="SELECT COUNT(*) FROM FeedBack";
                
                ResultSet rs_doctor = DataBaseHandler.getConnection().createStatement().executeQuery(sql);
                
                if(rs_doctor.next()){
                    doctor_count=rs_doctor.getString(1);
                }
               
                ResultSet rs_app=DataBaseHandler.getConnection().createStatement().executeQuery(app);
                if(rs_app.next()){
                    
                    appuser_count=rs_app.getString(1);
                }
                
                ResultSet rs_feedback=DataBaseHandler.getConnection().createStatement().executeQuery(feedback);
                if(rs_feedback.next()){
                    
                    feedback_count=rs_feedback.getString(1);
                }
//                
                
                
                System.out.println("------------total count of feedback "+feedback_count);
                
                session.put("doctor_count", doctor_count);
                session.put("appuser_count", appuser_count);
                session.put("feedback_count",feedback_count);
                
                return SUCCESS;
            }catch(Exception e){
                e.printStackTrace();
            }
            
            
            return ERROR;
        }
    
}
