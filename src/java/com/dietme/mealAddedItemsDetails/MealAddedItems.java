/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dietme.mealAddedItemsDetails;


public class MealAddedItems {
    private int submealItemId;
    private int mealId;
    private int mealItemId;
    private double inputGrams;

    public MealAddedItems(int submealItemId, int mealId, int mealItemId, double inputGrams) {
        this.submealItemId = submealItemId;
        this.mealId = mealId;
        this.mealItemId = mealItemId;
        this.inputGrams = inputGrams;
    }

    public MealAddedItems(int mealId, int mealItemId, double inputGrams) {
        this.mealId = mealId;
        this.mealItemId = mealItemId;
        this.inputGrams = inputGrams;
    }

    public MealAddedItems(int mealId, double inputGrams) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getSubmealItemId() {
        return submealItemId;
    }

    public void setSubmealItemId(int submealItemId) {
        this.submealItemId = submealItemId;
    }

    public int getMealId() {
        return mealId;
    }

    public void setMealId(int mealId) {
        this.mealId = mealId;
    }

    public int getMealItemId() {
        return mealItemId;
    }

    public void setMealItemId(int mealItemId) {
        this.mealItemId = mealItemId;
    }

    public double getInputGrams() {
        return inputGrams;
    }

    public void setInputGrams(double inputGrams) {
        this.inputGrams = inputGrams;
    }

   
    
    
}
