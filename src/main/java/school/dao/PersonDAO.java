/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package school.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Labs Admin
 */
public class PersonDAO {
    private Connection connection;
    private Statement statement;
    public void getConnection() throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolmanagement","root","");
        statement = connection.createStatement();
    }
    public void close() throws SQLException{
        connection.close();
        statement.close();
    }
    public int register(int userID,int cellnumber, int previousgrade, String name, String surname, String gender, 
            String schoolname, String schoolcode, String subjectcode, String username, String password, 
            String emailaddress) throws SQLException{
                String sql = "insert into userdetails(userID,cellnumber,previousgrade,name,surname,gender,schoolname,"
                        + "schoolcode,subjectcode,username,password,emailaddress)"+
 "value("+userID+","+cellnumber+","+previousgrade+",'"+name+"','"+surname+"','"+gender+"','"+schoolname+"','"+schoolcode+"','"+subjectcode+"','"+username+"','"+password+"','"+emailaddress+"')";
        return statement.executeUpdate(sql);
                
        
    }
}










