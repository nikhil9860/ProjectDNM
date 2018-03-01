/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.admin.classfiles;

import com.java.DataBase.DataBaseHandler;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.interceptor.ServletRequestAware;

/**
 *
 * @author nikhil
 */
public class DeleteDoctor extends ActionSupport implements ServletRequestAware{
    
    HttpServletRequest req;
    
    public String execute(){
        
        req.getParameter("username");
        
        String sql = "delete from Doctors where doctor_email_id='"+req.getParameter("username")+"'";
        System.out.println(sql);
                      
        if(DataBaseHandler.deleteDoctor(sql)){
            return SUCCESS;
        }
        
        return SUCCESS;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        req=hsr;
    }
    
    
}
