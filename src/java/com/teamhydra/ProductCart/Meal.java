/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.teamhydra.ProductCart;

/**
 *
 * @author adipasith
 */
public class Meal {
    private int mealId;
    private String name;
    private String description;
    private int calories;
    private double price;
    private String imagePath;
    
    public Meal() {
        
    }

    public Meal(int mealId, String name, String description, int calories, double price, String imagePath) {
        this.mealId = mealId;
        this.name = name;
        this.description = description;
        this.calories = calories;
        this.price = price;
        this.imagePath = imagePath;
    }
    
  


    public int getMealId() {
        return mealId;
    }

    public void setMealId(int mealId) {
        this.mealId = mealId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCalories() {
        return calories;
    }

    public void setCalories(int calories) {
        this.calories = calories;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
    
    
}
