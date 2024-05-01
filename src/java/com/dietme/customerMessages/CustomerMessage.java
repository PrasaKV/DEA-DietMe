/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dietme.customerMessages;

import java.sql.Time;
import java.util.Date;

/**
 *
 * @author kavin
 */
public class CustomerMessage {
    private int convId;
    private int userId;
    private String message;
    private Date sentDate;
    private Time sentTime;
    private String replyMessage;
    private Date replyDate;
    private Time replyTime;

    public CustomerMessage(int convId, int userId, String message, Date sentDate, Time sentTime, String replyMessage, Date replyDate, Time replyTime) {
        this.convId = convId;
        this.userId = userId;
        this.message = message;
        this.sentDate = sentDate;
        this.sentTime = sentTime;
        this.replyMessage = replyMessage;
        this.replyDate = replyDate;
        this.replyTime = replyTime;
    }

    public CustomerMessage(int userId, String message, Date sentDate, Time sentTime, String replyMessage, Date replyDate, Time replyTime) {
        this.userId = userId;
        this.message = message;
        this.sentDate = sentDate;
        this.sentTime = sentTime;
        this.replyMessage = replyMessage;
        this.replyDate = replyDate;
        this.replyTime = replyTime;
    }

    CustomerMessage(String message, Date sentDate, Time sentTime) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getConvId() {
        return convId;
    }

    public void setConvId(int convId) {
        this.convId = convId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getSentDate() {
        return sentDate;
    }

    public void setSentDate(Date sentDate) {
        this.sentDate = sentDate;
    }

    public Time getSentTime() {
        return sentTime;
    }

    public void setSentTime(Time sentTime) {
        this.sentTime = sentTime;
    }

    public String getReplyMessage() {
        return replyMessage;
    }

    public void setReplyMessage(String replyMessage) {
        this.replyMessage = replyMessage;
    }

    public Date getReplyDate() {
        return replyDate;
    }

    public void setReplyDate(Date replyDate) {
        this.replyDate = replyDate;
    }

    public Time getReplyTime() {
        return replyTime;
    }

    public void setReplyTime(Time replyTime) {
        this.replyTime = replyTime;
    }
    
    
    
}
