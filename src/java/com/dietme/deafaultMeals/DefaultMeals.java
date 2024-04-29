package com.dietme.deafaultMeals;

public class DefaultMeals {

    private int defaultMealId;
    private String defaultMealName;
    private String imgurl;
    private String mealgoalType;
    private String mealTime;
    private String mealType;
    private String description;

    public int getDefaultMealId() {
        return defaultMealId;
    }

    public void setDefaultMealId(int defaultMealId) {
        this.defaultMealId = defaultMealId;
    }

    public String getDefaultMealName() {
        return defaultMealName;
    }

    public void setDefaultMealName(String defaultMealName) {
        this.defaultMealName = defaultMealName;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public String getMealgoalType() {
        return mealgoalType;
    }

    public void setMealgoalType(String mealgoalType) {
        this.mealgoalType = mealgoalType;
    }

    public String getMealTime() {
        return mealTime;
    }

    public void setMealTime(String mealTime) {
        this.mealTime = mealTime;
    }

    public String getMealType() {
        return mealType;
    }

    public void setMealType(String mealType) {
        this.mealType = mealType;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public DefaultMeals(String defaultMealName, String imgurl, String mealgoalType, String mealTime, String mealType, String description) {
        this.defaultMealName = defaultMealName;
        this.imgurl = imgurl;
        this.mealgoalType = mealgoalType;
        this.mealTime = mealTime;
        this.mealType = mealType;
        this.description = description;
    }

    public DefaultMeals(int defaultMealId, String defaultMealName, String imgurl, String mealgoalType, String mealTime, String mealType, String description) {
        this.defaultMealId = defaultMealId;
        this.defaultMealName = defaultMealName;
        this.imgurl = imgurl;
        this.mealgoalType = mealgoalType;
        this.mealTime = mealTime;
        this.mealType = mealType;
        this.description = description;
    }

}
