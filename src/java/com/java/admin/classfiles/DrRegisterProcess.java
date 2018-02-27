/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.admin.classfiles;

import com.java.DAO.DrRegisterDAO;
import com.java.POJO.DrRegisterPojo;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.ValidationAware;

/**
 *
 * @author nikhil
 */
public class DrRegisterProcess extends ActionSupport implements ModelDriven<DrRegisterPojo>,ValidationAware {

    DrRegisterPojo pojo = new DrRegisterPojo();
    
    
    @Override
    public DrRegisterPojo getModel() {
        return pojo;
    }
    
    public String execute(){
            
            if(DrRegisterDAO.register(pojo)){
                
                        addActionMessage("Record Saved Susscefully");
                        return SUCCESS;
            }
            
                addActionError("Email or Contact Number is Already Registered");
                
                return ERROR;
                
  

    }
}
