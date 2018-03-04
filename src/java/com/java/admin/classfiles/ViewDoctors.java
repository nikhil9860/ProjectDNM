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
import java.sql.DatabaseMetaData;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author nikhil
 */
public class ViewDoctors extends ActionSupport implements ModelDriven<DrRegisterPojo>,ServletRequestAware,SessionAware{
    
   DrRegisterPojo pojo = new DrRegisterPojo();
   
    Map<String, Object> session;
   
   ArrayList<DrRegisterPojo> list = new ArrayList<DrRegisterPojo>();
   
   HttpServletRequest req;
    
   
//   for vewing all doctor info
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
    
//    for viewing complete single doctor info
    public String completeInfo(){
        
        
        String sql="select doctor_name,doctor_uname,clinic_name,clinic_address,personal_phone_no,clinic_phone_no,clinic_landline_no,doctor_qualification,gender,category_id from Doctors where doctor_uname ='"+req.getParameter("username")+"'";
        
            try{
                
                ResultSet rs = DataBaseHandler.getConnection().createStatement().executeQuery(sql);
                
                while(rs.next()){
                 DrRegisterPojo pojo = new DrRegisterPojo (rs.getString("doctor_name"),rs.getString("doctor_uname"),rs.getString("personal_phone_no"),rs.getString("doctor_qualification"), rs.getString("clinic_name"), rs.getString("clinic_address"),rs.getString("clinic_phone_no"),rs.getString("clinic_landline_no"));   
                  
                  list.add(pojo);
                }
                
                req.setAttribute("doctorcompleteinfo",list);
                
                
            }catch(Exception e){
                e.printStackTrace();
            }
        
        
        
        return  SUCCESS;
    }

    
    public String viewUpdateInfo(){
        DrRegisterPojo pojo = new DrRegisterPojo();
        String sql="select doctor_name,doctor_uname,clinic_name,clinic_address,personal_phone_no,clinic_phone_no,clinic_landline_no,doctor_qualification,gender,category_id from Doctors where doctor_uname ='"+req.getParameter("username")+"'";
        
        try{
            
            ResultSet rs = DataBaseHandler.getConnection().createStatement().executeQuery(sql);
            
                if(rs.next()){
                    
                    pojo.setFullname(rs.getString("doctor_name"));
                    pojo.setDoctor_email(rs.getString("doctor_uname"));
                    pojo.setDoctor_contact_number(rs.getString("personal_phone_no"));
                    pojo.setQualification(rs.getString("doctor_qualification"));
                    pojo.setClinicname(rs.getString("clinic_name"));
                    pojo.setClinicaddress(rs.getString("clinic_address"));
                    pojo.setClinic_landline(rs.getString("clinic_landline_no"));
                    pojo.setClinic_contact(rs.getString("clinic_phone_no"));
                    pojo.setGender(rs.getString("gender"));
                        
                }
            
                String cat = "SELECT Doctors.doctor_name,Categories.category_name FROM Doctors INNER JOIN Categories ON  Doctors.category_id=Categories.category_id where Doctors.doctor_email_id='"+req.getParameter("username")+"' ";
                //System.out.println(cat);
                
                 
                ResultSet rs_cat = DataBaseHandler.getConnection().createStatement().executeQuery(cat);
                 
                if(rs_cat.next()){
                    
                 
                    pojo.setCategory_name(rs_cat.getString(2));
                    session.put("doctor_display_info", pojo);
                }
                
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return SUCCESS;
    }
    
    public  String update(){
        try{
        //String sql="update Doctors set clinic_name ='"+pojo.getClinicname()+"',clinic_phone_no = '"+pojo.getClinic_contact()+"' , clinic_address = '"+pojo.getClinicaddress()+"' , doctor_qualification='"+pojo.getQualification()+"', gender='"+pojo.getGender()+"',category_id='"+pojo.getCategory()+"'  where doctor_uname ='"+pojo.getDoctor_email()+"' ";
        String sql = "update Doctors set clinic_name =?,category_id =? where doctor_uname = ? ";
        PreparedStatement ps = DataBaseHandler.getConnection().prepareStatement(sql);
        ps.setString(1,pojo.getClinicname());
        ps.setInt(2,Integer.parseInt(pojo.getCategory()));
        ps.setString(3,pojo.getDoctor_email());
        System.out.println("/////////////"+sql);  
        if(DataBaseHandler.updateDoctor(ps)){
           return  SUCCESS; 
        }
        
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

    @Override
    public void setSession(Map<String, Object> map) {
        session=map;
    }

    
}
