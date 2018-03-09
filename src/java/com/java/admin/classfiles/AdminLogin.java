/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.admin.classfiles;

import com.java.DataBase.DataBaseHandler;
import com.java.POJO.AdminPojo;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.ValidationAware;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author nikhil
 */
public class AdminLogin extends ActionSupport implements ModelDriven<AdminPojo>,ValidationAware,SessionAware{

    public Map<String, Object> session;
    
     AdminPojo pojo = new  AdminPojo();
    
    @Override
    public AdminPojo getModel() {
        return pojo;
    }
    
    
//    for admin login
    public String execute(){
            
        String sql = "select * from Admin where admin_username='"+pojo.getUsername()+"'and admin_password='"+pojo.getPassword()+"'";
        
        
            if(DataBaseHandler.doLogin(sql)){
                
                session.put("username",pojo.getUsername());
                return SUCCESS;
                
            }else{
                
                addActionError("Invalid Username or Password");
                
                return ERROR;
            }
        
        
    }

    @Override
    public void setSession(Map<String, Object> map) {
        session=map;
    }
        
}
