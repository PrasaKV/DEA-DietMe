/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dietme.customerMessages;

import com.dietme.mealItems.MealItems;
import com.teamhydra.util.DBUtill;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

public class CustomerMessageDao {

    private static final String SEND_MESSAGE
            = "INSERT INTO customermessages"
            + " (userId, message, sentDate, sentTime,) VALUES (?, ?, ?, ?, ?, ?, ?)";
    private static final String UPDATE_QUERY
            = "UPDATE customermessages SET"
            + " replyMessage = ?, replyDate = ?, descriptionreplyTime = ?, WHERE convId = ?";
    private static final String DELETE_QUERY = "DELETE FROM mealitems WHERE mealItemId = ?";
    private static final String SELECT_BY_ID_QUERY = "SELECT * FROM mealitems WHERE mealItemId = ?";
    private static final String SELECT_ALL_QUERY = "SELECT * FROM mealitems";

    public int sendCustomerMessage(CustomerMessage customerMessage) {
        try (Connection connection = DBUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(
                        SEND_MESSAGE, PreparedStatement.RETURN_GENERATED_KEYS)) {
            statement.setInt(1, customerMessage.getUserId());
            statement.setString(2, customerMessage.getMessage());
            statement.setDate(3, (Date) customerMessage.getSentDate());
            statement.setTime(4, customerMessage.getSentTime());
            statement.executeUpdate();

            ResultSet generatedKeys = statement.getGeneratedKeys();
            if (generatedKeys.next()) {
                return generatedKeys.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    public boolean adminReplyMessage(CustomerMessage customerMessage) {
        boolean rowUpdated = false;
        try (PreparedStatement statement = DBUtill.setStatment(UPDATE_QUERY)) {

            statement.setString(1, customerMessage.getReplyMessage());
            statement.setDate(2, (Date) customerMessage.getReplyDate());
            statement.setTime(3, customerMessage.getReplyTime());
            statement.setInt(9, customerMessage.getConvId());

            rowUpdated = statement.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowUpdated;
    }

    public boolean delete(int mealItemId) {
        try (PreparedStatement statement = DBUtill.setStatment(DELETE_QUERY)) {
            statement.setInt(1, mealItemId);
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public CustomerMessage findById(int mealItemId) {
        try (PreparedStatement statement = DBUtill.setStatment(SELECT_BY_ID_QUERY)) {
            statement.setInt(1, mealItemId);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return mapResultSetToCustomerMessage(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<CustomerMessage> findAll() {
        List<CustomerMessage> messagesList = new ArrayList<>();
        try (PreparedStatement statement = DBUtill.setStatment(SELECT_ALL_QUERY);
                ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                messagesList.add(mapResultSetToCustomerMessage(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return messagesList;
    }

    private CustomerMessage mapResultSetToCustomerMessage(ResultSet resultSet) throws SQLException {
        int convId = resultSet.getInt("convId");
        int userId = resultSet.getInt("userId");
        String message = resultSet.getString("message");
        Date sentDate = resultSet.getDate("sentDate");
        Time sentTime = resultSet.getTime("sentTime");
        String replyMessage = resultSet.getString("replyMessage");
        Date replyDate = resultSet.getDate("replyDate");
        Time replyTime = resultSet.getTime("replyTime");

        return new CustomerMessage(convId, userId, message, sentDate, sentTime, replyMessage, replyDate, replyTime);
    }

    

}
