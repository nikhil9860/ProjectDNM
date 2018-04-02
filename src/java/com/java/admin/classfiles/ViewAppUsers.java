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
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author nikhil
 */
public class ViewAppUsers extends ActionSupport implements ModelDriven<AppUsersPojo> ,ServletRequestAware{
    
    AppUsersPojo pojo = new AppUsersPojo();
    
    HttpServletRequest req;
    
    ArrayList<AppUsersPojo> list = new ArrayList<AppUsersPojo>();
    
    Map<String, Object> session;
    public String execute(){
        
        
     
           String sql="select name,user_email_id,mobile_number,location,gender,date_of_birth from AppUser";
        
        try{
            
            ResultSet rs = DataBaseHandler.getConnection().createStatement().executeQuery(sql);
            
            while(rs.next()){
                
                AppUsersPojo pojo = new AppUsersPojo(rs.getString("name"),rs.getString("user_email_id"),rs.getString("mobile_number"),rs.getString("location"),rs.getString("gender"),rs.getString("date_of_birth"));
                
                
                list.add(pojo);
                
                req.setAttribute("appuser_info",list);
                
            }
            
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return SUCCESS;
    }

    

    @Override
    public AppUsersPojo getModel() {
        return pojo;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        req=hsr;
    }
    
}
