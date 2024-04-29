package com.dietme.mealAddedItemsDetails;

import com.teamhydra.util.DBUtill;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MealAddedItemsDao {

    private static final String INSERT_QUERY
            = "INSERT INTO mealaddeditems (mealId, mealItemId, inputGrams) VALUES (?, ?, ?)";
    private static final String UPDATE_QUERY
            = "UPDATE mealaddeditems SET"
            + " mealId = ?, mealItemId = ?, inputGrams = ? WHERE submealItemId = ?";
    private static final String DELETE_QUERY = "DELETE FROM mealaddeditems WHERE submealItemId = ?";
    private static final String SELECT_BY_ID_QUERY = "SELECT * FROM mealaddeditems WHERE submealItemId = ?";
    private static final String SELECT_ALL_QUERY = "SELECT * FROM mealaddeditems";

    public int insert(MealAddedItems mealAddedItem) {
        try (Connection connection = DBUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(
                        INSERT_QUERY, PreparedStatement.RETURN_GENERATED_KEYS)) {
            statement.setInt(1, mealAddedItem.getMealId());
            statement.setInt(2, mealAddedItem.getMealItemId());
            statement.setDouble(3, mealAddedItem.getInputGrams());
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

    public boolean update(MealAddedItems mealAddedItem) throws SQLException {
        boolean rowUpdated = false;
        try (Connection connection = DBUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(UPDATE_QUERY)) {

            statement.setInt(1, mealAddedItem.getMealId());
            statement.setInt(2, mealAddedItem.getMealItemId());
            statement.setDouble(3, mealAddedItem.getInputGrams());
            statement.setInt(4, mealAddedItem.getSubmealItemId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    public boolean delete(int submealItemId) {
        try (Connection connection = DBUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(DELETE_QUERY)) {
            statement.setInt(1, submealItemId);
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public MealAddedItems findById(int submealItemId) {
        try (Connection connection = DBUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(SELECT_BY_ID_QUERY)) {
            statement.setInt(1, submealItemId);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return mapResultSetToMealAddedItems(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<MealAddedItems> findAll() {
        List<MealAddedItems> mealAddedItemsList = new ArrayList<>();
        try (Connection connection = DBUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(SELECT_ALL_QUERY);
                ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                mealAddedItemsList.add(mapResultSetToMealAddedItems(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return mealAddedItemsList;
    }

    private MealAddedItems mapResultSetToMealAddedItems(ResultSet resultSet) throws SQLException {
        int submealItemId = resultSet.getInt("submealItemId");
        int mealId = resultSet.getInt("mealId");
        int mealItemId = resultSet.getInt("mealItemId");
        double inputGrams = resultSet.getDouble("inputGrams");
        return new MealAddedItems(submealItemId, mealId, mealItemId, inputGrams);
    }

}
