/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.classfiles;

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
        
            if(pojo.getUsername().equals("admin") && pojo.getPassword().equals("admin")){
                return "true";
            }
        //System.out.print(pojo);
        return "false";
    }
     
    
}
