/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DBConnection.DBConnection;
import Model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dell
 */
public class UserService {

    public void insertUser(User user) {
        String query = "insert into user(username, email, password)" + "values(?,?,?)";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            System.out.println(preparedStatement);
            int i = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

//    public boolean getUser(String userName, String password) {
//        User user = null;
//        String query = "select * from user where username=? and password=?;";
//        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
//        try {
//            preparedStatement.setString(1, userName);
//            preparedStatement.setString(2, password);
//            ResultSet resultSet = preparedStatement.executeQuery();
//            while (resultSet.next()) {
////                user = new User();
////                user.setName(resultSet.getString(userName));
////                user.setPassword(resultSet.getString(password));
//                return true;
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//            return false;
//        }
//        return false;
//    }
    public User getUser(String userName, String password) {
        User user = null;
        String query = "select * from user where username=? and password=?;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
//                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
//            return false;
        }
        return user;
    }

    public List<User> getUsers() {
        User user = null;
        List<User> users = new ArrayList<>();

        String query = "select * from user;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setEmail(resultSet.getString("email"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    public void removeUser(int user_id) {
        String query = "delete from user where id=?";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setInt(1, user_id);

            int i = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updatePassword(int id, String password) {
                
        String query = "update user set password=? where id=?";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
        pstm.setString(1, password);
        pstm.setInt(2, id);

        pstm.execute();
        } catch(SQLException e) {
            e.printStackTrace();
        }
    }
    
    public User getExistingPassword(String password) {
        User user = null;
        String query = "select * from user where password=?";
        PreparedStatement pstm = new DBConnection().getStatement(query);

        try {
            pstm.setString(1, password);

            ResultSet rs = pstm.executeQuery();
            System.out.println("get User query:" + pstm);
            while (rs.next()) {
                System.out.println("This is a user");
                user = new User();
                user.setId(rs.getInt("ACC_ID"));
                user.setEmail(rs.getString("email"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
//    public List<User> getActiveUserList() {
//        List<User> userList = new ArrayList<>();
//        String query = "SELECT * FROM `user_activity` LEFT JOIN `teacher` ON teacher.ACC_ID = user_activity.USER_ID";
//        System.out.println(query);
//        PreparedStatement pstm = new DBConnection().getStatement(query);
//        try {
//            ResultSet rs = pstm.executeQuery();
//            while (rs.next()) {
//                User user = new User();
//                user.setId(rs.getInt("TEAC_ID"));
//                user.setFullName(rs.getString("TEAC_NAME"));
//                user.setStatus(rs.getString("STATUS"));
//                user.setDate(rs.getDate("ACTIVE_DATE"));
//       
//                userList.add(user);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        return userList;
//    }
}
