/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.admin.classfiles;

import com.java.DataBase.DataBaseHandler;
import com.java.POJO.DoctorRating;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.tomcat.util.digester.ArrayStack;

/**
 *
 * @author nikhil
 */
public class ViewRating extends ActionSupport implements ServletRequestAware {
    
    HttpServletRequest req;
    ArrayList<DoctorRating> list = new ArrayStack<DoctorRating>();
    
    public  String execute(){
        
        try{
            
            String sql = "SELECT AVG(rating),Doctors.doctor_name FROM FeedBack "
                    + "inner JOIN Doctors ON FeedBack.doctor_id=Doctors.doctor_id GROUP BY Doctors.doctor_id";
            
            ResultSet rs = DataBaseHandler.getConnection().createStatement().executeQuery(sql);
            
            while(rs.next()){
                System.out.print("/////////////"+rs.getString(1));
                System.out.print("/////////////"+rs.getString(2));
                System.out.println("\n");
                
                float avg = Math.round(rs.getFloat(1));
                DoctorRating pojo = new DoctorRating(avg+"",rs.getString(2));
                list.add(pojo);
                
            }
            
                req.setAttribute("doctor_ratings",list);
            
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
