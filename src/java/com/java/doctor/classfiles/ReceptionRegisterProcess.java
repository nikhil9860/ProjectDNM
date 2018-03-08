/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.doctor.classfiles;

import com.opensymphony.xwork2.ModelDriven;
import com.java.POJO.ReceptionistPojo;
import com.java.DAO.ReceptionRegisterDAO;
/**
 *
 * @author nikhil
 */
public class ReceptionRegisterProcess implements ModelDriven<ReceptionistPojo>{

        ReceptionistPojo pojo = new ReceptionistPojo();
    
    @Override
    public ReceptionistPojo getModel() {
        return pojo;
                
    }
 
    public String execute()
    {
        if(ReceptionRegisterDAO.Register(pojo))
                return "success";
        else
                return "fail";
    }

    
}
