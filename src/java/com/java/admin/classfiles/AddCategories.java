/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.admin.classfiles;

import com.java.DataBase.DataBaseHandler;
import com.java.POJO.AddCategoriesPojo;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author DELL
 */
public class AddCategories implements ModelDriven<AddCategoriesPojo>, ServletRequestAware
{
    ArrayList<AddCategoriesPojo> allCategories=new ArrayList<AddCategoriesPojo>();
    AddCategoriesPojo acp=new AddCategoriesPojo();
    HttpServletRequest hsr1;
    public String execute()
    {
        try {
            Connection con=DataBaseHandler.getConnection();
            Statement st=con.createStatement();
            String q="insert into Categories(category_name) values('"+acp.getCategory()+"');";
            if(st.executeUpdate(q)>0)
                return"success";
            
        } catch (SQLException ex) {
            Logger.getLogger(AddCategories.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "fail";
    }
    public String ViewCategories()
    {
        try {
            Connection con=DataBaseHandler.getConnection();
            Statement st1=con.createStatement();
            String q1="select * from Categories;";
            System.out.println(q1);
            ResultSet rs=st1.executeQuery(q1);
            while(rs.next())
            {
                AddCategoriesPojo acp=new AddCategoriesPojo(rs.getInt("category_id"),rs.getString("category_name"));
                allCategories.add(acp);
            }
            hsr1.setAttribute("allCategories", allCategories);
            System.out.println("set...");
            return"success";
        } catch (SQLException ex) {
            Logger.getLogger(AddCategories.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return"fail";
    }
    public String DeleteCategories()
    {
        try {
            Connection con=DataBaseHandler.getConnection();
            Statement st=con.createStatement();
            String a=hsr1.getParameter("id");
            String q="delete from Categories where category_id="+a+";";
            System.out.println(q);
            if(st.executeUpdate(q)>0)
                return"success";
            
        } catch (SQLException ex) {
            Logger.getLogger(AddCategories.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return "fail";
    }
    @Override
    public AddCategoriesPojo getModel() 
    {
        return acp;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) 
    {
       hsr1=hsr;
    }

    
}
