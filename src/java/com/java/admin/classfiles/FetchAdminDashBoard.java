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
    
    String doctor_count;
    
    Map<String, Object> session;

    @Override
    public void setSession(Map<String, Object> map) {
        session= map;
    }
    
//    for admin dashboard data fetch 
     public String execute(){
            
            try{
            
                String sql = "SELECT COUNT(*) FROM Doctors";
                
                ResultSet rs = DataBaseHandler.getConnection().createStatement().executeQuery(sql);
                
                if(rs.next()){
                    doctor_count=rs.getString(1);
                }
               
                session.put("doctor_count", doctor_count);
                 
                return SUCCESS;
            }catch(Exception e){
                e.printStackTrace();
            }
            
            
            return ERROR;
        }
    
}
