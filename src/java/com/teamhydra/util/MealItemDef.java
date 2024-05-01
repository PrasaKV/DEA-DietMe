/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.teamhydra.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kavin
 */
public class MealItemDef {

    public static List<Integer> mealPortionSize() throws SQLException {
        List<Integer> result = new ArrayList<>();
        String sql = "SELECT * FROM mealitems";

        try (Connection conn = DBUtill.getConnection();
                PreparedStatement stmt = conn.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                int mealGram = rs.getInt("baseGram");
                result.add(mealGram);
            }
        }
        return result;
    }

}
