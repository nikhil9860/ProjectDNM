/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.admin.classfiles;

import com.java.DataBase.DataBaseHandler;
import com.java.POJO.AppUsersPojo;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author nikhil
 */
public class ViewAppUsers extends ActionSupport implements ModelDriven<AppUsersPojo> , SessionAware{
    
    AppUsersPojo pojo = new AppUsersPojo();
    
    ArrayList<AppUsersPojo> list = new ArrayList<AppUsersPojo>();
    
    Map<String, Object> session;
    public String execute(){
        
        
     
           String sql="select name,user_email_id,mobile_number,location,gender,date_of_birth from AppUser";
        
        try{
            
            ResultSet rs = DataBaseHandler.getConnection().createStatement().executeQuery(sql);
            
            while(rs.next()){
                
                AppUsersPojo pojo = new AppUsersPojo(rs.getString("name"),rs.getString("user_email_id"),rs.getString("mobile_number"),rs.getString("location"),rs.getString("gender"),rs.getString("date_of_birth"));
                
                
            }
            
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        
        session=map;
    }

    @Override
    public AppUsersPojo getModel() {
        return pojo;
    }
    
}
