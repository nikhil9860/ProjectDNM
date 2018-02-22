/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.admin.classfiles;

import com.java.DAO.DrRegisterDAO;
import com.java.POJO.DrRegisterPojo;
import com.opensymphony.xwork2.ModelDriven;

/**
 *
 * @author nikhil
 */
public class DrRegisterProcess implements ModelDriven<DrRegisterPojo> {

    DrRegisterPojo pojo = new DrRegisterPojo();
    
    
    @Override
    public DrRegisterPojo getModel() {
        return pojo;
    }
    
    public String execute(){
            DrRegisterDAO.register(pojo);
            
        return "true";
    }
}
