/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DBConnection.DBConnection;
import Model.Info;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Dell
 */
public class InfoService {
     public void insertInfo(Info info) {
        String query = "insert into info(scholarshipname,eligibility,deadline,description) values(?,?,?,?);";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1, info.getSchoalrshipname());
            preparedStatement.setString(2, info.getEligibility()); 
            preparedStatement.setString(3, info.getDeadline());
            preparedStatement.setString(4, info.getDescription());

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
