/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.admin.classfiles;

import com.java.DataBase.DataBaseHandler;
import static com.java.DataBase.DataBaseHandler.getConnection;
import com.java.POJO.DrRegisterPojo;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;

/**
 *
 * @author nikhil
 */
public class ViewDoctors extends ActionSupport implements ModelDriven<DrRegisterPojo>,ServletRequestAware{
    
   DrRegisterPojo pojo = new DrRegisterPojo();
    
   ArrayList<DrRegisterPojo> list = new ArrayList<DrRegisterPojo>();
   
   HttpServletRequest req;
    
    public String execute(){
        
        String sql="select doctor_name,doctor_uname,clinic_name,clinic_address,personal_phone_no,clinic_phone_no,clinic_landline_no,doctor_qualification from Doctors ";
        try{
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {                 
                 
                DrRegisterPojo pojo = new DrRegisterPojo (rs.getString("doctor_name"),rs.getString("doctor_uname"),rs.getString("personal_phone_no"),rs.getString("doctor_qualification"), rs.getString("clinic_name"), rs.getString("clinic_address"),rs.getString("clinic_phone_no"),rs.getString("clinic_landline_no"));
                
             
                list.add(pojo);
                 
             }
                req.setAttribute("doctorlist",list);
                
            return SUCCESS;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return ERROR;
    }

    @Override
    public DrRegisterPojo getModel() {
        return pojo;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        req=hsr;
    }

    
}
