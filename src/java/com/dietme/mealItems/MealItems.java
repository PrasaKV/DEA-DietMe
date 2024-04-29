package com.dietme.mealItems;

public class MealItems {

    private int mealItemId;
    private String mealItemName;
    private String imgurl;
    private String description;
    private double defaultGrams;
    private double defaultPrice;
    private double defaultCal;
    private double defaultProtein; 
    private double defaultCarbs;

    public MealItems(int mealItemId, String mealItemName, String imgurl, String description, double defaultGrams, double defaultPrice, double defaultCal, double defaultProtein, double defaultCarbs) {
        this.mealItemId = mealItemId;
        this.mealItemName = mealItemName;
        this.imgurl = imgurl;
        this.description = description;
        this.defaultGrams = defaultGrams;
        this.defaultPrice = defaultPrice;
        this.defaultCal = defaultCal;
        this.defaultProtein = defaultProtein;
        this.defaultCarbs = defaultCarbs;
    }

    public MealItems(String mealItemName, String imgurl, String description, double defaultGrams, double defaultPrice, double defaultCal, double defaultProtein, double defaultCarbs) {
        this.mealItemName = mealItemName;
        this.imgurl = imgurl;
        this.description = description;
        this.defaultGrams = defaultGrams;
        this.defaultPrice = defaultPrice;
        this.defaultCal = defaultCal;
        this.defaultProtein = defaultProtein;
        this.defaultCarbs = defaultCarbs;
    }

    public int getMealItemId() {
        return mealItemId;
    }

    public void setMealItemId(int mealItemId) {
        this.mealItemId = mealItemId;
    }

    public String getMealItemName() {
        return mealItemName;
    }

    public void setMealItemName(String mealItemName) {
        this.mealItemName = mealItemName;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getDefaultGrams() {
        return defaultGrams;
    }

    public void setDefaultGrams(double defaultGrams) {
        this.defaultGrams = defaultGrams;
    }

    public double getDefaultPrice() {
        return defaultPrice;
    }

    public void setDefaultPrice(double defaultPrice) {
        this.defaultPrice = defaultPrice;
    }

    public double getDefaultCal() {
        return defaultCal;
    }

    public void setDefaultCal(double defaultCal) {
        this.defaultCal = defaultCal;
    }

    public double getDefaultProtein() {
        return defaultProtein;
    }

    public void setDefaultProtein(double defaultProtein) {
        this.defaultProtein = defaultProtein;
    }

    public double getDefaultCarbs() {
        return defaultCarbs;
    }

    public void setDefaultCarbs(double defaultCarbs) {
        this.defaultCarbs = defaultCarbs;
    }
}
