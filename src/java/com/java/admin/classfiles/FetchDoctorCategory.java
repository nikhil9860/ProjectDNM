/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.admin.classfiles;

import com.java.DataBase.DataBaseHandler;
import com.java.POJO.CategoriesPojo;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;

/**
 *
 * @author nikhil
 */
public class FetchDoctorCategory extends ActionSupport implements ServletRequestAware{
    
    HttpServletRequest req;
    
    ArrayList<CategoriesPojo> list = new ArrayList<CategoriesPojo>();
    
    public String execute(){
        
        
        try{
        
            String sql = "select * from Categories";
            
            ResultSet rs =  DataBaseHandler.getConnection().createStatement().executeQuery(sql);
            
            while(rs.next()){
                CategoriesPojo pojo = new CategoriesPojo();
                pojo.setCategorie_id(rs.getInt(1));
                pojo.setCategorie_name(rs.getString(2));
                
                list.add(pojo);
                
                req.setAttribute("categories_list",list);
                                
            }
            
            
            return SUCCESS;
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
