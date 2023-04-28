/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DBConnection.DBConnection;
import Model.Details;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dell
 */
public class DetailsService {

    public void insertDetails(Details details) {
        String query = "insert into details(firstname,lastname,birthofdate, email, phone, address,school,college)" + "values(?,?,?,?,?,?,?,?)";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1, details.getFirstname());
            preparedStatement.setString(2, details.getLastname()); 
            preparedStatement.setString(4, details.getEmail());
            preparedStatement.setString(3, details.getBirthofdate());
            preparedStatement.setString(5, details.getPhone());
            preparedStatement.setString(6, details.getAddress());
            preparedStatement.setString(7, details.getSchool());
            preparedStatement.setString(8, details.getCollege());
//            preparedStatement.setString(9, details.getUpload());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Details> getDetails() {
        Details details = null;
        List<Details> detaillist = new ArrayList<>();

        String query = "select * from details;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                details = new Details();
                details.setFirstname(resultSet.getString("firstname"));
                details.setLastname(resultSet.getString("lastname"));
                details.setEmail(resultSet.getString("email"));
                details.setBirthofdate(resultSet.getString("birthofdate"));
               details.setPhone(resultSet.getString("phone"));
                details.setAddress(resultSet.getString("address"));
                details.setSchool(resultSet.getString("school"));
                details.setCollege(resultSet.getString("college"));
//                details.setUpload(resultSet.getString("upload"));
                detaillist.add(details);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return detaillist;
    }
}

//    public void getDetails(String Username) {
//        Details details = null;
//        String query = "select * from details where fullname=?"
//        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
//    }

