/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.admin.classfiles;

import com.java.POJO.AdminPojo;
import com.opensymphony.xwork2.ModelDriven;

/**
 *
 * @author nikhil
 */
public class AdminLogin implements ModelDriven<AdminPojo>{

     AdminPojo pojo = new  AdminPojo();
    
    @Override
    public AdminPojo getModel() {
        return pojo;
    }
    
    public String execute(){
            
        String sql = "select * from Admin where admin_username='"+pojo.getUsername()+"'and admin_password='"+pojo.getPassword()+"'";
        
        
            if(pojo.getUsername().equals("admin") && pojo.getPassword().equals("admin")){
                System.out.println(sql);
                return "true";
            }
        //System.out.print(pojo);
        return "false";
    }
     
    
}
