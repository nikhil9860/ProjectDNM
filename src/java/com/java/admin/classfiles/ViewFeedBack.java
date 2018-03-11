/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.admin.classfiles;

import com.java.DataBase.DataBaseHandler;
import com.java.POJO.FeedBackPojo;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.views.jsp.ActionTag;

/**
 *
 * @author nikhil
 */
public class ViewFeedBack extends ActionSupport implements ServletRequestAware{
 
    HttpServletRequest req; 
   
    ArrayList<FeedBackPojo> list = new ArrayList<FeedBackPojo>();
    
    public  String execute(){
        
        
//        for joining feedback,appuser,doctor and showing it on feedback webpage
                
        String sql = "SELECT FeedBack.rating,AppUser.name,Doctors.doctor_name FROM FeedBack \n" +
"inner JOIN AppUser ON FeedBack.app_user_id=AppUser.app_user_id \n" +
"inner JOIN Doctors ON FeedBack.doctor_id=Doctors.doctor_id where doctor_email_id= '"+req.getParameter("username").toString()+"'";
        
        
        try{
            
            ResultSet rs = DataBaseHandler.getConnection().createStatement().executeQuery(sql);
                while(rs.next()){
                    FeedBackPojo pojo = new FeedBackPojo((rs.getString(2)),(rs.getString(3)),(rs.getString(1)));
                    list.add(pojo);
                    
                    req.setAttribute("feedbacks",list);
                    
                }
        
                
                //for selecting doctor name
          String doc="Select doctor_name from Doctors where doctor_email_id='"+req.getParameter("username").toString()+"'";
           
          ResultSet doc_name = DataBaseHandler.getConnection().createStatement().executeQuery(doc);
          
            
            while(doc_name.next()){
                
                req.setAttribute("doctor_name",(doc_name.getString(1)));
            }
          
          
                
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return SUCCESS;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        req=hsr;
    }
    
}
