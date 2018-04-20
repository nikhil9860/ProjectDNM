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
public class AddCategoriesPojo 
{
    int Category_id;
    String category;

    public AddCategoriesPojo() {
    }

    public AddCategoriesPojo(int Category_id, String category) {
        this.Category_id = Category_id;
        this.category = category;
    }

    public int getCategory_id() {
        return Category_id;
    }

    public void setCategory_id(int Category_id) {
        this.Category_id = Category_id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
}
