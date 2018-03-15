/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.doctor.classfiles;

/**
 *
 * @author nikhil
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.java.DAO.DoctorLogin;
import com.java.POJO.DoctorLoginPojo;
import com.opensymphony.xwork2.ModelDriven;
import java.util.Map;
import javax.servlet.jsp.PageContext;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author DELL
 */
public class LoginDoctorProcess implements ModelDriven<DoctorLoginPojo>,SessionAware
{
   public  Map<String , Object> session;
   
   public String uname;
   
   
    DoctorLoginPojo dlp =new DoctorLoginPojo();
    @Override
    public DoctorLoginPojo getModel() 
    {
        return dlp;
    }
    public String execute()
    {
        if(DoctorLogin.Login(dlp))
        {
            uname=dlp.getUname();
            
            session.put("uname", dlp.getUname());
            return "success";
        }
        return "fail";
    }

    @Override
    public void setSession(Map<String, Object> map) 
    {
        session=map;
        
    }
    
    

    
}
