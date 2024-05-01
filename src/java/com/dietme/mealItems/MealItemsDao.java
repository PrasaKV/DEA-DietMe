package com.dietme.mealItems;

import com.teamhydra.util.DBUtill;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MealItemsDao {

    private static final String INSERT_QUERY
            = "INSERT INTO mealitems"
            + " (mealItemName, imgurl, description, defaultGrams,"
            + " defaultPrice, defaultCal, defaultProtein, defaultCarbs)"
            + " VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String UPDATE_QUERY
            = "UPDATE mealitems SET"
            + " mealItemName = ?, imgurl = ?, description = ?, defaultGrams = ?, "
            + " defaultPrice = ?, defaultCal = ?, defaultProtein = ?, defaultCarbs = ? WHERE mealItemId = ?";
    private static final String DELETE_QUERY = "DELETE FROM mealitems WHERE mealItemId = ?";
    private static final String SELECT_BY_ID_QUERY = "SELECT * FROM mealitems WHERE mealItemId = ?";
    private static final String SELECT_ALL_QUERY = "SELECT * FROM mealitems";

    public int insert(MealItems mealIngredientDetails) {
        try (Connection connection = DBUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(
                        INSERT_QUERY, PreparedStatement.RETURN_GENERATED_KEYS)) {
            statement.setString(1, mealIngredientDetails.getMealItemName());
            statement.setString(2, mealIngredientDetails.getImgurl());
            statement.setString(3, mealIngredientDetails.getDescription());
            statement.setDouble(4, mealIngredientDetails.getDefaultGrams());
            statement.setDouble(5, mealIngredientDetails.getDefaultPrice());
            statement.setDouble(6, mealIngredientDetails.getDefaultCal());
            statement.setDouble(7, mealIngredientDetails.getDefaultProtein());
            statement.setDouble(8, mealIngredientDetails.getDefaultCarbs());
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

    public boolean update(MealItems mealIngredientDetails) {
        boolean rowUpdated = false;
        try (PreparedStatement statement = DBUtill.setStatment(UPDATE_QUERY)) {

            statement.setString(1, mealIngredientDetails.getMealItemName());
            statement.setString(2, mealIngredientDetails.getImgurl());
            statement.setString(3, mealIngredientDetails.getDescription());
            statement.setDouble(4, mealIngredientDetails.getDefaultGrams());
            statement.setDouble(5, mealIngredientDetails.getDefaultPrice());
            statement.setDouble(6, mealIngredientDetails.getDefaultCal());
            statement.setDouble(7, mealIngredientDetails.getDefaultProtein());
            statement.setDouble(8, mealIngredientDetails.getDefaultCarbs());
            statement.setInt(9, mealIngredientDetails.getMealItemId());

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

    public MealItems findById(int mealItemId) {
        try (PreparedStatement statement = DBUtill.setStatment(SELECT_BY_ID_QUERY)) {
            statement.setInt(1, mealItemId);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return mapResultSetToMealIngredientDetails(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<MealItems> findAll() {
        List<MealItems> mealIngredientDetailsList = new ArrayList<>();
        try (PreparedStatement statement = DBUtill.setStatment(SELECT_ALL_QUERY);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                mealIngredientDetailsList.add(mapResultSetToMealIngredientDetails(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return mealIngredientDetailsList;
    }

    private MealItems mapResultSetToMealIngredientDetails(ResultSet resultSet) throws SQLException {
        int mealItemId = resultSet.getInt("mealItemId");
        String mealItemName = resultSet.getString("mealItemName");
        String imgurl = resultSet.getString("imgurl");
        String description = resultSet.getString("description");
        double defaultGrams = resultSet.getDouble("defaultGrams");
        double defaultPrice = resultSet.getDouble("defaultPrice");
        double defaultCal = resultSet.getDouble("defaultCal");
        double defaultProtein = resultSet.getDouble("defaultProtein");
        double defaultCarbs = resultSet.getDouble("defaultCarbs");
        return new MealItems(mealItemId, mealItemName, imgurl, description, defaultGrams,
                defaultPrice, defaultCal, defaultProtein, defaultCarbs);
    }
}
