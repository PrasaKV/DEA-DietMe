package com.dietme.deafaultMeals;

import com.dietme.mealItems.MealItems;
import com.teamhydra.util.DBUtill;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DefaultMealDao {

    private static final String INSERT_QUERY
            = "INSERT INTO defaultmeals"
            + " (defaultMealName, imgurl,mealgoalType, mealTime,"
            + "mealType, description)"
            + " VALUES (?, ?, ?, ?, ?, ?)";
    private static final String UPDATE_QUERY
            = "UPDATE defaultmeals SET"
            + " defaultMealName = ?, imgurl = ?,mealgoalType = ?, mealTime = ?, "
            + "mealType = ?, description = ? WHERE defaultMealId = ?";
    private static final String DELETE_QUERY = "DELETE FROM defaultmeals WHERE defaultMealId = ?";
    private static final String SELECT_BY_ID_QUERY = "SELECT * FROM defaultmeals WHERE defaultMealId = ?";
    private static final String SELECT_ALL_QUERY = "SELECT * FROM defaultmeals";

    public int insert(DefaultMeals defaultMeals) {
        try (Connection connection = DBUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(
                        INSERT_QUERY, PreparedStatement.RETURN_GENERATED_KEYS)) {
            statement.setString(1, defaultMeals.getDefaultMealName());
            statement.setString(2, defaultMeals.getImgurl());
            statement.setString(3, defaultMeals.getMealgoalType());
            statement.setString(4, defaultMeals.getMealTime());
            statement.setString(5, defaultMeals.getMealType());
            statement.setString(6, defaultMeals.getDescription());
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

    public boolean update(DefaultMeals defaultMeals) {
        boolean rowUpdated = false;
        try (Connection connection = DBUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(UPDATE_QUERY)) {
            statement.setString(1, defaultMeals.getDefaultMealName());
            statement.setString(2, defaultMeals.getImgurl());
            statement.setString(3, defaultMeals.getMealgoalType());
            statement.setString(4, defaultMeals.getMealTime());
            statement.setString(5, defaultMeals.getMealType());
            statement.setString(6, defaultMeals.getDescription());
            statement.setInt(7, defaultMeals.getDefaultMealId());
            rowUpdated = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowUpdated;
    }

    public boolean delete(int defaultMealId) {
        try (Connection connection = DBUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(DELETE_QUERY)) {
            statement.setInt(1, defaultMealId);
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public DefaultMeals findById(int defaultMealId) {
        try (Connection connection = DBUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(SELECT_BY_ID_QUERY)) {
            statement.setInt(1, defaultMealId);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return mapResultSetToDefaultMealDetails(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<DefaultMeals> findAll() {
        List<DefaultMeals> defaultMealDetailsList = new ArrayList<>();
        try (Connection connection = DBUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(SELECT_ALL_QUERY);
                ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                defaultMealDetailsList.add(mapResultSetToDefaultMealDetails(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return defaultMealDetailsList;
    }

    private DefaultMeals mapResultSetToDefaultMealDetails(ResultSet resultSet) throws SQLException {
        int defaultMealId = resultSet.getInt("defaultMealId");
        String defaultMealName = resultSet.getString("defaultMealName");
        String imgurl = resultSet.getString("imgurl");
        String mealgoalType = resultSet.getString("mealgoalType");
        String mealTime = resultSet.getString("mealTime");
        String mealType = resultSet.getString("mealType");
        String description = resultSet.getString("description");

        return new DefaultMeals(defaultMealId, defaultMealName, imgurl, mealgoalType, mealTime, mealType, description);
    }

}
