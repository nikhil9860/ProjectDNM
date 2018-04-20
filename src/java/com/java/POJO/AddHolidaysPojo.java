/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.POJO;

/**
 *
 * @author DELL
 */
public class AddHolidaysPojo 
{
    int hoilday_id;
    String from_date,to_date;

    public AddHolidaysPojo(int hoilday_id, String from_date, String to_date) {
        this.hoilday_id = hoilday_id;
        this.from_date = from_date;
        this.to_date = to_date;
    }

    public AddHolidaysPojo() {
    }

    public int getHoilday_id() {
        return hoilday_id;
    }

    public void setHoilday_id(int hoilday_id) {
        this.hoilday_id = hoilday_id;
    }

    public String getFrom_date() {
        return from_date;
    }

    public void setFrom_date(String from_date) {
        this.from_date = from_date;
    }

    public String getTo_date() {
        return to_date;
    }

    public void setTo_date(String to_date) {
        this.to_date = to_date;
    }
    
}