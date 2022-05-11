package com.t2010a.t2010a_again.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionHelper {
    public static final String CONNECTION_STRING = "jdbc:mysql://localhost:3306/t2010-jdbc-demo";
    public static final String USERNAME = "root";
    public static final String PASSWORD = "";
    public static Connection connection;

    public static Connection getConnection() {
        try {
            if (connection == null || connection.isClosed()){
                connection = DriverManager.getConnection(CONNECTION_STRING,USERNAME,PASSWORD);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return connection;
    }
}
